# -*- coding: utf-8 -*-
import re


LUA_SPECIAL_CHAR_RX = re.compile(r'("|\'|\t|\n|\\)')


def escape_char(match: re.Match) -> str:
	value = match.group(1)
	if value == '\n':
		return '\\n'
	elif value == '\t':
		return '\\t'
	else:
		return f'\\{value}'


def escape_lua_string(text: str) -> str:
	return f'"{LUA_SPECIAL_CHAR_RX.sub(escape_char, text)}"'


def escape_multiline_lua_sting(text: str) -> str:
	equal_signs = 0
	start_delimiter = ''
	end_delimiter = ''
	while True:
		start_delimiter = f'[{"="*equal_signs}['
		end_delimiter = f']{"="*equal_signs}]'
		if start_delimiter not in text and end_delimiter not in text:
			break
		equal_signs += 1
	return f'{start_delimiter}{text}{end_delimiter}'


class OrderedSet(dict):
	def add(self, value: str):
		self[value] = len(self)
