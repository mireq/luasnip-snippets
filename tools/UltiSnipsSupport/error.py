# -*- coding: utf-8 -*-
from .definition import Location


class ParseError(RuntimeError):
	def __init__(self, message: str, loc: Location | None = None):
		if loc:
			message = f'{loc} {message}'
		super().__init__(message)
