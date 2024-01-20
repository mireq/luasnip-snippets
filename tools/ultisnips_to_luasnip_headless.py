#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import argparse
import os
from pathlib import Path


#from UltiSnipsSupport.source import SnipMateFileSource, UltiSnipsFileSource
#from UltiSnipsSupport.lexer import tokenize, get_allowed_tokens
#from pathlib import Path
#
##src_dir = Path('./vim-snippets/snippets/')
##source = SnipMateFileSource('_', [src_dir])
##for snippet in source.snippets:
##	print(len(snippet.value))
##	tokens = list(tokenize(snippet.value, get_allowed_tokens(source.source_type)))
##	for token in tokens:
##		print(token)
#
#src_dir = Path('./vim-snippets/UltiSnips/')
#source = UltiSnipsFileSource('all', [src_dir])
#for snippet in source.snippets:
#	print(len(snippet.value))
#
##with open('./vim-snippets/snippets/_.snippets', 'r') as fp:
##	snippet_data = fp.read()
##
##it = LineIterator(snippet_data)
##for line in it:
##	print('peek', it.peek())
##	print("line", line)

def source_dir(arg: str) -> Path:
	path = Path(arg).absolute()
	if not path.exists():
		raise argparse.ArgumentTypeError(f"Directory `{path}` don't exist")
	if not path.is_dir():
		raise argparse.ArgumentTypeError(f"File `{path}` is not directory")
	return path


def file_type(arg: str) -> str:
	if os.sep in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.sep}` not allowed in file type")
	if os.pathsep in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.pathsep}` not allowed in file type")
	if os.pardir in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.pardir}` not allowed in file type")
	return arg


def main():
	parser = argparse.ArgumentParser(description="Ultisnips snippets to luasnip converter")
	parser.add_argument('--ultisnips-dir', type=source_dir, action='append', default=[])
	parser.add_argument('--snipmate-dir', type=source_dir, action='append', default=[])
	parser.add_argument('--output-dir', required=True)
	parser.add_argument('file_types', type=file_type, nargs='*', default=[])
	args = parser.parse_args()
	print(args)


if __name__ == "__main__":
	main()
