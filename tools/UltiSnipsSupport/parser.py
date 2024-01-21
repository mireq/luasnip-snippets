# -*- coding: utf-8 -*-
from .definition import SnippetDefinition, SnipMateSnippetDefinition, UltiSnipsSnippetDefinition
from .ls_tokens import LSToken, LSTextToken, LSInsertToken, LSCopyToken, LSInsertOrCopyToken_, LSVisualToken, LSPythonCodeToken, LSVimLCodeToken, LSShellCodeToken, LSTransformationToken
from .lexer import tokenize, Token, Position, MirrorToken, EndOfTextToken, TabStopToken, VisualToken, PythonCodeToken, VimLCodeToken, ShellCodeToken, EscapeCharToken, TransformationToken, get_allowed_tokens, tokenize
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


def parse(
	snippet: SnippetDefinition
) -> list[Token]:
	snippet_text = snippet.value

	allowed_tokens = get_allowed_tokens(snippet.source_type, in_tabstops=False)
	allowed_tokens_tabstop = get_allowed_tokens(snippet.source_type, in_tabstops=True)
	tokens = do_tokenize(None, snippet_text, allowed_tokens, allowed_tokens_tabstop)
	return tokens
