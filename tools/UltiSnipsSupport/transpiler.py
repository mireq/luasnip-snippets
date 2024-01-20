# -*- coding: utf-8 -*-
import typing
from pathlib import Path

from .source import SnippetSource


class ProgramArgs(typing.Protocol):
	ultisnips_dir: list[Path]
	snipmate_dir: list[Path]
	output_dir = Path


def run(args: ProgramArgs, filetype: str):
	source = SnippetSource(
		filetype,
		ultisnips_dirs=args.ultisnips_dir,
		snipmate_dirs=args.snipmate_dir
	)
	print(source)
