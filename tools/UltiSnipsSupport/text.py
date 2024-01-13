# -*- coding: utf-8 -*-
import typing


def head_tail(line: str) -> tuple[str, str]:
	"""
	Returns head and tail of a line
	"""

	try:
		return tuple(part.strip() for part in line.split(None, 1))
	except ValueError:
		return (line.strip(), '')


class LineIterator:
	"""
	Iterates over lines and allows peek current line
	"""

	def __init__(self, text: str):
		self.__index = -1
		self.__lines = text.splitlines(True)

	def __iter__(self) -> typing.Iterable[str]:
		for idx, line in enumerate(self.__lines):
			yield line
			self.__index = idx

	def peek(self) -> str:
		return self.__lines[self.__index + 1]
