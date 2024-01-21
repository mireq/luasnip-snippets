# -*- coding: utf-8 -*-
import logging
import typing
from collections import defaultdict
from pathlib import Path

from .source import SnippetSource
from .utils import OrderedSet
from .parser import parse


logger = logging.getLogger()


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


def write_snippets(source: SnippetSource, fp: typing.TextIO):
	fp.write(f'-- Generated using ultisnips_to_luasnip.py\n\n')
	fp.write(FILE_HEADER)
	fp.write('\n')

	for snippet in source.snippets:
		tokens = parse(snippet)
		print(tokens)


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
