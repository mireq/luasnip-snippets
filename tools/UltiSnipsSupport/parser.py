# -*- coding: utf-8 -*-
from .definition import SnippetDefinition
from .ls_tokens import LSToken, LSTextToken, LSInsertToken, LSCopyToken, LSInsertOrCopyToken_, LSVisualToken, LSPythonCodeToken, LSVimLCodeToken, LSShellCodeToken, LSTransformationToken, LSPlaceholderToken
from .lexer import tokenize, Token, Position, MirrorToken, EndOfTextToken, TabStopToken, VisualToken, PythonCodeToken, VimLCodeToken, ShellCodeToken, EscapeCharToken, TransformationToken, get_allowed_tokens
import typing


def do_tokenize(
	parent: Token | None,
	text: str,
	allowed_tokens_in_text: list[typing.Type[Token]],
	allowed_tokens_in_tabstops: list[typing.Type[Token]]
) -> list[Token]:
	allowed_tokens = allowed_tokens_in_tabstops if parent else allowed_tokens_in_text
	tokens = list(tokenize(text, Position(0, 0) if parent is None else parent.start, allowed_tokens))
	for token in tokens:
		if isinstance(token, TabStopToken):
			token.child_tokens = do_tokenize(token, token.initial_text, allowed_tokens_in_text, allowed_tokens_in_tabstops)
			parent_start = token.start
			for child in token.child_tokens:
				child.start -= parent_start
				child.end -= parent_start
	return tokens


def get_text_tokens_between(
	content: list[str],
	start: tuple[int, int],
	end: tuple[int, int] | None
) -> list[LSTextToken]:
	"""
	Rreturns text tokens in range between start and end.
	"""
	if not content:
		return []
	if end is None:
		end = (len(content) - 1, len(content[-1]) - 1)
	text_tokens = []
	for line_num in range(start[0], end[0] + 1):
		col_start = None
		col_end = None
		if line_num == start[0]:
			col_start = start[1]
		if line_num == end[0]:
			col_end = end[1]
		current_line = content[line_num] if line_num < len(content) else ''
		text_fragment = current_line[col_start:col_end]
		if text_fragment:
			if text_fragment[-1:] == '\n':
				if text_fragment[:-1]:
					text_tokens.append(text_fragment[:-1])
				text_tokens.append('\n')
			else:
				text_tokens.append(text_fragment)
	return [LSTextToken(text) for text in text_tokens]


def merge_adjacent_text_tokens(tokens: list[LSToken]) -> list[LSToken]:
	"""
	Merge separate text tokens to single token if they are adjacent and there is
	no newline.
	"""
	new_tokens: list[LSToken] = []
	last_token: LSToken | None = None
	for token in tokens:
		if isinstance(last_token, LSTextToken) and isinstance(token, LSTextToken) and last_token.text != '\n' and token.text != '\n':
			last_token.text = last_token.text + token.text
			continue
		new_tokens.append(token)
		last_token = token
	return new_tokens


def transform_tokens(tokens, lines, insert_tokens=None):
	"""
	Transform UltiSnips tokens to luasnip tokens
	"""
	token_list = []
	insert_tokens = insert_tokens or {}

	previous_token_end = (0, 0)
	for token in tokens:
		token_list.extend(get_text_tokens_between(lines, previous_token_end, token.start))
		match token:
			case TabStopToken():
				child_lines = token.initial_text.splitlines(keepends=True) or ['']
				child_tokens = transform_tokens(token.child_tokens, child_lines, insert_tokens)
				if token.number in insert_tokens and not child_tokens and token.initial_text == '':
					new_token = LSCopyToken(token.number)
				else:
					new_token = LSInsertToken(token.number, child_tokens)
					insert_tokens.setdefault(token.number, new_token)
				token_list.append(new_token)
			case MirrorToken():
				new_token = LSInsertOrCopyToken_(token.number)
				token_list.append(new_token)
			case VisualToken():
				token_list.append(LSVisualToken())
			case EndOfTextToken():
				pass
			case PythonCodeToken():
				token_list.append(LSPythonCodeToken(token.code, token.indent))
			case VimLCodeToken():
				token_list.append(LSVimLCodeToken(token.code))
			case ShellCodeToken():
				token_list.append(LSShellCodeToken(token.code))
			case EscapeCharToken():
				token_list.append(LSTextToken(token.initial_text))
			case TransformationToken():
				token_list.append(LSTransformationToken(token.number, token.search, token.replace))
			case _:
				snippet_text = '\n'.join(lines)
				raise RuntimeError(f"Unknown token {token} in snippet: \n{snippet_text}")
		previous_token_end = token.end
	token_list.extend(get_text_tokens_between(lines, previous_token_end, None))
	return merge_adjacent_text_tokens(token_list)


def resolve_insert_or_copy_tokens(
	tokens: list[LSToken],
	insert_numbers: set[int]
) -> tuple[list[LSToken], set[int]]:
	"""
	Changes LSInsertOrCopyToken_ to concreate copy or insert tokens
	"""
	result_tokens: list[LSToken] = []
	for token in tokens:
		if isinstance(token, LSInsertOrCopyToken_):
			if token.number in insert_numbers:
				token = LSCopyToken(token.number)
			else:
				token = LSInsertToken(token.number, token.children)
				insert_numbers.add(token.number)
		if isinstance(token, LSInsertToken):
			token.children = resolve_insert_or_copy_tokens(token.children, insert_numbers)
		result_tokens.append(token)
	return result_tokens


def replace_zero_tokens_if_needed(
	tokens: list[LSToken],
	max_number: int,
	nested: bool = False,
) -> list[LSToken]:
	"""
	Replace zero tokens only if needed
	"""
	result_tokens = []
	for token in tokens:
		if isinstance(token, LSInsertToken) and token.number == 0 and ((token.is_nested or not token.is_simple) or nested):
			result_tokens.append(LSInsertToken(max_number + 1, token.children, token.original_number))
		else:
			result_tokens.append(token)
		if isinstance(token, LSInsertToken):
			token.children = replace_zero_tokens_if_needed(token.children, max_number=max_number, nested=True)
	return result_tokens


def remove_gaps_in_token_numbers(
	tokens: list[LSToken],
) -> list[LSToken]:
	result_tokens = []
	token_numbers = set(token.number for token in tokens if isinstance(token, (LSInsertToken, LSTransformationToken)))
	offset = 0 if 0 in token_numbers else 1
	remap = dict((num, remap) for remap, num in enumerate(sorted(list(token_numbers)), offset))

	for token in tokens:
		if isinstance(token, LSInsertToken):
			children = remove_gaps_in_token_numbers(token.children)
			token = LSInsertToken(remap[token.number], children, token.original_number)
		elif isinstance(token, LSTransformationToken):
			token = LSTransformationToken(remap[token.number], token.search, token.replace, token.original_number)
		result_tokens.append(token)
	return result_tokens


def get_tokens_max_number(tokens: list[LSToken]) -> int:
	"""
	Returns max nubmer of token of 0 if there are no tokens
	"""
	max_number = 0
	for token in LSToken.iter_all_tokens(tokens):
		if isinstance(token, LSPlaceholderToken):
			max_number = max(max_number, token.number)
	return max_number


def parse(
	snippet: SnippetDefinition
) -> list[LSToken]:
	snippet_text = snippet.value
	lines = snippet_text.splitlines(keepends=True)

	allowed_tokens = get_allowed_tokens(snippet.source_type, in_tabstops=False)
	allowed_tokens_tabstop = get_allowed_tokens(snippet.source_type, in_tabstops=True)
	tokens = do_tokenize(None, snippet_text, allowed_tokens, allowed_tokens_tabstop)
	token_list = transform_tokens(tokens, lines)
	max_token_number = get_tokens_max_number(token_list)
	token_list = resolve_insert_or_copy_tokens(
		token_list,
		set(
			token.number
			for token in LSToken.iter_all_tokens(token_list)
			if isinstance(token, LSInsertToken)
		)
	)
	token_list = replace_zero_tokens_if_needed(
		token_list,
		nested=False,
		max_number=max_token_number
	)
	token_list = remove_gaps_in_token_numbers(token_list)

	return token_list
