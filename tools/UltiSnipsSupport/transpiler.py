# -*- coding: utf-8 -*-
import logging
import typing
from collections import defaultdict
from pathlib import Path
from dataclasses import dataclass

from .definition import SnippetDefinition
from .source import SnippetSource
from .utils import OrderedSet, escape_lua_string, escape_multiline_lua_sting
from .parser import parse
from .ls_tokens import LSToken, LSInsertToken, LSTransformationToken


logger = logging.getLogger()


SUPPORTED_OPTS = {'w', 'b', 'i', 'r', '!', 'A'}
KNOWN_LANGUAGES = {
	'!p': 'python',
}
FILE_HEADER = """local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key
local su = require("luasnip_snippets.common.snip_utils")
local cp = su.copy
local tr = su.transform
local rx_tr = su.regex_transform
local jt = su.join_text
local nl = su.new_line
local te = su.trig_engine
local ae = su.args_expand
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions

"""


def extract_global_code_definitions(source: SnippetSource) -> dict[str, OrderedSet]:
	"""
	Returns dictionary with language key and set of source code values
	"""
	global_definitions = defaultdict(OrderedSet)

	for snippet in source.snippets:
		for global_type, global_codes in snippet.global_code.items():
			for global_code in global_codes:
				if global_type in KNOWN_LANGUAGES:
					lang = KNOWN_LANGUAGES[global_type]
					if lang == 'python':
						global_code = global_code.replace('\r\n', '\n')
					global_definitions[lang].add(global_code)
				else:
					logging.error("Unknown code block %s", global_type)

	return dict(global_definitions)


def save_filetype_mapping(source: SnippetSource, output_dir: Path):
	filetype_mapping = {}
	try:
		with output_dir.joinpath('filetype_includes.txt').open('r') as fp:
			for line in fp:
				line = line.strip()
				if not line:
					continue
				line = line.split()
				filetype_mapping[line[0]] = set(line[1:])
	except FileNotFoundError:
		pass

	filetype_mapping.setdefault(source.filetype, [])
	filetype_mapping[source.filetype] = list(set(filetype_mapping[source.filetype]).union(source.extends))
	with output_dir.joinpath('filetype_includes.txt').open('w') as fp:
		for filetype, included_filetypes in filetype_mapping.items():
			if not included_filetypes:
				continue
			fp.write(f'{filetype} {" ".join(included_filetypes)}\n')


@dataclass
class ParsedSnippet:
	index: int
	attributes: str
	tokens: list[LSToken]
	snippet: SnippetDefinition
	actions: dict[str, str]


def parse_snippet(snippet: SnippetDefinition, index: int) -> ParsedSnippet:
	opts = set(snippet.options)
	tokens = parse(snippet)
	snippet_attrs = [f'trig = {escape_lua_string(snippet.trigger)}']
	if snippet.description:
		snippet_attrs.append(f'descr = {escape_lua_string(snippet.description)}')
	if 'A' in opts:
		snippet_attrs.append('snippetType = "autosnippet"')
	snippet_attrs.append(f'priority = {snippet.priority}')
	snippet_attrs.append(f'trigEngine = te({escape_lua_string(snippet.options)})')
	return ParsedSnippet(
		index=index,
		attributes=", ".join(snippet_attrs),
		tokens=tokens,
		snippet=snippet,
		actions=snippet.actions,
	)


def write_snippets(source: SnippetSource, fp: typing.TextIO):

	snippet_code = defaultdict(list)
	snippet_code_list = []

	for index, snippet in enumerate(source.snippets):
		unsupported_opts = set(snippet.options) - SUPPORTED_OPTS
		if unsupported_opts:
			for opt in unsupported_opts:
				logger.error("Option %s no supported in snippet %s", opt, snippet.trigger)
			continue

		try:
			parsed_snippet = parse_snippet(snippet, index)
			if '!' in snippet.options:
				snippet_code[snippet.trigger] = [parsed_snippet]
			else:
				snippet_code[snippet.trigger].append(parsed_snippet)
			snippet_code_list.append(parsed_snippet)
		except Exception:
			logger.exception("Parsing error of snippet: %s", snippet.trigger)
			continue

	code_globals = {}
	for language, global_list in extract_global_code_definitions(source).items():
		code_globals[language] = ', '.join(f'\t{escape_multiline_lua_sting(code_block)}\n' for code_block in global_list)

	fp.write(f'-- Generated using ultisnips_to_luasnip.py\n\n')
	fp.write(FILE_HEADER)
	fp.write('\n')
	fp.write('local am = { -- argument mapping: token index to placeholder number\n')


class ProgramArgs(typing.Protocol):
	ultisnips_dirs: list[Path]
	snipmate_dirs: list[Path]
	output_dir = Path


def run(args: ProgramArgs, filetype: str):
	source = SnippetSource(
		filetype,
		ultisnips_dirs=args.ultisnips_dirs,
		snipmate_dirs=args.snipmate_dirs
	)

	save_filetype_mapping(source, args.output_dir)
	with args.output_dir.joinpath(f'{filetype}.lua').open('w') as fp:
		write_snippets(source, fp)
