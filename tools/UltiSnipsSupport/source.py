# -*- coding: utf-8 -*-
import typing
from enum import Enum, auto
from pathlib import Path

from .definition import SnippetDefinition


class Event(Enum):
	SNIPPET = auto()
	EXTENDS = auto()
	ERROR = auto()


class SnippetFileSource:

	def __init__(self, filetype: str, source_directories: typing.Iterable[Path]):
		self.filetype = filetype
		self.source_directories = list(source_directories)
		self.snippets: list[SnippetDefinition] = []
		self.load_snippets()

	def get_snippet_files(self) -> typing.Iterable[Path]:
		raise NotImplemented

	def load_snippets(self):
		for path in self.get_snippet_files():
			print(path)


class SnipMateFileSource(SnippetFileSource):
	def get_snippet_files(self) -> typing.Iterable[Path]:
		files = []
		ft = self.filetype
		for source_dir in self.source_directories:
			snippet_file = source_dir / f'{ft}.snippets'
			if snippet_file.exists():
				files.append(snippet_file)
			files.extend(sorted(source_dir.joinpath(ft).glob('*.snippets')))
			files.extend(sorted(source_dir.joinpath(ft).glob('*.snippet')))
			files.extend(sorted(source_dir.joinpath(ft).glob('**/*.snippet')))
		return files
