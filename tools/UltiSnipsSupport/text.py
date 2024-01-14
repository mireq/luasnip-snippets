# -*- coding: utf-8 -*-
import typing
import re


UNESCAPE_RE = re.compile(r'\\(.)')


def escape(text: str, chars: str) -> str:
	"""
	Escapes all characters in 'chars' found in 'text' with a backslash.
	"""
	return ''.join('\\' + char if char in chars else char for char in text)


def unescape(text: str) -> str:
	"""
	Unescapes all characters in 'text' that are preceded by a backslash.
	"""
	return UNESCAPE_RE.sub(r'\1', text)


def head_tail(line: str) -> tuple[str, str]:
	"""
	Returns head and tail of a line
	"""

	try:
		head, tail = line.split(None, 1)
		return (head.strip(), tail)
	except ValueError:
		return (line.strip(), '')


class LineIterator:
	"""
	Iterates over lines and allows peek current line
	"""

	def __init__(self, text: str):
		self.line_index = -1
		self.__lines = text.splitlines(True)

	def __iter__(self) -> typing.Iterable[str]:
		return self

	def __next__(self) -> str:
		if self.line_index + 1 < len(self.__lines):
			self.line_index += 1
			return self.__lines[self.line_index]
		raise StopIteration()

	def peek(self) -> str | None:
		try:
			return self.__lines[self.line_index + 1]
		except IndexError:
			return None
