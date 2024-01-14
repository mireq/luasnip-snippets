# -*- coding: utf-8 -*-
import typing
from pathlib import Path

from .definition import SnippetDefinition, SnipMateSnippetDefinition, Location
from .error import ParseError
from .text import LineIterator, head_tail


class SnippetEvent:
	def __init__(self, line: str, line_nr: int, path: Path):
		self.line = line
		self.line_nr = line_nr
		self.path = path


class SnippetErrorEvent(SnippetEvent):
	pass


class SnippetExtendsEvent(SnippetEvent):
	def __init__(self, filetype: str, line: str, line_nr: int, path: Path):
		self.filetype = filetype
		super().__init__(filetype, line, line_nr, path)


class SnippetDefinitionEvent(SnippetEvent):
	def __init__(self, snippet: SnippetDefinition, line: str, line_nr: int, path: Path):
		self.snippet = snippet
		super().__init__(line, line_nr, path)


class SnippetFileSource:
	def __init__(self, filetype: str, source_directories: typing.Iterable[Path]):
		self.filetype = filetype
		self.source_directories = list(source_directories)
		self.snippets: list[SnippetDefinition] = []
		self.extends: set[str] = set()
		self.load_snippets()

	def get_snippet_files(self) -> typing.Iterable[Path]:
		raise NotImplementedError()

	def parse_snippet_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		raise NotImplementedError()

	def load_snippets(self) -> typing.Iterable[SnippetEvent]:
		for path in self.get_snippet_files():
			with path.open('r') as fp:
				file_data = fp.read()
			for event in self.parse_snippet_file(file_data, path):
				match event:
					case SnippetErrorEvent():
						raise ParseError("Snippet parse error", Location(event.line_nr, event.path, event.line))
					case SnippetExtendsEvent():
						self.extends.add(event.filetype)
					case SnippetDefinitionEvent():
						self.snippets.append(event.snippet)


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

	def parse_snippet_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		if path.suffix == 'snippet':
			yield self.__parse_snippet_file(data, path)
		else:
			yield from self.__parse_snippets_file(data, path)

	def __parse_snippet_file(self, data: str, path: Path) -> SnippetEvent:
		# TODO
		raise NotImplementedError()

	def __parse_snippets_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		lines = LineIterator(data)

		for line in lines:
			if not line.strip():
				continue

			head, tail = head_tail(line)
			if head == "extends":
				yield SnippetExtendsEvent(tail, line, lines.line_index, path)
			elif head in "snippet":
				yield self.__parse_snippet(line, lines, path)
			elif head and not head.startswith("#"):
				yield SnippetErrorEvent(line, lines.line_index, path)

	def __parse_snippet(self, line: str, lines: LineIterator, path: Path) -> SnippetEvent:
		start_line_index = lines.line_index
		trigger, description = head_tail(line[len("snippet") :].lstrip())
		content = ""
		while True:
			next_line = lines.peek()
			if next_line is None:
				break
			if next_line.strip() and not next_line.startswith("\t"):
				break
			line = next(lines)
			if line[0] == "\t":
				line = line[1:]
			content += line
		content = content[:-1]  # Chomp the last newline

		return SnippetDefinitionEvent(
			SnipMateSnippetDefinition(
				trigger,
				content,
				description,
				Location(start_line_index, path, line),
			),
			start_line_index,
			lines,
			path
		)
