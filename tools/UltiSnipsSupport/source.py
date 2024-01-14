# -*- coding: utf-8 -*-
import typing
from enum import Enum, auto
from pathlib import Path

from .definition import SnippetDefinition


class SnippetEvent:
	pass


class SnippetErrorEvent(SnippetEvent):
	def __init__(self, line: str, line_nr: int):
		self.line = line
		self.line_nr = line_nr


class SnippetExtendsEvent(SnippetEvent):
	def __init__(self, filetype: str):
		self.filetype = filetype


class SnippetDefinitionEvent(SnippetEvent):
	def __init__(self, snippet: SnippetDefinition):
		self.snippet = snippet


class SnippetFileSource:

	def __init__(self, filetype: str, source_directories: typing.Iterable[Path]):
		self.filetype = filetype
		self.source_directories = list(source_directories)
		self.snippets: list[SnippetDefinition] = []
		self.load_snippets()

	def get_snippet_files(self) -> typing.Iterable[Path]:
		raise NotImplementedError()

	def parse_snippet_file(self, data: str, filename: Path) -> typing.Iterable[SnippetEvent]:
		raise NotImplementedError()

	def load_snippets(self) -> typing.Iterable[SnippetEvent]:
		for path in self.get_snippet_files():
			with path.open('r') as fp:
				file_data = fp.read()
			self.snippets.extend(self.parse_snippet_file(file_data, path))


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
