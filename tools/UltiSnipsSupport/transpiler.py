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

	glboal_code_definitions = extract_global_code_definitions(source)
	print(glboal_code_definitions)
	#for snippet in source.get_all_snippets():
	#	print(snippet)
