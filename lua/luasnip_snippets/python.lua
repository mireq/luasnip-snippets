-- Generated using ultisnips_to_luasnip.py

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key
local su = require("luasnip_snippets.common.snip_utils")
local cp = su.copy
local tr = su.transform
local rx_tr = su.regex_transform
local jt = su.join_text
local nl = su.new_line
local te = su.trig_engine
local ae = su.args_expand
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


local am = { -- list of argument numbers
	{0},
	{0},
	{0},
	{0},
	{0},
	{1, 2},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6, 7, 8},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{1, 2},
	{0},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{1, 2, 3},
	{},
	{},
	{},
	{0, 1, 2},
	{0},
	{},
	{1},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7},
	{1},
	{1},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{1, 2},
	{},
	{},
	{},
	{1},
	{1},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3},
	{0},
	{0, 1, 2, 3},
	{},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{1, 2, 4, 5},
	{1, 2, 4, 5},
	{},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1},
	{1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0},
	{},
}

local python_globals = {
	[[
NORMAL  = 0x1
DOXYGEN = 0x2
SPHINX  = 0x3
GOOGLE  = 0x4
NUMPY   = 0x5
JEDI    = 0x6

SINGLE_QUOTES = "'"
DOUBLE_QUOTES = '"'


class Arg(object):
	def __init__(self, arg):
		self.arg = arg
		name_and_type = arg.split('=')[0].split(':')
		self.name = name_and_type[0].strip()
		self.type = name_and_type[1].strip() if len(name_and_type) == 2 else None

	def __str__(self):
		return self.name

	def __unicode__(self):
		return self.name

	def is_kwarg(self):
		return '=' in self.arg

	def is_vararg(self):
		return '*' in self.name


def get_args(arglist):
	args = []
	n = len(arglist)
	i = 0
	while i < n:
		l_bracket = 0
		start = i
		while i < n and (l_bracket > 0 or arglist[i] != ','):
			if arglist[i] == '[':
				l_bracket += 1
			elif arglist[i] == ']' and l_bracket > 0:
				l_bracket -= 1
			i += 1
		arg = arglist[start:i]
		if arg:
			args.append(Arg(arg))
		i += 1

	args = [arg for arg in args if arg.name != 'self']

	return args


def get_quoting_style(snip):
	style = snip.opt("g:ultisnips_python_quoting_style", "double")
	if style == 'single':
		return SINGLE_QUOTES
	return DOUBLE_QUOTES

def triple_quotes(snip):
	style = snip.opt("g:ultisnips_python_triple_quoting_style")
	if not style:
		return get_quoting_style(snip) * 3
	return (SINGLE_QUOTES if style == 'single' else DOUBLE_QUOTES) * 3

def triple_quotes_handle_trailing(snip, quoting_style):
	"""
	Generate triple quoted strings and handle any trailing quote char,
	which might be there from some autoclose/autopair plugin,
	i.e. when expanding ``"|"``.
	"""
	if not snip.c:
		# Do this only once, otherwise the following error would happen:
		# RuntimeError: The snippets content did not converge: …
		row, col = vim.current.window.cursor

		# before ultisnip expansion, chars ahead cursor is at row - 1, col
		# after ultisnip expansion, they are pushed to row + 1, col - 1
		# when this function is run, it's already after ultisni expansion
		line = snip.buffer[row + 1]

		# Handle already existing quote chars after the trigger.
		_ret = quoting_style * 3
		while True:
			try:
				nextc = line[col - 1]
			except IndexError:
				break
			if nextc == quoting_style and len(_ret):
				_ret = _ret[1:]
				col = col+1
			else:
				break
		snip.rv = _ret
	else:
		snip.rv = snip.c

def get_style(snip):
	style = snip.opt("g:ultisnips_python_style", "normal")

	if    style == "doxygen": return DOXYGEN
	elif  style == "sphinx": return SPHINX
	elif  style == "google": return GOOGLE
	elif  style == "numpy": return NUMPY
	elif  style == "jedi": return JEDI
	else: return NORMAL


def format_arg(arg, style):
	if style == DOXYGEN:
		return "@param %s TODO" % arg
	elif style == SPHINX:
		return ":param %s: TODO" % arg
	elif style == NORMAL:
		return ":%s: TODO" % arg
	elif style == GOOGLE:
		return "%s (%s): TODO" % (arg, arg.type or "TODO")
	elif style == JEDI:
		return ":type %s: TODO" % arg
	elif style == NUMPY:
		return "%s : TODO" % arg


def format_return(style):
	if style == DOXYGEN:
		return "@return: TODO"
	elif style in (NORMAL, SPHINX, JEDI):
		return ":returns: TODO"
	elif style == GOOGLE:
		return "Returns: TODO"


def write_docstring_args(args, snip):
	if not args:
		snip.rv += ' {0}'.format(triple_quotes(snip))
		return

	snip.rv += '\n' + snip.mkline('', indent='')

	style = get_style(snip)

	if style == GOOGLE:
		write_google_docstring_args(args, snip)
	elif style == NUMPY:
		write_numpy_docstring_args(args, snip)
	else:
		for arg in args:
			snip += format_arg(arg, style)


def write_google_docstring_args(args, snip):
	kwargs = [arg for arg in args if arg.is_kwarg()]
	args = [arg for arg in args if not arg.is_kwarg()]

	if args:
		snip += "Args:"
		snip.shift()
		for arg in args:
			snip += format_arg(arg, GOOGLE)
		snip.unshift()
		snip.rv += '\n' + snip.mkline('', indent='')

	if kwargs:
		snip += "Kwargs:"
		snip.shift()
		for kwarg in kwargs:
			snip += format_arg(kwarg, GOOGLE)
		snip.unshift()
		snip.rv += '\n' + snip.mkline('', indent='')


def write_numpy_docstring_args(args, snip):
	if args:
		snip += "Parameters"
		snip += "----------"

	kwargs = [arg for arg in args if arg.is_kwarg()]
	args = [arg for arg in args if not arg.is_kwarg()]

	if args:
		for arg in args:
			snip += format_arg(arg, NUMPY)
	if kwargs:
		for kwarg in kwargs:
			snip += format_arg(kwarg, NUMPY) + ', optional'
	snip.rv += '\n' + snip.mkline('', indent='')


def write_init_body(args, parents, snip):
	parents = [p.strip() for p in parents.split(",")]
	parents = [p for p in parents if p != 'object']

	for p in parents:
		snip += p + ".__init__(self)"

	if parents:
		snip.rv += '\n' + snip.mkline('', indent='')

	for arg in filter(lambda arg: not arg.is_vararg(), args):
		snip += "self._%s = %s" % (arg, arg)


def write_slots_args(args, snip):
	quote = get_quoting_style(snip)
	arg_format = quote + '_%s' + quote
	args = [arg_format % arg for arg in args]
	snip += '__slots__ = (%s,)' % ', '.join(args)


def write_function_docstring(t, snip):
	"""
	Writes a function docstring with the current style.

	:param t: The values of the placeholders
	:param snip: UltiSnips.TextObjects.SnippetUtil object instance
	"""
	snip.rv = ""
	snip >> 1

	args = get_args(t[2])
	if args:
		write_docstring_args(args, snip)

	style = get_style(snip)

	if style == NUMPY:
		snip += 'Returns'
		snip += '-------'
		snip += 'TODO'
	else:
		snip += format_return(style)
	snip.rv += '\n' + snip.mkline('', indent='')
	snip += triple_quotes(snip)

def get_dir_and_file_name(snip):
	return os.getcwd().split(os.sep)[-1] + '.' + snip.basename
]]
}


ls.add_snippets("python", {
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env python\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env python", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "#!2", descr = "(#!2) \"#!/usr/bin/env python2\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env python2", nl(),
		t"# -*- coding: utf-8 -*-", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "#!3", descr = "(#!3) \"#!/usr/bin/env python3\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env python3", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "module", {key = "i0"})
	}),
	s({trig = "uni", descr = "(uni)", priority = -1000, trigEngine = te("w")}, {
		t"def __unicode__(self):", nl(),
		t"\t", i(0, "representation", {key = "i0"})
	}),
	s({trig = "from", descr = "(from) \"from module import name\"", priority = -50, trigEngine = te("b")}, {
		t"from ", i(1, "module", {key = "i1"}), t" import ", i(2, "Stuff", {key = "i2"})
	}),
	s({trig = "docs", descr = "(docs)", priority = -1000, trigEngine = te("w")}, {
		t"\"\"\"", nl(),
		t"File: ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1.py\', \'foo.py\')")}, ""), {key = "i1"}) }) end), nl(),
		t"Author: ", f(function(args, snip) return c_viml("g:snips_author") end), nl(),
		t"Email: ", f(function(args, snip) return c_viml("g:snips_email") end), nl(),
		t"Github: ", f(function(args, snip) return c_viml("g:snips_github") end), nl(),
		t"Description: ", i(0, "", {key = "i0"}), nl(),
		t"\"\"\"", nl()
	}),
	s({trig = "sk", descr = "(sk) \"skip unittests\" b", priority = -1000, trigEngine = te("w")}, {
		t"@unittest.skip(", i(1, "skip_reason", {key = "i1"}), t")", nl()
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl()
	}),
	s({trig = "dowh", descr = "(dowh)", priority = -1000, trigEngine = te("w")}, {
		t"while True:", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"\tif ", i(0, "", {key = "i0"}), t":", nl(),
		t"\t\tbreak", nl()
	}),
	s({trig = "with", descr = "(with) \"with\"", priority = -50, trigEngine = te("b")}, {
		t"with ", i(1, "expr", {key = "i1"}), f(function(args, snip) return c_py({"python", 11}, "snip.rv = \" as \" if t[2] else \"\"", python_globals, args, snip, "", am[11]) end, ae(am[11])), i(2, "var", {key = "i2"}), t":", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "awith", descr = "(awith)", priority = -1000, trigEngine = te("w")}, {
		t"async with ", i(1, "expr", {key = "i1"}), t" as ", i(2, "var", {key = "i2"}), t":", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl()
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "ClassName", {key = "i1"}), t"(", i(2, "object", {key = "i2"}), t"):", nl(),
		t"\t\"\"\"", d(3, function(args, snip) return sn(nil, { i(1, jt({"docstring for ", args[1]}, "\t"), {key = "i3"}) }) end, {k"i1"}), t"\"\"\"", nl(),
		t"\tdef __init__(self, ", i(4, "arg", {key = "i4"}), t"):", nl(),
		t"\t\t", d(5, function(args, snip) return sn(nil, { i(1, jt({"super(", args[1], ", self).__init__()"}, "\t\t"), {key = "i5"}) }) end, {k"i1"}), nl(),
		t"\t\tself.", cp(4), t" = ", cp(4), nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "cla", descr = "(cla)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "class_name", {key = "i1"}), t":", nl(),
		t"\t\"\"\"", i(0, "description", {key = "i0"}), t"\"\"\"", nl()
	}),
	s({trig = "clai", descr = "(clai)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "class_name", {key = "i1"}), t":", nl(),
		t"\t\"\"\"", i(2, "description", {key = "i2"}), t"\"\"\"", nl(),
		t"\tdef __init__(self, ", i(3, "args", {key = "i3"}), t"):", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "dcl", descr = "(dcl) \"dataclass\"", priority = -50, trigEngine = te("b")}, {
		t"@dataclass", nl(),
		t"class ", i(1, "MyClass", {key = "i1"}), t":", nl(),
		t"\t", f(function(args, snip) return c_py({"python", 16}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), d(2, function(args, snip) return sn(nil, { i(1, jt({"Docstring for ", args[1], ". "}, "\t"), {key = "i2"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 16}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), nl(),
		t"\t", i(3, "var_1", {key = "i3"}), t": ", i(4, "int", {key = "i4"}), nl(),
		t"\t", i(5, "var_2", {key = "i5"}), t": ", i(6, "float", {key = "i6"}), t" = ", i(7, "0", {key = "i7"}), nl(),
		nl(),
		t"\tdef ", i(8, "total", {key = "i8"}), t"(self): -> ", cp(6), t":", nl(),
		t"\t\treturn ", d(9, function(args, snip) return sn(nil, { i(1, jt({"self.", args[1], " * self.", args[2]}, "\t\t"), {key = "i0"}) }) end, {k"i3", k"i5"})
	}),
	s({trig = "def", descr = "(def) \"function with docstrings\"", priority = 0, trigEngine = te("b")}, {
		t"def ", i(1, "function", {key = "i1"}), t"(", f(function(args, snip) return c_py({"python", 17}, "\nif snip.indent:\n\tsnip.rv = \'self\' + (\", \" if len(t[2]) else \"\")", python_globals, args, snip, "", am[17]) end, ae(am[17])), i(2, "arg1", {key = "i2"}), t"):", nl(),
		t"\t", i(0, "pass", {key = "i0"})
	}),
	s({trig = "deff", descr = "(deff) \"function or class method\"", priority = -50, trigEngine = te("")}, {
		t"def ", i(1, "fname", {key = "i1"}), t"(", f(function(args, snip) return c_py({"python", 18}, "snip.rv = \"self, \" if snip.indent else \"\"", python_globals, args, snip, "", am[18]) end, ae(am[18])), i(2, "", {key = "i2"}), t"):", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "adef", descr = "(adef)", priority = -1000, trigEngine = te("w")}, {
		t"async def ", i(1, "fname", {key = "i1"}), t"(", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("indent(\'.\') ? \'self\' : \'\'")}, ""), {key = "i2"}) }) end), t"):", nl(),
		t"\t\"\"\"", d(3, function(args, snip) return sn(nil, { i(1, jt({"docstring for ", args[1]}, "\t"), {key = "i3"}) }) end, {k"i1"}), t"\"\"\"", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "adeff", descr = "(adeff)", priority = -1000, trigEngine = te("w")}, {
		t"async def ", i(1, "fname", {key = "i1"}), t"(", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("indent(\'.\') ? \'self\' : \'\'")}, ""), {key = "i2"}) }) end), t"):", nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "defi", descr = "(defi)", priority = -1000, trigEngine = te("w")}, {
		t"def __init__(self, ", i(1, "args", {key = "i1"}), t"):", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "defm", descr = "(defm)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "mname", {key = "i1"}), t"(self, ", i(2, "arg", {key = "i2"}), t"):", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "adefm", descr = "(adefm)", priority = -1000, trigEngine = te("w")}, {
		t"async def ", i(1, "mname", {key = "i1"}), t"(self, ", i(2, "arg", {key = "i2"}), t"):", nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "property", descr = "(property)", priority = -1000, trigEngine = te("w")}, {
		t"@property", nl(),
		t"def ", i(1, "foo", {key = "i1"}), t"(self) -> ", i(2, "type", {key = "i2"}), t":", nl(),
		t"\t\"\"\"", i(3, "doc", {key = "i3"}), t"\"\"\"", nl(),
		t"\treturn self._", cp(1), nl(),
		nl(),
		t"@", cp(1), t".setter", nl(),
		t"def ", cp(1), t"(self, value: ", cp(2), t"):", nl(),
		t"\tself._", cp(1), t" = value", nl()
	}),
	s({trig = "if", descr = "(if) \"If\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else:", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "ei", descr = "(ei)", priority = -1000, trigEngine = te("w")}, {
		t"elif ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl()
	}),
	s({trig = "match", descr = "(match) \"Structural pattern matching\"", priority = -50, trigEngine = te("b")}, {
		t"match ", i(1, "expression", {key = "i1"}), t":", nl(),
		t"\tcase ", i(2, "pattern_1", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "pass", {key = "i3"}), nl(),
		t"\tcase ", i(4, "pattern_2", {key = "i4"}), t":", nl(),
		t"\t\t", i(0, "pass", {key = "i0"})
	}),
	s({trig = "matchw", descr = "(matchw) \"Pattern matching with wildcard\"", priority = -50, trigEngine = te("b")}, {
		t"match ", i(1, "expression", {key = "i1"}), t":", nl(),
		t"\tcase ", i(2, "pattern_1", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "pass", {key = "i3"}), nl(),
		t"\tcase _:", nl(),
		t"\t\t", i(0, "pass", {key = "i0"})
	}),
	s({trig = "for", descr = "(for) \"for loop\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "item", {key = "i1"}), t" in ", i(2, "iterable", {key = "i2"}), t":", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end)
	}),
	s({trig = "cutf8", descr = "(cutf8)", priority = -1000, trigEngine = te("w")}, {
		t"# -*- coding: utf-8 -*-"
	}),
	s({trig = "clatin1", descr = "(clatin1)", priority = -1000, trigEngine = te("w")}, {
		t"# -*- coding: latin-1 -*-"
	}),
	s({trig = "cascii", descr = "(cascii)", priority = -1000, trigEngine = te("w")}, {
		t"# -*- coding: ascii -*-", nl()
	}),
	s({trig = "ld", descr = "(ld)", priority = -1000, trigEngine = te("w")}, {
		i(1, "var", {key = "i1"}), t" = lambda ", i(2, "vars", {key = "i2"}), t" : ", i(0, "action", {key = "i0"}), nl()
	}),
	s({trig = "ret", descr = "(ret)", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"})
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t"self."
	}),
	s({trig = "sa", descr = "(sa) self.attribute = attribute", priority = -1000, trigEngine = te("w")}, {
		t"self.", i(1, "attribute", {key = "i1"}), t" = ", cp(1), nl()
	}),
	s({trig = "try", descr = "(try) \"Try / Except\"", priority = -50, trigEngine = te("b")}, {
		t"try:", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"except ", i(2, "Exception", {key = "i2"}), t" as ", i(3, "e", {key = "i3"}), t":", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({"raise ", args[1]}, "\t"), {key = "i4"}) }) end, {k"i3"})
	}),
	s({trig = "trye", descr = "(trye) \"Try / Except / Else\"", priority = -50, trigEngine = te("b")}, {
		t"try:", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"except ", i(2, "Exception", {key = "i2"}), t" as ", i(3, "e", {key = "i3"}), t":", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({"raise ", args[1]}, "\t"), {key = "i4"}) }) end, {k"i3"}), nl(),
		t"else:", nl(),
		t"\t", i(5, "pass", {key = "i5"})
	}),
	s({trig = "tryf", descr = "(tryf) \"Try / Except / Finally\"", priority = -50, trigEngine = te("b")}, {
		t"try:", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"except ", i(2, "Exception", {key = "i2"}), t" as ", i(3, "e", {key = "i3"}), t":", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({"raise ", args[1]}, "\t"), {key = "i4"}) }) end, {k"i3"}), nl(),
		t"finally:", nl(),
		t"\t", i(5, "pass", {key = "i5"})
	}),
	s({trig = "tryef", descr = "(tryef) \"Try / Except / Else / Finally\"", priority = -50, trigEngine = te("b")}, {
		t"try:", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"except", c(2, {{t" ", i(1, "Exception", {key = "i3"}), t" as ", i(2, "e", {key = "i4"})}, {i(1, jt({" ", "Exception", " as ", "e"}))}}, {key = "i2"}), t":", nl(),
		t"\t", i(3, "raise", {key = "i5"}), nl(),
		t"else:", nl(),
		t"\t", i(4, "pass", {key = "i6"}), nl(),
		t"finally:", nl(),
		t"\t", i(5, "pass", {key = "i7"})
	}),
	s({trig = "ifmain", descr = "(ifmain) \"ifmain\"", priority = -50, trigEngine = te("b")}, {
		t"if __name__ == ", f(function(args, snip) return c_py({"python", 42}, "snip.rv = get_quoting_style(snip)", python_globals, args, snip, "", am[42]) end, ae(am[42])), t"__main__", f(function(args, snip) return c_py({"python", 42}, "snip.rv = get_quoting_style(snip)", python_globals, args, snip, "", am[42]) end, ae(am[42])), t":", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end)
	}),
	s({trig = "_", descr = "(_)", priority = -1000, trigEngine = te("w")}, {
		t"__", i(1, "init", {key = "i1"}), t"__", nl()
	}),
	s({trig = "br", descr = "(br)", priority = -1000, trigEngine = te("w")}, {
		t"breakpoint()"
	}),
	s({trig = "pdb", descr = "(pdb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'pdb\').set_trace()"
	}),
	s({trig = "bpdb", descr = "(bpdb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'bpdb\').set_trace()"
	}),
	s({trig = "ipdb", descr = "(ipdb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'ipdb\').set_trace()"
	}),
	s({trig = "iem", descr = "(iem)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'IPython\').embed()"
	}),
	s({trig = "rpdb", descr = "(rpdb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'rpdb\').set_trace()"
	}),
	s({trig = "wdb", descr = "(wdb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'wdb\').set_trace()"
	}),
	s({trig = "ptpython", descr = "(ptpython)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'ptpython.repl\', fromlist=(\'repl\')).embed(globals(), locals(), vi_mode=", i(1, "False", {key = "i1"}), t", history_filename=", i(2, "None", {key = "i2"}), t")"
	}),
	s({trig = "pudb", descr = "(pudb)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'pudb\').set_trace()"
	}),
	s({trig = "pudbr", descr = "(pudbr)", priority = -1000, trigEngine = te("w")}, {
		t"from pudb.remote import set_trace", nl(),
		t"set_trace()"
	}),
	s({trig = "nosetrace", descr = "(nosetrace)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'nose\').tools.set_trace()"
	}),
	s({trig = "pprint", descr = "(pprint)", priority = -1000, trigEngine = te("w")}, {
		t"__import__(\'pprint\').pprint(", i(1, "", {key = "i1"}), t")", nl()
	}),
	s({trig = "\"", descr = "(\") \"triple quoted string (double quotes)\"", priority = 0, trigEngine = te("b")}, {
		t"\"\"\"", nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		t"\"\"\""
	}),
	s({trig = "a=", descr = "(a=)", priority = -1000, trigEngine = te("w")}, {
		t"self.assertEqual(", i(0, "", {key = "i0"}), t", ", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"def test_", i(1, "description", {key = "i1"}), t"(", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("indent(\'.\') ? \'self\' : \'\'")}, ""), {key = "i2"}) }) end), t"):", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "testcase", descr = "(testcase) \"pyunit testcase\"", priority = -50, trigEngine = te("b")}, {
		t"class Test", i(1, "Class", {key = "i1"}), t"(", i(2, "unittest.TestCase", {key = "i2"}), t"):", nl(),
		nl(),
		t"\t", f(function(args, snip) return c_py({"python", 59}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[59]) end, ae(am[59])), i(3, "Test case docstring.", {key = "i3"}), f(function(args, snip) return c_py({"python", 59}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[59]) end, ae(am[59])), nl(),
		nl(),
		t"\tdef setUp(self):", nl(),
		t"\t\t", i(4, "pass", {key = "i4"}), nl(),
		nl(),
		t"\tdef tearDown(self):", nl(),
		t"\t\t", i(5, "pass", {key = "i5"}), nl(),
		nl(),
		t"\tdef test_", i(6, "name", {key = "i6"}), t"(self):", nl(),
		t"\t\t", d(7, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i7"}) }) end)
	}),
	s({trig = "tgwt", descr = "(tgwt)", priority = -1000, trigEngine = te("w")}, {
		t"# given: ", i(1, "", {key = "i1"}), nl(),
		t"# when: ", i(2, "", {key = "i2"}), nl(),
		t"# then: ", i(3, "", {key = "i3"})
	}),
	s({trig = "fut", descr = "(fut)", priority = -1000, trigEngine = te("w")}, {
		t"from __future__ import ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "getopt", descr = "(getopt)", priority = -1000, trigEngine = te("w")}, {
		t"try:", nl(),
		t"\t# Short option syntax: \"hv:\"", nl(),
		t"\t# Long option syntax: \"help\" or \"verbose=\"", nl(),
		t"\topts, args = getopt.getopt(sys.argv[1:], \"", i(1, "short_options", {key = "i1"}), t"\", [", i(2, "long_options", {key = "i2"}), t"])", nl(),
		nl(),
		t"except getopt.GetoptError, err:", nl(),
		t"\t# Print debug info", nl(),
		t"\tprint str(err)", nl(),
		t"\t", i(3, "error_action", {key = "i3"}), nl(),
		nl(),
		t"for option, argument in opts:", nl(),
		t"\tif option in (\"-h\", \"--help\"):", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\telif option in (\"-v\", \"--verbose\"):", nl(),
		t"\t\tverbose = argument", nl()
	}),
	s({trig = "addp", descr = "(addp)", priority = -1000, trigEngine = te("w")}, {
		t"parser = ", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t"ArgumentParser()"
	}),
	s({trig = "addsp", descr = "(addsp)", priority = -1000, trigEngine = te("w")}, {
		i(0, "sub_parser", {key = "i0"}), t" = parser.add_subparsers().add_parser(\"", i(1, "name", {key = "i1"}), t"\")"
	}),
	s({trig = "addarg", descr = "(addarg)", priority = -1000, trigEngine = te("w")}, {
		t"parser.add_argument(\"", i(0, "short_arg", {key = "i0"}), t"\", \"", i(1, "long_arg", {key = "i1"}), t"\", default=", i(2, "None", {key = "i2"}), t", help=\"", i(3, "Help text", {key = "i3"}), t"\")"
	}),
	s({trig = "addnarg", descr = "(addnarg)", priority = -1000, trigEngine = te("w")}, {
		t"parser.add_argument(\"", i(0, "arg", {key = "i0"}), t"\", nargs=\"", i(1, "*", {key = "i1"}), t"\", default=", i(2, "None", {key = "i2"}), t", help=\"", i(3, "Help text", {key = "i3"}), t"\")"
	}),
	s({trig = "addaarg", descr = "(addaarg)", priority = -1000, trigEngine = te("w")}, {
		t"parser.add_argument(\"", i(0, "arg", {key = "i0"}), t"\", \"", i(1, "long_arg", {key = "i1"}), t"\", action=\"", i(2, "store_true", {key = "i2"}), t"\", default=", i(3, "False", {key = "i3"}), t", help=\"", i(4, "Help text", {key = "i4"}), t"\")"
	}),
	s({trig = "pargs", descr = "(pargs)", priority = -1000, trigEngine = te("w")}, {
		t"\"", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t"\"parser.parse_args()", nl()
	}),
	s({trig = "glog", descr = "(glog)", priority = -1000, trigEngine = te("w")}, {
		t"import logging", nl(),
		t"LOGGER = logging.getLogger(", i(0, "__name__", {key = "i0"}), t")"
	}),
	s({trig = "le", descr = "(le)", priority = -1000, trigEngine = te("w")}, {
		t"LOGGER.error(", i(0, "msg", {key = "i0"}), t")"
	}),
	s({trig = "lg", descr = "(lg)", priority = -1000, trigEngine = te("w")}, {
		t"LOGGER.debug(", i(0, "msg", {key = "i0"}), t")"
	}),
	s({trig = "lw", descr = "(lw)", priority = -1000, trigEngine = te("w")}, {
		t"LOGGER.warning(", i(0, "msg", {key = "i0"}), t")"
	}),
	s({trig = "lc", descr = "(lc)", priority = -1000, trigEngine = te("w")}, {
		t"LOGGER.critical(", i(0, "msg", {key = "i0"}), t")"
	}),
	s({trig = "li", descr = "(li)", priority = -1000, trigEngine = te("w")}, {
		t"LOGGER.info(", i(0, "msg", {key = "i0"}), t")"
	}),
	s({trig = "epydoc", descr = "(epydoc)", priority = -1000, trigEngine = te("w")}, {
		t"\"\"\"", i(1, "Description", {key = "i1"}), nl(),
		nl(),
		t"@param ", i(2, "param", {key = "i2"}), t": ", i(3, " Description", {key = "i3"}), nl(),
		t"@type  ", cp(2), t": ", i(4, " Type", {key = "i4"}), nl(),
		nl(),
		t"@return: ", i(5, " Description", {key = "i5"}), nl(),
		t"@rtype : ", i(6, " Type", {key = "i6"}), nl(),
		nl(),
		t"@raise e: ", i(0, " Description", {key = "i0"}), nl(),
		t"\"\"\""
	}),
	s({trig = "dol", descr = "(dol)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "__init__", {key = "i1"}), t"(self, *args, **kwargs):", nl(),
		t"\tsuper(", i(0, "ClassName", {key = "i0"}), t", self).", cp(1), t"(*args, **kwargs)"
	}),
	s({trig = "kwg", descr = "(kwg)", priority = -1000, trigEngine = te("w")}, {
		t"self.", i(1, "var_name", {key = "i1"}), t" = kwargs.get(\'", cp(1), t"\', ", i(2, "None", {key = "i2"}), t")"
	}),
	s({trig = "lkwg", descr = "(lkwg)", priority = -1000, trigEngine = te("w")}, {
		i(1, "var_name", {key = "i1"}), t" = kwargs.get(\'", cp(1), t"\', ", i(2, "None", {key = "i2"}), t")"
	}),
	s({trig = "args", descr = "(args)", priority = -1000, trigEngine = te("w")}, {
		t"*args", i(1, ",", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "kwargs", descr = "(kwargs)", priority = -1000, trigEngine = te("w")}, {
		t"**kwargs", i(1, ",", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "akw", descr = "(akw)", priority = -1000, trigEngine = te("w")}, {
		t"*args, **kwargs", i(1, ",", {key = "i1"}), i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "lcp", descr = "(lcp) list comprehension", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "", {key = "i1"}), t" for ", i(2, "", {key = "i2"}), t" in ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i3"}) }) end), t"]", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "dcp", descr = "(dcp) dict comprehension", priority = -1000, trigEngine = te("w")}, {
		t"{", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), t" for ", i(3, "", {key = "i3"}), t" in ", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i4"}) }) end), t"}", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "scp", descr = "(scp) set comprehension", priority = -1000, trigEngine = te("w")}, {
		t"{", i(1, "", {key = "i1"}), t" for ", i(2, "", {key = "i2"}), t" in ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i3"}) }) end), t"}", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "contain", descr = "(contain) \"methods for emulating a container type\"", priority = -50, trigEngine = te("b")}, {
		t"def __len__(self):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __getitem__(self, key):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __setitem__(self, key, value):", nl(),
		t"\t", i(3, "pass", {key = "i3"}), nl(),
		nl(),
		t"def __delitem__(self, key):", nl(),
		t"\t", i(4, "pass", {key = "i4"}), nl(),
		nl(),
		t"def __iter__(self):", nl(),
		t"\t", i(5, "pass", {key = "i5"}), nl(),
		nl(),
		t"def __reversed__(self):", nl(),
		t"\t", i(6, "pass", {key = "i6"}), nl(),
		nl(),
		t"def __contains__(self, item):", nl(),
		t"\t", i(7, "pass", {key = "i7"})
	}),
	s({trig = "context", descr = "(context) \"context manager methods\"", priority = -50, trigEngine = te("b")}, {
		t"def __enter__(self):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __exit__(self, exc_type, exc_value, traceback):", nl(),
		t"\t", i(2, "pass", {key = "i2"})
	}),
	s({trig = "attr", descr = "(attr) \"methods for customizing attribute access\"", priority = -50, trigEngine = te("b")}, {
		t"def __getattr__(self, name):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __setattr__(self, name, value):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __delattr__(self, name):", nl(),
		t"\t", i(3, "pass", {key = "i3"})
	}),
	s({trig = "desc", descr = "(desc) \"methods implementing descriptors\"", priority = -50, trigEngine = te("b")}, {
		t"def __get__(self, instance, owner):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __set__(self, instance, value):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __delete__(self, instance):", nl(),
		t"\t", i(3, "pass", {key = "i3"})
	}),
	s({trig = "cmp", descr = "(cmp) \"methods implementing rich comparison\"", priority = -50, trigEngine = te("")}, {
		t"def __eq__(self, other):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __ne__(self, other):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __lt__(self, other):", nl(),
		t"\t", i(3, "pass", {key = "i3"}), nl(),
		nl(),
		t"def __le__(self, other):", nl(),
		t"\t", i(4, "pass", {key = "i4"}), nl(),
		nl(),
		t"def __gt__(self, other):", nl(),
		t"\t", i(5, "pass", {key = "i5"}), nl(),
		nl(),
		t"def __ge__(self, other):", nl(),
		t"\t", i(6, "pass", {key = "i6"}), nl(),
		nl(),
		t"def __cmp__(self, other):", nl(),
		t"\t", i(7, "pass", {key = "i7"})
	}),
	s({trig = "repr", descr = "(repr) \"methods implementing string representation\"", priority = -50, trigEngine = te("")}, {
		t"def __repr__(self):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __str__(self):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __unicode__(self):", nl(),
		t"\t", i(3, "pass", {key = "i3"})
	}),
	s({trig = "numeric", descr = "(numeric) \"methods for emulating a numeric type\"", priority = -50, trigEngine = te("b")}, {
		t"def __add__(self, other):", nl(),
		t"\t", i(1, "pass", {key = "i1"}), nl(),
		nl(),
		t"def __sub__(self, other):", nl(),
		t"\t", i(2, "pass", {key = "i2"}), nl(),
		nl(),
		t"def __mul__(self, other):", nl(),
		t"\t", i(3, "pass", {key = "i3"}), nl(),
		nl(),
		t"def __div__(self, other):", nl(),
		t"\t", i(4, "pass", {key = "i4"}), nl(),
		nl(),
		t"def __truediv__(self, other):", nl(),
		t"\t", i(5, "pass", {key = "i5"}), nl(),
		nl(),
		t"def __floordiv__(self, other):", nl(),
		t"\t", i(6, "pass", {key = "i6"}), nl(),
		nl(),
		nl(),
		t"def __mod__(self, other):", nl(),
		t"\t", i(7, "pass", {key = "i7"}), nl(),
		nl(),
		t"def __divmod__(self, other):", nl(),
		t"\t", i(8, "pass", {key = "i8"}), nl(),
		nl(),
		t"def __pow__(self, other):", nl(),
		t"\t", i(9, "pass", {key = "i9"}), nl(),
		nl(),
		nl(),
		t"def __lshift__(self, other):", nl(),
		t"\t", i(10, "pass", {key = "i10"}), nl(),
		nl(),
		t"def __rshift__(self, other):", nl(),
		t"\t", i(11, "pass", {key = "i11"}), nl(),
		nl(),
		t"def __and__(self, other):", nl(),
		t"\t", i(12, "pass", {key = "i12"}), nl(),
		nl(),
		t"def __xor__(self, other):", nl(),
		t"\t", i(13, "pass", {key = "i13"}), nl(),
		nl(),
		t"def __or__(self, other):", nl(),
		t"\t", i(14, "pass", {key = "i14"}), nl(),
		nl(),
		nl(),
		t"def __neg__(self):", nl(),
		t"\t", i(15, "pass", {key = "i15"}), nl(),
		nl(),
		t"def __pos__(self):", nl(),
		t"\t", i(16, "pass", {key = "i16"}), nl(),
		nl(),
		t"def __abs__(self):", nl(),
		t"\t", i(17, "pass", {key = "i17"}), nl(),
		nl(),
		t"def __invert__(self):", nl(),
		t"\t", i(18, "pass", {key = "i18"}), nl(),
		nl(),
		nl(),
		t"def __complex__(self):", nl(),
		t"\t", i(19, "pass", {key = "i19"}), nl(),
		nl(),
		t"def __int__(self):", nl(),
		t"\t", i(20, "pass", {key = "i20"}), nl(),
		nl(),
		t"def __long__(self):", nl(),
		t"\t", i(21, "pass", {key = "i21"}), nl(),
		nl(),
		t"def __float__(self):", nl(),
		t"\t", i(22, "pass", {key = "i22"}), nl(),
		nl(),
		nl(),
		t"def __oct__(self):", nl(),
		t"\t", i(22, "pass", {key = "i22"}), nl(),
		nl(),
		t"def __hex__(self):", nl(),
		t"\t", i(23, "pass", {key = "i23"}), nl(),
		nl(),
		nl(),
		t"def __index__(self):", nl(),
		t"\t", i(24, "pass", {key = "i24"}), nl(),
		nl(),
		t"def __coerce__(self, other):", nl(),
		t"\t", i(25, "pass", {key = "i25"})
	}),
	s({trig = "pr", descr = "(pr) \"Print\"", priority = 0, trigEngine = te("i")}, {
		t"print(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "prs", descr = "(prs)", priority = -1000, trigEngine = te("w")}, {
		t"print(\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "prf", descr = "(prf)", priority = -1000, trigEngine = te("w")}, {
		t"print(f\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "fpr", descr = "(fpr)", priority = -1000, trigEngine = te("w")}, {
		t"print(", i(0, "", {key = "i0"}), t", file=", i(1, "sys.stderr", {key = "i1"}), t")"
	}),
	s({trig = "fprs", descr = "(fprs)", priority = -1000, trigEngine = te("w")}, {
		t"print(\"", i(0, "", {key = "i0"}), t"\", file=", i(1, "sys.stderr", {key = "i1"}), t")"
	}),
	s({trig = "fprf", descr = "(fprf)", priority = -1000, trigEngine = te("w")}, {
		t"print(f\"", i(0, "", {key = "i0"}), t"\", file=", i(1, "sys.stderr", {key = "i1"}), t")"
	}),
	s({trig = "^# ?[uU][tT][fF]-?8", descr = "(^# ?[uU][tT][fF]-?8) \"# encoding: UTF-8\"", priority = -50, trigEngine = te("r")}, {
		t"# -*- coding: utf-8 -*-", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "class", descr = "(class) \"class with docstrings\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MyClass", {key = "i1"}), t"(", i(2, "object", {key = "i2"}), t"):", nl(),
		nl(),
		t"\t", f(function(args, snip) return c_py({"python", 99}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[99]) end, ae(am[99])), d(3, function(args, snip) return sn(nil, { i(1, jt({"Docstring for ", args[1], ". "}, "\t"), {key = "i3"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 99}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[99]) end, ae(am[99])), nl(),
		nl(),
		t"\tdef __init__(self", i(4, "", {key = "i4"}), t"):", nl(),
		t"\t\t", f(function(args, snip) return c_py({"python", 99}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[99]) end, ae(am[99])), i(5, "TODO: to be defined.", {key = "i5"}), f(function(args, snip) return c_py({"python", 99}, "\nsnip.rv = \"\"\nsnip >> 2\n\nargs = get_args(t[4])\n\nwrite_docstring_args(args, snip)\nif args:\n\tsnip.rv += \'\\n\' + snip.mkline(\'\', indent=\'\')\n\tsnip += \'{0}\'.format(triple_quotes(snip))\n\nwrite_init_body(args, t[2], snip)\n", python_globals, args, snip, "", am[99]) end, ae(am[99])), nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "slotclass", descr = "(slotclass) \"class with slots and docstrings\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "MyClass", {key = "i1"}), t"(", i(2, "object", {key = "i2"}), t"):", nl(),
		nl(),
		t"\t", f(function(args, snip) return c_py({"python", 100}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[100]) end, ae(am[100])), d(3, function(args, snip) return sn(nil, { i(1, jt({"Docstring for ", args[1], ". "}, "\t"), {key = "i3"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 100}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[100]) end, ae(am[100])), nl(),
		f(function(args, snip) return c_py({"python", 100}, "\nsnip >> 1\nargs = get_args(t[4])\nwrite_slots_args(args, snip)\n", python_globals, args, snip, "", am[100]) end, ae(am[100])), nl(),
		nl(),
		t"\tdef __init__(self", i(4, "", {key = "i4"}), t"):", nl(),
		t"\t\t", f(function(args, snip) return c_py({"python", 100}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[100]) end, ae(am[100])), i(5, "TODO: to be defined.", {key = "i5"}), f(function(args, snip) return c_py({"python", 100}, "\nsnip.rv = \"\"\nsnip >> 2\n\nargs = get_args(t[4])\n\nwrite_docstring_args(args, snip)\nif args:\n\tsnip.rv += \'\\n\' + snip.mkline(\'\', indent=\'\')\n\tsnip += triple_quotes(snip)\n\nwrite_init_body(args, t[2], snip)\n", python_globals, args, snip, "", am[100]) end, ae(am[100])), nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "defc", descr = "(defc) \"class method with docstrings\"", priority = -50, trigEngine = te("b")}, {
		t"@classmethod", nl(),
		t"def ", i(1, "function", {key = "i1"}), t"(", f(function(args, snip) return c_py({"python", 101}, "\nif snip.indent:\n\tsnip.rv = \'cls\' + (\", \" if len(t[2]) else \"\")", python_globals, args, snip, "", am[101]) end, ae(am[101])), i(2, "arg1", {key = "i2"}), t"):", nl(),
		t"\t", f(function(args, snip) return c_py({"python", 101}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[101]) end, ae(am[101])), d(3, function(args, snip) return sn(nil, { i(1, jt({"TODO: Docstring for ", args[1], "."}, "\t"), {key = "i4"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 101}, "\nwrite_function_docstring(t, snip) ", python_globals, args, snip, "", am[101]) end, ae(am[101])), nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i5"}) }) end)
	}),
	s({trig = "defs", descr = "(defs) \"static method with docstrings\"", priority = -50, trigEngine = te("b")}, {
		t"@staticmethod", nl(),
		t"def ", i(1, "function", {key = "i1"}), t"(", i(2, "arg1", {key = "i2"}), t"):", nl(),
		t"\t", f(function(args, snip) return c_py({"python", 102}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[102]) end, ae(am[102])), d(3, function(args, snip) return sn(nil, { i(1, jt({"TODO: Docstring for ", args[1], "."}, "\t"), {key = "i4"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 102}, "\nwrite_function_docstring(t, snip) ", python_globals, args, snip, "", am[102]) end, ae(am[102])), nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i5"}) }) end)
	}),
	s({trig = "(^|(?<=\\W))\\.", descr = "((^|(?<=\\W))\\.) \"self.\"", priority = -50, trigEngine = te("r")}, {
		t"self."
	}),
	s({trig = "roprop", descr = "(roprop) \"Read Only Property\"", priority = -50, trigEngine = te("b")}, {
		t"@property", nl(),
		t"def ", i(1, "name", {key = "i1"}), t"(self):", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({"return self._", args[1]}, "\t"), {key = "i2"}) }) end, {k"i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "rwprop", descr = "(rwprop) \"Read write property\"", priority = -50, trigEngine = te("b")}, {
		t"def ", i(1, "name", {key = "i1"}), t"():", nl(),
		t"\t", f(function(args, snip) return c_py({"python", 105}, "snip.rv = triple_quotes(snip) if t[2] else \'\'\n", python_globals, args, snip, "", am[105]) end, ae(am[105])), d(2, function(args, snip) return sn(nil, { i(1, jt({"TODO: Docstring for ", args[1], "."}, "\t"), {key = "i2"}) }) end, {k"i1"}), f(function(args, snip) return c_py({"python", 105}, "\nif t[2]:\n\tsnip >> 1\n\n\tstyle = get_style(snip)\n\tsnip.rv += \'\\n\' + snip.mkline(\'\', indent=\'\')\n\tsnip += format_return(style)\n\tsnip.rv += \'\\n\' + snip.mkline(\'\', indent=\'\')\n\tsnip += triple_quotes(snip)\nelse:\n\tsnip.rv = \"\"", python_globals, args, snip, "", am[105]) end, ae(am[105])), nl(),
		t"\tdef fget(self):", nl(),
		t"\t\treturn self._", cp(1), i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\tdef fset(self, value):", nl(),
		t"\t\tself._", cp(1), t" = value", nl(),
		t"\treturn locals()", nl(),
		nl(),
		cp(1), t" = property(**", cp(1), t"(), doc=", cp(1), t".__doc__)"
	}),
	s({trig = "ife", descr = "(ife) \"If / Else\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else:", nl(),
		t"\t", i(3, "pass", {key = "i3"})
	}),
	s({trig = "ifee", descr = "(ifee) \"If / Elif / Else\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"elif ", i(3, "condition", {key = "i3"}), t":", nl(),
		t"\t", i(4, "pass", {key = "i4"}), nl(),
		t"else:", nl(),
		t"\t", i(5, "pass", {key = "i5"})
	}),
	s({trig = "ae", descr = "(ae) \"Assert equal\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertEqual(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(2, "second", {key = "i2"}), t")"
	}),
	s({trig = "at", descr = "(at) \"Assert True\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertTrue(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t")"
	}),
	s({trig = "af", descr = "(af) \"Assert False\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertFalse(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t")"
	}),
	s({trig = "aae", descr = "(aae) \"Assert almost equal\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertAlmostEqual(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(2, "second", {key = "i2"}), t")"
	}),
	s({trig = "ar", descr = "(ar) \"Assert raises\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertRaises(", i(1, "exception", {key = "i1"}), t", ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), tr(3, ".+", ", "), i(3, "arguments", {key = "i3"}), t")"
	}),
	s({trig = "an", descr = "(an) \"Assert is None\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertIsNone(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t")"
	}),
	s({trig = "ann", descr = "(ann) \"Assert is not None\"", priority = -50, trigEngine = te("b")}, {
		t"self.assertIsNotNone(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t")"
	}),
	s({trig = "\'", descr = "(\') \"triple quoted string (single quotes)\"", priority = -50, trigEngine = te("b")}, {
		t"\'\'\'", nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"python", 115}, "triple_quotes_handle_trailing(snip, \"\'\")", python_globals, args, snip, "", am[115]) end, ae(am[115]))
	}),
	s({trig = "doc", descr = "(doc) \"doc block (triple quotes)\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"python", 116}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[116]) end, ae(am[116])), nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"python", 116}, "snip.rv = triple_quotes(snip)", python_globals, args, snip, "", am[116]) end, ae(am[116]))
	}),
	s({trig = "pmdoc", descr = "(pmdoc) \"pocoo style module doc string\"", priority = -50, trigEngine = te("b")}, {
		t"# -*- coding: utf-8 -*-", nl(),
		t"\"\"\"", nl(),
		t"\t", f(function(args, snip) return c_py({"python", 117}, "snip.rv = get_dir_and_file_name(snip)", python_globals, args, snip, "", am[117]) end, ae(am[117])), nl(),
		t"\t", f(function(args, snip) return c_py({"python", 117}, "snip.rv = \'~\' * len(get_dir_and_file_name(snip))", python_globals, args, snip, "", am[117]) end, ae(am[117])), nl(),
		nl(),
		t"\t", i(1, "DESCRIPTION", {key = "i1"}), nl(),
		nl(),
		t"\t:copyright: (c) ", f(function(args, snip) return c_shell("date +%Y") end), t" by ", i(2, "YOUR_NAME", {key = "i2"}), t".", nl(),
		t"\t:license: ", i(3, "LICENSE_NAME", {key = "i3"}), t", see LICENSE for more details.", nl(),
		t"\"\"\"", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "s(uper)?", descr = "(s(uper)?) \"Super method\"", priority = 0, trigEngine = te("br")}, {
		t"def ", i(1, "__init__", {key = "i1"}), t"(self, ", i(2, "*args, **kwargs", {key = "i2"}), t"):", nl(),
		t"\treturn super().", cp(1), t"(", cp(2), t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pp", descr = "(pp) \"Pretty print\"", priority = 0, trigEngine = te("i")}, {
		t"pprint(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ip", descr = "(ip) \"Import pretty print\"", priority = 0, trigEngine = te("b")}, {
		t"from pprint import pprint", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_label", descr = "(django_label) \"Django label\"", priority = 0, trigEngine = te("")}, {
		t"def get_", i(1, "field", {key = "i1"}), t"(self, obj):", nl(),
		t"\tcls = \"none\"", nl(),
		t"\ttext =  \"\"", nl(),
		t"\treturn render_to_string(\"admin/inc/label.html\", {\"class\": cls, \"label\": unicode(text)})", nl(),
		t"get_", cp(1), t".short_description = _(\"", i(2, "desc", {key = "i2"}), t"\")", nl(),
		t"get_", cp(1), t".allow_tags = True", nl(),
		t"get_", cp(1), t".admin_order_field = \"", i(3, "order", {key = "i3"}), t"\"", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_widget_override", descr = "(django_widget_override) \"Django widget override\"", priority = 0, trigEngine = te("")}, {
		t"formfield_overrides = {", nl(),
		t"\tmodels.", i(1, "TextField", {key = "i1"}), t": {\'widget\': ", i(2, "RedactorWidget", {key = "i2"}), t"},", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_serve_media", descr = "(django_serve_media) \"Django serve media\"", priority = 0, trigEngine = te("")}, {
		t"from django.conf import settings", nl(),
		nl(),
		t"if settings.DEBUG:", nl(),
		t"\turlpatterns += patterns(\'\', (r\'^media/(?P<path>.*)$\', \'django.views.static.serve\', { \'document_root\': settings.MEDIA_ROOT}))", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_tcp", descr = "(django_tcp) \"Django TEMPLATE_CONTEXT_PROCESSORS\"", priority = 0, trigEngine = te("")}, {
		t"from django.conf.global_settings import TEMPLATE_CONTEXT_PROCESSORS as TCP", nl(),
		nl(),
		t"TEMPLATE_CONTEXT_PROCESSORS = TCP + (", nl(),
		t"\t\'django.core.context_processors.request\',", nl(),
		t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_template_dirs", descr = "(django_template_dirs) \"Django TEMPLATE_DIRS\"", priority = 0, trigEngine = te("")}, {
		t"TEMPLATE_DIRS = (", nl(),
		t"\tos.path.join(BASE_DIR, \'templates\'),", nl(),
		t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_staticfiles_dirs", descr = "(django_staticfiles_dirs) \"Django STATICFILES_DIRS\"", priority = 0, trigEngine = te("")}, {
		t"STATICFILES_DIRS = (", nl(),
		t"\tos.path.join(BASE_DIR, \'static\'),", nl(),
		t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "django_cache", descr = "(django_cache) \"Django cache\"", priority = 0, trigEngine = te("")}, {
		t"CACHES = {", nl(),
		t"\t\'default\': {", nl(),
		t"\t\t\'BACKEND\': \'django.core.cache.backends.memcached.MemcachedCache\',", nl(),
		t"\t\t\'LOCATION\': \'127.0.0.1:11211\',", nl(),
		t"\t}", nl(),
		t"}"
	}),
})
