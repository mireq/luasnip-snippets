# -*- coding: utf-8 -*-
import typing

from .utils import escape_lua_string


if typing.TYPE_CHECKING:
	from .transpiler import ParsedSnippet


class RenderContext(typing.TypedDict):
	parsed_snippet: 'ParsedSnippet'


class LSToken():
	__slots__ = []

	def __repr__(self):
		return f'{self.__class__.__name__}()'

	def __str__(self):
		return repr(self)

	def render(self, context: RenderContext) -> str:
		raise NotImplemented()

	@staticmethod
	def iter_all_tokens(tokens: list['LSToken']) -> typing.Iterable['LSToken']:
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

	def render(self, context: RenderContext) -> str:
		if self.text == '\n':
			return 'nl()'
		else:
			return f't{escape_lua_string(self.text)}'


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

	def render(self, context: RenderContext) -> str:
		return f'cp({self.original_number})'


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
	def render_text(self, snippet: 'ParsedSnippet') -> str:
		raise NotImplemented()


class LSPythonCodeToken(LSCodeToken):
	__slots__ = ['code', 'indent']

	def __init__(self, code: str, indent: str):
		self.code: str = code
		self.indent: str = indent

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r}, {self.indent!r})'

	def render_text(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_py({{{escape_lua_string(snippet.filetype)}, {snippet.index}}}, {escape_lua_string(code)}, python_globals, args, snip, {escape_lua_string(self.indent)}, am[{snippet.index}])'

	def render(self, context: RenderContext) -> str:
		snip = context["parsed_snippet"]
		return f'f(function(args, snip) return {self.render_text(snip)} end, ae(am[{snip.index}]))'


class LSVimLCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def render_text(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_viml({escape_lua_string(code)})'

	def render(self, context: RenderContext) -> str:
		snip = context["parsed_snippet"]
		return f'f(function(args, snip) return {self.render_text(snip)} end)'


class LSShellCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def render_text(self, snippet: 'ParsedSnippet') -> str:
		code = self.code.replace("\\`", "`")
		return f'c_shell({escape_lua_string(code)})'

	def render(self, context: RenderContext) -> str:
		snip = context["parsed_snippet"]
		return f'f(function(args, snip) return {self.render_text(snip)} end)'


class LSTransformationToken(LSPlaceholderToken, LSToken):
	__slots__ = ['search', 'replace', 'original_number']

	def __init__(self, number: int, search: str, replace: str, original_number: int | None = None):
		self.number: int = number
		self.search: str = search
		self.replace: str = replace
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number}, {self.search!r}, {self.replace!r}, {self.original_number})'

	def render(self, context: RenderContext) -> str:
		return f'tr({self.original_number}, {escape_lua_string(self.search)}, {escape_lua_string(self.replace)})'
