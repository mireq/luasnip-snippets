#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import argparse
import logging
import os
from pathlib import Path

from UltiSnipsSupport.transpiler import run


LOG_CONFIG = {
	'version': 1,
	'formatters': {
		'fmt': {'format': "%(levelname)s: %(message)s"}
	},
	'handlers': {
		'console': {
			'class':'logging.StreamHandler',
			'formatter':'fmt',
			'level':logging.DEBUG
		},
	},
	'root':{
		'handlers':('console',)
	}
}


logging.config.dictConfig(LOG_CONFIG)
logger = logging.getLogger()


def source_dir(arg: str) -> Path:
	path = Path(arg).absolute()
	if not path.exists():
		raise argparse.ArgumentTypeError(f"Directory `{path}` don't exist")
	if not path.is_dir():
		raise argparse.ArgumentTypeError(f"File `{path}` is not directory")
	return path


def output_dir(arg: str) -> Path:
	return Path(arg).absolute()


def file_type(arg: str) -> str:
	if os.sep in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.sep}` not allowed in file type")
	if os.pathsep in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.pathsep}` not allowed in file type")
	if os.pardir in arg:
		raise argparse.ArgumentTypeError(f"Character `{os.pardir}` not allowed in file type")
	return arg



class ProgramArgs(argparse.Namespace):
	ultisnips_dirs: list[Path]
	snipmate_dirs: list[Path]
	output_dir = Path
	file_types = list[str]


def main():
	parser = argparse.ArgumentParser(description="Ultisnips snippets to luasnip converter")
	parser.add_argument('--ultisnips-dir', type=source_dir, action='append', default=[], dest='ultisnips_dirs')
	parser.add_argument('--snipmate-dir', type=source_dir, action='append', default=[], dest='snipmate_dirs')
	parser.add_argument('--output-dir', type=output_dir, required=True)
	parser.add_argument('file_types', type=file_type, nargs='*', default=[])
	args = parser.parse_args(namespace=ProgramArgs())

	# try create output directory
	args.output_dir.mkdir(parents=True, exist_ok=True)

	for ft in args.file_types:
		try:
			run(args, ft)
		except Exception:
			logger.exception("File type `%s` conversion failed", ft)


if __name__ == "__main__":
	main()
