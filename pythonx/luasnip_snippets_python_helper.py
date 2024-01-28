# -*- coding: utf-8 -*-
import functools
import os
import re
from collections import namedtuple

import vim


_Placeholder = namedtuple("_FrozenPlaceholder", ["current_text", "start", "end"])


class VimBuffer:

	"""Wrapper around the current Vim buffer."""

	def __getitem__(self, idx):
		return vim.current.buffer[idx]

	def __setitem__(self, idx, text):
		vim.current.buffer[idx] = text

	def __len__(self):
		return len(vim.current.buffer)

	@property
	def line_till_cursor(self):  # pylint:disable=no-self-use
		"""Returns the text before the cursor."""
		_, col = self.cursor
		return vim.current.line[:col]

	@property
	def number(self):  # pylint:disable=no-self-use
		"""The bufnr() of the current buffer."""
		return vim.current.buffer.number

	@property
	def filetypes(self):
		return [ft for ft in vim.eval("&filetype").split(".") if ft]

	@property
	def cursor(self):  # pylint:disable=no-self-use
		"""The current windows cursor.

		Note that this is 0 based in col and 0 based in line which is
		different from Vim's cursor.

		"""
		line, nbyte = vim.current.window.cursor
		col = byte2col(line, nbyte)
		return Position(line - 1, col)

	@cursor.setter
	def cursor(self, pos):  # pylint:disable=no-self-use
		"""See getter."""
		nbyte = col2byte(pos.line + 1, pos.col)
		vim.current.window.cursor = pos.line + 1, nbyte


buf = VimBuffer()  # pylint:disable=invalid-name


class IndentUtil:

	"""Utility class for dealing properly with indentation."""

	def __init__(self):
		self.reset()

	def reset(self):
		"""Gets the spacing properties from Vim."""
		self.shiftwidth = int(
			vim.eval("exists('*shiftwidth') ? shiftwidth() : &shiftwidth")
		)
		self._expandtab = vim.eval("&expandtab") == "1"
		self._tabstop = int(vim.eval("&tabstop"))

	def ntabs_to_proper_indent(self, ntabs):
		"""Convert 'ntabs' number of tabs to the proper indent prefix."""
		line_ind = ntabs * self.shiftwidth * " "
		line_ind = self.indent_to_spaces(line_ind)
		line_ind = self.spaces_to_indent(line_ind)
		return line_ind

	def indent_to_spaces(self, indent):
		"""Converts indentation to spaces respecting Vim settings."""
		indent = indent.expandtabs(self._tabstop)
		right = (len(indent) - len(indent.rstrip(" "))) * " "
		indent = indent.replace(" ", "")
		indent = indent.replace("\t", " " * self._tabstop)
		return indent + right

	def spaces_to_indent(self, indent):
		"""Converts spaces to proper indentation respecting Vim settings."""
		if not self._expandtab:
			indent = indent.replace(" " * self._tabstop, "\t")
		return indent


_VisualContent = namedtuple("_VisualContent", ["mode", "text"])


class SnippetUtil:

	"""Provides easy access to indentation, etc.

	This is the 'snip' object in python code.

	"""

	def __init__(self, initial_indent, vmode, vtext, context, start, end):
		self._ind = IndentUtil()
		self._visual = _VisualContent(vmode, vtext)
		self._initial_indent = self._ind.indent_to_spaces(initial_indent)
		self._reset("")
		self._context = context
		self._start = start
		self._end = end
		#self._parent = parent

	def _reset(self, cur):
		"""Gets the snippet ready for another update.

		:cur: the new value for c.

		"""
		self._ind.reset()
		self._cur = cur
		self._rv = ""
		self._changed = False
		self.reset_indent()

	def shift(self, amount=1):
		"""Shifts the indentation level. Note that this uses the shiftwidth
		because thats what code formatters use.

		:amount: the amount by which to shift.

		"""
		self.indent += " " * self._ind.shiftwidth * amount

	def unshift(self, amount=1):
		"""Unshift the indentation level. Note that this uses the shiftwidth
		because thats what code formatters use.

		:amount: the amount by which to unshift.

		"""
		by = -self._ind.shiftwidth * amount
		try:
			self.indent = self.indent[:by]
		except IndexError:
			self.indent = ""

	def mkline(self, line="", indent=None):
		"""Creates a properly set up line.

		:line: the text to add
		:indent: the indentation to have at the beginning
				 if None, it uses the default amount

		"""
		if indent is None:
			indent = self.indent
			# this deals with the fact that the first line is
			# already properly indented
			if "\n" not in self._rv:
				try:
					indent = indent[len(self._initial_indent) :]
				except IndexError:
					indent = ""
			indent = self._ind.spaces_to_indent(indent)

		return indent + line

	def reset_indent(self):
		"""Clears the indentation."""
		self.indent = self._initial_indent

	# Utility methods
	@property
	def fn(self):  # pylint:disable=no-self-use,invalid-name
		"""The filename."""
		return vim.eval('expand("%:t")') or ""

	@property
	def basename(self):  # pylint:disable=no-self-use
		"""The filename without extension."""
		return vim.eval('expand("%:t:r")') or ""

	@property
	def ft(self):  # pylint:disable=invalid-name
		"""The filetype."""
		return self.opt("&filetype", "")

	@property
	def rv(self):  # pylint:disable=invalid-name
		"""The return value.

		The text to insert at the location of the placeholder.

		"""
		return self._rv

	@rv.setter
	def rv(self, value):  # pylint:disable=invalid-name
		"""See getter."""
		self._changed = True
		self._rv = value

	@property
	def _rv_changed(self):
		"""True if rv has changed."""
		return self._changed

	@property
	def c(self):  # pylint:disable=invalid-name
		"""The current text of the placeholder."""
		return self._cur

	@property
	def v(self):  # pylint:disable=invalid-name
		"""Content of visual expansions."""
		return self._visual

	@property
	def p(self):
		return _Placeholder("", 0, 0)

	@property
	def context(self):
		return self._context

	def opt(self, option, default=None):  # pylint:disable=no-self-use
		"""Gets a Vim variable."""
		if vim.eval("exists('%s')" % option) == "1":
			try:
				return vim.eval(option)
			except vim.error:
				pass
		return default

	def __add__(self, value):
		"""Appends the given line to rv using mkline."""
		self.rv += "\n"  # pylint:disable=invalid-name
		self.rv += self.mkline(value)
		return self

	def __lshift__(self, other):
		"""Same as unshift."""
		self.unshift(other)

	def __rshift__(self, other):
		"""Same as shift."""
		self.shift(other)

	@property
	def snippet_start(self):
		"""
		Returns start of the snippet in format (line, column).
		"""
		return self._start

	@property
	def snippet_end(self):
		"""
		Returns end of the snippet in format (line, column).
		"""
		return self._end

	@property
	def buffer(self):
		return buf


class _Tabs:

	"""Allows access to tabstop content via t[] inside of python code."""

	def __init__(self, tabs, mapping=None):
		self._tabs = tabs
		self._mapping = mapping or {}

	def __getitem__(self, no):
		no = self._mapping.get(int(no), int(no))
		current_text = ''
		if no >= 0 and no < len(self._tabs):
			current_text = self._tabs[no]
		return current_text

	def __setitem__(self, no, value):
		no = self._mapping.get(int(no), int(no))
		if no >= 0 and no < len(self._tabs):
			self._tabs[no] = value

	def __repr__(self):
		return f'{self.__class__.__name__}({self._tabs!r}, {self._mapping!r})'


@functools.cache
def cached_compile(*args):
	return compile(*args)


node_locals = {}


def get_node_locals(node_id):
	node_locals.setdefault(node_id, {})
	return node_locals[node_id]


INDENT_RE = re.compile(r'^[ \t]*')


def execute_code(node_id, node_code, global_code, tabstops, env, indent, match_context, tabstops_idx):
	global_code = 'import re, os, vim, string, random\n' + '\n'.join(global_code or [])
	codes = (
		global_code,
		node_code,
	)
	compiled_codes = (
		cached_compile(global_code, '<exec-globals>', 'exec'),
		cached_compile(node_code, '<exec-interpolation-code>', 'exec'),
	)

	text = '\n'.join(env.get('LS_SELECT_RAW', []))
	context = None
	start = (int(env['TM_LINE_NUMBER']), int(env['LS_CAPTURE_1']))
	end = (int(env['TM_LINE_NUMBER']), int(env['LS_CAPTURE_2']))
	indent = INDENT_RE.match(env['TM_CURRENT_LINE']).group(0)
	snip = SnippetUtil(indent, vim.eval("visualmode()"), text, context, start, end)
	path = vim.eval('expand("%")') or ""

	source_map = {val: i for i, val in enumerate(tabstops_idx)}

	node_locals = get_node_locals(tuple(node_id))
	node_locals.update({
		't': _Tabs(['\n'.join(tab) for tab in tabstops], source_map),
		'fn': os.path.basename(path),
		'cur': '',
		'res': '',
		'snip': snip,
	})

	if 'regex' in match_context:
		for match in re.finditer(match_context['regex'], match_context['line']):
			if match.end() != len(match_context['line']):
				continue
			else:
				node_locals['match'] = match

	for code, compiled_code in zip(codes, compiled_codes):
		try:
			exec(compiled_code, node_locals)
		except Exception as exception:
			exception.snippet_code = code
			raise

	rv = str(snip.rv if snip._rv_changed else node_locals["res"])
	lines = rv.splitlines()
	return [line[line.startswith(indent) and len(indent):] for line in lines]
