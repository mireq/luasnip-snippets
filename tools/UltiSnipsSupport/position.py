# -*- coding: utf-8 -*-
from typing import NamedTuple


class Position(NamedTuple):
	line: int
	col: int

	def __add__(self, pos: 'Position') -> 'Position':
		return Position(self.line + pos.line, self.col + pos.col)

	def __sub__(self, pos: 'Position') -> 'Position':
		return Position(self.line - pos.line, self.col - pos.col)
