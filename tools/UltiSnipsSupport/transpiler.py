# -*- coding: utf-8 -*-
import logging
import typing
from collections import defaultdict
from pathlib import Path

from .source import SnippetSource
from .utils import OrderedSet


logger = logging.getLogger()


KNOWN_LANGUAGES = {
	'!p': 'python',
}


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
	#for snippet in source.get_all_snippets():
	#	print(snippet)
