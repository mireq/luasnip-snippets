# -*- coding: utf-8 -*-
import re
import typing
import operator

from .utils import escape_lua_string

if typing.TYPE_CHECKING:
	from .transpiler import ParsedSnippet


INDENT_RE = re.compile(r'^([\t ]*)')


class RenderContext(typing.TypedDict):
	parsed_snippet: 'ParsedSnippet'
	accumulated_text: list[str]


class LSToken():
	__slots__ = []

	def __repr__(self):
		return f'{self.__class__.__name__}()'

	def __str__(self):
		return repr(self)

	def render(self, context: RenderContext) -> str:
		raise NotImplementedError()

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str:
		raise NotImplementedError()

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

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str: # pylint: disable=unused-argument
		return escape_lua_string(self.text)


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
		# all editable tokens are wrapped to LSInsertToken, choices too
		return any(isinstance(child, LSInsertToken) for child in LSToken.iter_all_tokens(self.children))

	@property
	def is_simple(self) -> bool:
		return all(isinstance(child, LSTextToken) for child in self.children)

	def render(self, context: RenderContext) -> str:
		snip = context["parsed_snippet"]
		accumulated_text = context["accumulated_text"]

		if self.children:
			if self.is_nested: # nested tokens are not supported, unwrapping
				dynamic_node_content = snip.render_tokens(self.children, at_line_start=False)
				return f'd({self.number}, function(args) return sn(nil, {{{dynamic_node_content}}}) end, {{}}, {{key = "i{self.original_number}"}})'

			node_indent = INDENT_RE.match(''.join(accumulated_text[-operator.indexOf(reversed(accumulated_text), '\n'):])).group(1)

			if self.is_simple:
				text_content = ''.join(child.text for child in self.children).split('\n')
				text_value = escape_lua_string(text_content[0]) if len(text_content) == 1 else f'{{{", ".join(escape_lua_string(line) for line in text_content)}}}'
				return f'i({self.number}, {text_value}, {{key = "i{self.original_number}"}})'
			else:
				related_tokens = {}
				for child in self.children:
					if isinstance(child, (LSCopyToken, LSTransformationToken)):
						number = getattr(child, 'original_number', child.number)
						if number not in related_tokens:
							related_tokens[number] = len(related_tokens) + 1
				rendered_tokens = []
				for child in self.children:
					try:
						rendered_tokens.append(child.render_text(context, related_tokens))
					except NotImplementedError:
						raise RuntimeError("Token not allowed: %s" % child)
				dynamic_node_content = ', '.join(rendered_tokens)
				related_tokens_code = ''
				if related_tokens:
					related_tokens_code = f', {{{", ".join("k" + escape_lua_string("i" + str(v)) for v in related_tokens.keys())}}}'
				return f'd({self.number}, function(args, snip) return sn(nil, {{ i(1, jt({{{dynamic_node_content}}}, {escape_lua_string(node_indent)}), {{key = "i{self.original_number}"}}) }}) end{related_tokens_code})'
		else:
			return f'i({self.number}, "", {{key = "i{self.original_number}"}})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str: # pylint: disable=unused-argument
		if self.children:
			raise NotImplementedError()
		else:
			return f'args[{related_tokens[self.original_number]}]'


class LSCopyToken(LSPlaceholderToken, LSToken):
	__slots__ = ['original_number']

	def __init__(self, number: int, original_number: int | None = None):
		self.number: int = number
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number})'

	def render(self, context: RenderContext) -> str:
		return f'cp({self.original_number})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str: # pylint: disable=unused-argument
		return f'args[{related_tokens[self.original_number]}]'


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

	def render(self, context: RenderContext) -> str:
		return f'f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {{}} end)'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str: # pylint: disable=unused-argument
		return 'snip.env.LS_SELECT_DEDENT or {}'


class LSCodeToken(LSToken):
	pass


class LSPythonCodeToken(LSCodeToken):
	__slots__ = ['code', 'indent']

	def __init__(self, code: str, indent: str):
		self.code: str = code
		self.indent: str = indent

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r}, {self.indent!r})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str:
		snippet = context['parsed_snippet']
		code = self.code.replace("\\`", "`")
		return f'c_py({{{escape_lua_string(snippet.filetype)}, {snippet.index}}}, {escape_lua_string(code)}, python_globals, args, snip, {escape_lua_string(self.indent)}, am[{snippet.index}])'

	def render(self, context: RenderContext) -> str:
		snip = context["parsed_snippet"]
		return f'f(function(args, snip) return {self.render_text(context, {})} end, ae(am[{snip.index}]))'


class LSVimLCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str:
		code = self.code.replace("\\`", "`")
		return f'c_viml({escape_lua_string(code)})'

	def render(self, context: RenderContext) -> str:
		return f'f(function(args, snip) return {self.render_text(context, {})} end)'


class LSShellCodeToken(LSCodeToken):
	__slots__ = ['code']

	def __init__(self, code: str):
		self.code: str = code

	def __repr__(self):
		return f'{self.__class__.__name__}({self.code!r})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str:
		code = self.code.replace("\\`", "`")
		return f'c_shell({escape_lua_string(code)})'

	def render(self, context: RenderContext) -> str:
		return f'f(function(args, snip) return {self.render_text(context, {})} end)'


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

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str: # pylint: disable=unused-argument
		return f'rx_tr(args[{related_tokens[self.original_number]}], {escape_lua_string(self.search)}, {escape_lua_string(self.replace)})'


class LSChoiceListToken(LSPlaceholderToken, LSToken):
	__slots__ = ['choice_list', 'original_number']

	def __init__(self, number: int, choice_list: list[str], original_number: int | None = None):
		self.number: int = number
		self.choice_list: list[str] = choice_list
		self.original_number: int = self.number if original_number is None else original_number

	def __repr__(self):
		return f'{self.__class__.__name__}({self.number}, {self.choice_list!r}, {self.original_number})'

	def render(self, context: RenderContext) -> str:
		choices = ', '.join(f'i(1, {escape_lua_string(choice)})' for choice in self.choice_list)
		return f'c({self.number}, {{{choices}}}, {{key = "i{self.original_number}"}})'

	def render_text(self, context: RenderContext, related_tokens: dict[int, int]) -> str:
		return escape_lua_string('|'.join(self.choice_list))
