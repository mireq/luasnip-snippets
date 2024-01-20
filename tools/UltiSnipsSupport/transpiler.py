# -*- coding: utf-8 -*-
import typing
from pathlib import Path

from .source import SnippetSource


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
	print(source)
