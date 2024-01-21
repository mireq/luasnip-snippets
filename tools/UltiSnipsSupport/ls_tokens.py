# -*- coding: utf-8 -*-
from typing import Iterable, Optional

from .utils import escape_lua_string


class LSToken():
	__slots__ = []

	def __repr__(self):
		return f'{self.__class__.__name__}()'

	def __str__(self):
		return repr(self)

	@classmethod
	def iter_all_tokens(tokens: list['LSToken']) -> Iterable['LSToken']:
		for token in tokens:
			yield token
			if isinstance(token, LSInsertToken) and token.children:
				yield from LSToken.iter_all_tokens(token.children)


class LSPlaceholderToken():
	__slots__ = ['number']


class LSTextToken(LSToken):
	__slots__ = ['text']

	def __init__(self, text: str):
		self.text: str = text

	def __repr__(self):
		return f'{self.__class__.__name__}({self.text!r})'


class LSInsertToken(LSPlaceholderToken, LSToken):
	__slots__ = ['children', 'original_number']

	def __init__(self, number: int, children: list[LSToken] | None = None, original_number: int | None = None):
		self.number: int = number
		self.children: list[LSToken] = children or []
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number!r}, {self.children!r}, {self.original_number!r})'

	@property
	def is_nested(self) -> bool:
		return any(isinstance(child, (LSInsertToken, LSCopyToken, LSInsertOrCopyToken_)) for child in LSToken.iter_all_tokens(self.children))

	@property
	def is_simple(self) -> bool:
		return all(isinstance(child, LSTextToken) for child in self.children)


class LSCopyToken(LSPlaceholderToken, LSToken):
	__slots__ = ['original_number']

	def __init__(self, number: int, original_number: int | None = None):
		self.number: int = number
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number})'


class LSInsertOrCopyToken_(LSPlaceholderToken, LSToken):
	__slots__ = ['children']

	def __init__(self, number: int, children: list[LSToken] | None = None):
		self.number = number
		self.children: list[LSToken] = children or []

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number!r}, {self.children!r})'


class LSVisualToken(LSToken):
	def __init__(self):
		pass

	def __repr__(self):
		return f'{self.__class__.__name__}()'


class LSCodeToken(LSToken):
	def get_lua_code(self, snippet: 'ParsedSnippet') -> str:
		raise NotImplemented()


class LSPythonCodeToken(LSCodeToken):
	__slots__ = ['code', 'indent']

	def __init__(self, code: str, indent: str):
		self.code: str = code
		self.indent: str = indent

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r}, {self.indent!r})'

	def get_lua_code(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_py({{{escape_lua_string(snippet.filetype)}, {snippet.index}}}, {escape_lua_string(code)}, python_globals, args, snip, {escape_lua_string(self.indent)}, am[{snippet.index}])'


class LSVimLCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def get_lua_code(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_viml({escape_lua_string(code)})'


class LSShellCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def get_lua_code(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_shell({escape_lua_string(code)})'


class LSTransformationToken(LSPlaceholderToken, LSToken):
	__slots__ = ['search', 'replace', 'original_number']

	def __init__(self, number: int, search: str, replace: str, original_number: Optional[int] = None):
		self.number: int = number
		self.search: str = search
		self.replace: str = replace
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number}, {self.search!r}, {self.replace!r}, {self.original_number})'
