# -*- coding: utf-8 -*-
import logging
import os
import typing
from collections import defaultdict
from enum import Enum, auto
from pathlib import Path

from .configuration import Configuration
from .definition import SnippetDefinition, SnipMateSnippetDefinition, UltiSnipsSnippetDefinition, Location
from .error import ParseError
from .text import LineIterator, head_tail


logger = logging.getLogger()


def _splitall(path):
	"""Split 'path' into all its components."""
	# From http://my.safaribooksonline.com/book/programming/python/0596001673/files/pythoncook-chp-4-sect-16
	allparts = []
	while True:
		parts = os.path.split(path)
		if parts[0] == path:  # sentinel for absolute paths
			allparts.insert(0, parts[0])
			break
		elif parts[1] == path:  # sentinel for relative paths
			allparts.insert(0, parts[1])
			break
		else:
			path = parts[0]
			allparts.insert(0, parts[1])
	return allparts


class SnippetEvent:
	def __init__(self, line: str, line_nr: int, path: Path):
		self.line = line
		self.line_nr = line_nr
		self.path = path


class SnippetErrorEvent(SnippetEvent):
	def __init__(self, line: str, line_nr: int, path: Path, message: str | None = None):
		super().__init__(line, line_nr, path)
		self.message = message


class SnippetExtendsEvent(SnippetEvent):
	def __init__(self, filetypes: list[str], line: str, line_nr: int, path: Path):
		self.filetypes = filetypes
		super().__init__(line, line_nr, path)


class SnippetDefinitionEvent(SnippetEvent):
	def __init__(self, snippet: SnippetDefinition, line: str, line_nr: int, path: Path):
		self.snippet = snippet
		super().__init__(line, line_nr, path)


class SnippetClearEvent(SnippetEvent):
	def __init__(self, priority: int, triggers: list[str], line: str, line_nr: int, path: Path):
		self.priority = priority
		self.triggers = triggers
		super().__init__(line, line_nr, path)


class SourceType(Enum):
	SNIPMATE = auto()
	ULTISNIPS = auto()


class SnippetFileSource:
	source_type: SourceType

	def __init__(self, filetype: str, source_directories: typing.Iterable[Path]):
		self.filetype = filetype
		self.source_directories = list(source_directories)
		self.snippets: list[SnippetDefinition] = []
		self.extends: set[str] = set()
		self.cleared: dict[str, float] = {}
		self.clear_priority: None | float = float("-inf")
		self.load_snippets()

	def get_snippet_files(self) -> typing.Iterable[Path]:
		raise NotImplementedError()

	def parse_snippet_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		raise NotImplementedError()

	def load_snippets(self):
		for path in self.get_snippet_files():
			with path.open('r') as fp:
				file_data = fp.read()
			for event in self.parse_snippet_file(file_data, path):
				match event:
					case SnippetErrorEvent():
						if event.message is None:
							raise ParseError("Snippet parse error", Location(event.line_nr, event.path, event.line))
						else:
							raise ParseError(event.message, Location(event.line_nr, event.path, event.line))
					case SnippetExtendsEvent():
						self.extends = self.extends.union(set(event.filetypes))
					case SnippetDefinitionEvent():
						self.snippets.append(event.snippet)
					case SnippetClearEvent():
						if event.triggers:
							for trigger in event.triggers:
								if trigger not in self.cleared or event.priority > self.cleared[trigger]:
									self.cleared[trigger] = event.priority
						else:
							if self.clear_priority is None or event.priority > self.clear_priority:
								self.clear_priority = event.priority


class SnipMateFileSource(SnippetFileSource):
	source_type = SourceType.SNIPMATE

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

	def __parse_snippet_file(self, content: str, path: Path) -> SnippetEvent:
		full_filename = str(path.absolute())
		filename = full_filename[: -len(".snippet")]  # strip extension
		segments = _splitall(filename)
		segments = segments[segments.index("snippets") + 1 :]
		assert len(segments) in (2, 3)

		trigger = segments[1]
		description = segments[2] if 2 < len(segments) else ""

		content = content[: -len(os.linesep)] if content.endswith(os.linesep) else content

		return SnippetDefinitionEvent(
			SnipMateSnippetDefinition(
				trigger,
				content,
				description,
				Location(0, path),
			),
			'',
			0,
			path
		)

	def __parse_snippets_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		lines = LineIterator(data)

		for line in lines:
			if not line.strip():
				continue

			head, tail = head_tail(line)
			if head == "extends":
				yield SnippetExtendsEvent([filetype.strip() for filetype in tail.split(',')], line, lines.line_index, path)
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
			line,
			start_line_index,
			path
		)


class UltiSnipsFileSource(SnippetFileSource):
	source_type = SourceType.ULTISNIPS

	def get_snippet_files(self) -> typing.Iterable[Path]:
		files = []
		ft = self.filetype
		for source_dir in self.source_directories:
			snippet_file = source_dir / f'{ft}.snippets'
			if snippet_file.exists():
				files.append(snippet_file)
			files.extend(sorted(source_dir.joinpath(ft).glob(f'{ft}_*.snippets')))
			files.extend(sorted(source_dir.joinpath(ft).glob(f'{ft}/*')))
		return files

	def parse_snippet_file(self, data: str, path: Path) -> typing.Iterable[SnippetEvent]:
		python_globals = defaultdict(list)
		lines = LineIterator(data)
		current_priority = 0
		actions = {}
		context = None

		for line in lines:
			if not line.strip():
				continue

			head, tail = head_tail(line)
			if head in ("snippet", "global"):
				snippet = self._handle_snippet_or_global(
					line,
					lines,
					path,
					python_globals,
					current_priority,
					actions,
					context,
				)

				actions = {}
				context = None
				if snippet is not None:
					yield snippet
			elif head == "extends":
				yield SnippetExtendsEvent([filetype.strip() for filetype in tail.split(',')], line, lines.line_index, path)
			elif head == "clearsnippets":
				yield SnippetClearEvent(current_priority, tail.split(), line, lines.line_index, path)
			elif head == "context":
				if tail:
					context = tail.strip('"').replace(r"\"", '"').replace(r"\\\\", r"\\")
				else:
					yield SnippetErrorEvent(line, lines.line_index, path, "Invalid context")
			elif head == "priority":
				try:
					current_priority = int(tail.split()[0])
				except (ValueError, IndexError):
					yield SnippetErrorEvent(line, lines.line_index, path, "Invalid priority")
			elif head in ["pre_expand", "post_expand", "post_jump"]:
				if tail:
					action = tail.strip('"').replace(r"\"", '"').replace(r"\\\\", r"\\")
					actions[head] = action
				else:
					yield SnippetErrorEvent(line, lines.line_index, path, "Invalid action")
			elif head and not head.startswith("#"):
				yield SnippetErrorEvent(line, lines.line_index, path)

	def _handle_snippet_or_global(self, line: str, lines: LineIterator, path: Path, python_globals: dict, priority: int, pre_expand: dict, context: dict | None) -> SnippetEvent:
		start_line_index = lines.line_index
		descr = ""
		opts = ""

		# Ensure this is a snippet
		snip = line.split()[0]

		# Get and strip options if they exist
		remain = line[len(snip) :].strip()
		words = remain.split()

		if len(words) > 2:
			# second to last word ends with a quote
			if '"' not in words[-1] and words[-2][-1] == '"':
				opts = words[-1]
				remain = remain[: -len(opts) - 1].rstrip()

		if "e" in opts and not context:
			left = remain[:-1].rfind('"')
			if left != -1 and left != 0:
				context, remain = remain[left:].strip('"'), remain[:left]

		# Get and strip description if it exists
		remain = remain.strip()
		if len(remain.split()) > 1 and remain[-1] == '"':
			left = remain[:-1].rfind('"')
			if left != -1 and left != 0:
				descr, remain = remain[left:], remain[:left]

		# The rest is the trigger
		trig = remain.strip()
		if len(trig.split()) > 1 or "r" in opts:
			if trig[0] != trig[-1]:
				return SnippetErrorEvent("Invalid multiword trigger: '%s'" % trig, line, lines.line_index, path)
			trig = trig[1:-1]
		end = "end" + snip
		content = ""

		found_end = False
		for line in lines:
			if line.rstrip() == end:
				content = content[:-1]  # Chomp the last newline
				found_end = True
				break
			content += line

		if not found_end:
			return SnippetErrorEvent("Missing 'endsnippet' for %r" % trig, line, lines.line_index, path)

		if snip == "global":
			python_globals[trig].append(content)
		elif snip == "snippet":
			return SnippetDefinitionEvent(
				UltiSnipsSnippetDefinition(
					priority,
					trig,
					content,
					descr,
					opts,
					python_globals,
					Location(start_line_index, path, line),
					context,
					pre_expand,
				),
				line,
				start_line_index,
				path
			)
		else:
			return SnippetErrorEvent("Invalid snippet type: '%s'" % snip, line, lines.line_index, path)


class SnippetSource:
	"""
	Unified snippet source with collected sources of all types
	"""
	def __init__(
		self,
		filetype: str,
		ultisnips_dirs: list[Path],
		snipmate_dirs: list[Path]
	):
		self.filetype = filetype
		self.sources: list[SnippetFileSource] = [
			UltiSnipsFileSource(filetype, ultisnips_dirs),
			SnipMateFileSource(filetype, snipmate_dirs),
		]
		self.configuration = Configuration(filetype)

	def get_all_snippets(self) -> list[SnippetDefinition]:
		possible_snippets: list[SnippetDefinition] = []
		matching_snippets = defaultdict(list)

		clear_priority = None
		cleared = {}

		for source in self.sources:
			possible_snippets.extend(source.snippets)
		possible_snippets = [s for s in possible_snippets if not s.trigger in self.configuration.excluded_snippets]

		for source in self.sources:
			if source.clear_priority is not None and (
				clear_priority is None or source.clear_priority > clear_priority
			):
				clear_priority = source.clear_priority
			for key, value in source.cleared.items():
				if key not in cleared or value > cleared[key]:
					cleared[key] = value

		for snippet in possible_snippets:
			if (clear_priority is None or snippet.priority > clear_priority) and (
				snippet.trigger not in cleared
				or snippet.priority > cleared[snippet.trigger]
			):
				matching_snippets[snippet.trigger].append(snippet)

		snippets: list[SnippetDefinition] = []
		for snippets_with_trigger in matching_snippets.values():
			highest_priority = max(s.priority for s in snippets_with_trigger)
			snippets.extend(
				s for s in snippets_with_trigger if s.priority == highest_priority
			)

		return snippets

	@property
	def extends(self) -> list[str]:
		extends: set[str] = set()
		for source in self.sources:
			extends = extends.union(source.extends)
		extends.discard(self.filetype)
		extends = extends.union(set((self.configuration.additional_extends)))
		return list(sorted(extends))
