# -*- coding: utf-8 -*-
import typing
from pathlib import Path


class ProgramArgs(typing.Protocol):
	ultisnips_dir: list[Path]
	snipmate_dir: list[Path]
	output_dir = Path


def run(args: ProgramArgs, filetype: str):
	print(args, filetype)
