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


local am = { -- argument mapping: token index to placeholder number
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	0,
	0,
	2,
	2,
	3,
	2,
	3,
	3,
	2,
	2,
	2,
	3,
	2,
	1,
	1,
	1,
	1,
	2,
	2,
	1,
	2,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	1,
	1,
	0,
	1,
	1,
	1,
	1,
	1,
}

local python_globals = {
	[[from collections import Counter
from vimsnippets import complete, has_cjk, display_width

# http://docutils.sourceforge.net/docs/ref/rst/roles.html
TEXT_ROLES = ['emphasis', 'literal', 'code', 'math',
			  'pep-reference', 'rfc-reference',
			  'strong', 'subscript', 'superscript',
			  'title-reference', 'raw']
TEXT_ROLES_REGEX = r'\.\.\srole::?\s(w+)'

# http://docutils.sourceforge.net/docs/ref/rst/directives.html#specific-admonitions
SPECIFIC_ADMONITIONS = ["attention", "caution", "danger",
						"error", "hint", "important", "note",
						"tip", "warning"]
# http://docutils.sourceforge.net/docs/ref/rst/directives.html
DIRECTIVES = ['code', 'contents', 'admonition', 'table', 'csv-table', 'list-table',
			  'class', 'container', 'sidebar', 'topic', 'title',
			  'role', 'default-role', 'raw']

# DIRECTIVES_WITHOUT_TITLE means directive arguments equal None
DIRECTIVES_WITHOUT_TITLE = ['math', 'meta', 'parsed-literal', 'line-block',
							'header', 'compound', 'highlights', 'pull-quote',
							'footer', 'epigraph', 'rubric', 'sectnum']

INCLUDABLE_DIRECTIVES = ['image', 'figure', 'include']

# Directives for Subsubsection Definition
DIRECTIVES_FOR_SUBSTITUTION = ['replace', 'unicode', 'date']

# http://www.pygal.org/en/stable/documentation/types/index.html
CHART_TYPES = ["Line", "StackedLine", "HorizontalLine", "Bar", "StackedBar", "HorizontalBar", "Histogram", "XY", "DateLine", "TimeLine", "TimeDeltaLine", "DateTimeLine", "Pie", "Radar", "Box", "Dot", "Funnel", "Gauge", "SolidGauge", "Pyramid", "Treemap"]

def real_filename(filename):
	"""pealeextension name off if possible
	# i.e. "foo.bar.png will return "foo.bar"
	"""
	return os.path.splitext(filename)[0]

def check_file_exist(rst_path, relative_path):
	"""
	For RST file, it can just include files as relative path.

	:param rst_path: absolute path to rst file
	:param relative_path: path related to rst file
	:return: relative file's absolute path if file exist
	"""
	abs_path = os.path.join(os.path.dirname(rst_path), relative_path)
	if os.path.isfile(abs_path):
		return abs_path

def	make_items(times, leading='+'):
	"""
	make lines with leading char multitimes

	:param: times, how many times you need
	:param: leading, leading character
	"""
	times = int(times)
	if leading == 1:
		msg = ""
		for x in range(1, times+1):
			msg += "%s. Item\n" % x
		return msg
	else:
		return ("%s Item\n" % leading) * times


def look_up_directives(regex, fpath):
	"""
	find all directive args in given file
	:param: regex, the regex that needs to match
	:param: path, to path to rst file

	:return: list, empty list if nothing match
	"""
	try:
		with open(fpath) as source:
			match = re.findall(regex, source.read())
	except IOError:
		match = []
	return match


def get_popular_code_type():
	"""
	find most popular code type in the given rst

	:param path: file to detect

	:return: string, most popular code type in file
	"""
	buf = "".join(vim.current.buffer)
	types = re.findall(r'[:|\.\.\s]code::?\s(\w+)', buf)
	try:
		popular_type = Counter(types).most_common()[0][0]
	except IndexError:
		popular_type = "lua" # Don't break default
	return popular_type]]
}


ls.add_snippets("rst", {
	s({trig = "part", descr = "(part) \"Part\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"rst", 1}, "snip.rv = display_width(t[1])*\'#\'", python_globals, args, snip, "", am[1]) end, ae(am[1])), nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 1}, "snip.rv = display_width(t[1])*\'#\'", python_globals, args, snip, "", am[1]) end, ae(am[1])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "chap", descr = "(chap) \"Chapter\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"rst", 2}, "snip.rv = display_width(t[1])*\'*\'", python_globals, args, snip, "", am[2]) end, ae(am[2])), nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 2}, "snip.rv = display_width(t[1])*\'*\'", python_globals, args, snip, "", am[2]) end, ae(am[2])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sec", descr = "(sec) \"Section\"", priority = -50, trigEngine = te("b")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 3}, "snip.rv = display_width(t[1])*\'=\'", python_globals, args, snip, "", am[3]) end, ae(am[3])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ssec", descr = "(ssec) \"Subsection\"", priority = -50, trigEngine = te("b")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 4}, "snip.rv = display_width(t[1])*\'-\'", python_globals, args, snip, "", am[4]) end, ae(am[4])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sssec", descr = "(sssec) \"Subsubsection\"", priority = -50, trigEngine = te("b")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 5}, "snip.rv = display_width(t[1])*\'^\'", python_globals, args, snip, "", am[5]) end, ae(am[5])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "para", descr = "(para) \"Paragraph\"", priority = -50, trigEngine = te("b")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), nl(),
		f(function(args, snip) return c_py({"rst", 6}, "snip.rv = display_width(t[1])*\'\"\'", python_globals, args, snip, "", am[6]) end, ae(am[6])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "em", descr = "(em) \"Emphasize string\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"rst", 7}, "\n# dirty but works with CJK character detection\nif has_cjk(vim.current.line):\n\tsnip.rv =\"\\ \"", python_globals, args, snip, "", am[7]) end, ae(am[7])), t"*", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"*", f(function(args, snip) return c_py({"rst", 7}, "\nif has_cjk(vim.current.line):\n\tsnip.rv =\"\\ \"\nelse:\n\tsnip.rv = \" \"\n", python_globals, args, snip, "", am[7]) end, ae(am[7])), i(0, "", {key = "i0"})
	}),
	s({trig = "st", descr = "(st) \"Strong string\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"rst", 8}, "\nif has_cjk(vim.current.line):\n\tsnip.rv =\"\\ \"", python_globals, args, snip, "", am[8]) end, ae(am[8])), t"**", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"**", f(function(args, snip) return c_py({"rst", 8}, "\nif has_cjk(vim.current.line):\n\tsnip.rv =\"\\ \"\nelse:\n\tsnip.rv = \" \"\n", python_globals, args, snip, "", am[8]) end, ae(am[8])), i(0, "", {key = "i0"})
	}),
	s({trig = "li(st)? (?P<num>\\d+)", descr = "(li(st)? (?P<num>\\d+)) \"List\"", priority = -50, trigEngine = te("br")}, {
		i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"rst", 9}, "\n# usage: li 4<tab>\n# which will extand into a unordered list contains 4 items\nsnip.rv = make_items(match.groupdict()[\'num\'])\n", python_globals, args, snip, "", am[9]) end, ae(am[9]))
	}),
	s({trig = "ol(st)? (?P<num>\\d+)", descr = "(ol(st)? (?P<num>\\d+)) \"Order List\"", priority = -50, trigEngine = te("br")}, {
		i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"rst", 10}, "\n# usage: ol 4<tab>\n# which will extand into a ordered list contains 4 items\nsnip.rv = make_items(match.groupdict()[\'num\'], 1)\n", python_globals, args, snip, "", am[10]) end, ae(am[10]))
	}),
	s({trig = "cb", descr = "(cb) \"Code Block\"", priority = -50, trigEngine = te("b")}, {
		t".. code-block:: ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"rst", 11}, "snip.rv = get_popular_code_type()", python_globals, args, snip, "", am[11])}, ""), {key = "i1"}) }) end), nl(),
		nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "id", descr = "(id) \"Includable Directives\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"rst", 12}, "\nreal_name=real_filename(os.path.basename(t[2]))\ndi=t[1][:2]\n\nlink=\"\"\ncontent=\"\"\n\nif di == \'im\':\n\tlink = \"|{0}|\".format(real_name)\n\nif di == \'fi\':\n\tcontent=\"\"\"\n\t:alt: {0}\n\n\t{0}\"\"\".format(real_name)\n", python_globals, args, snip, "", am[12]) end, ae(am[12])), nl(),
		t"..", f(function(args, snip) return c_py({"rst", 12}, "snip.rv = \" %s\" % link if link else \"\"", python_globals, args, snip, "", am[12]) end, ae(am[12])), t" ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 12}, "\nsnip.rv=complete(t[1], INCLUDABLE_DIRECTIVES)\n", python_globals, args, snip, "", am[12]) end, ae(am[12])), t":: ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), f(function(args, snip) return c_py({"rst", 12}, "\nif content:\n\tsnip.rv +=\"    \"+content", python_globals, args, snip, "", am[12]) end, ae(am[12])), nl(),
		f(function(args, snip) return c_py({"rst", 12}, "\n# Tip of whether file is exist in comment type\nif not check_file_exist(path, t[2]):\n\tsnip.rv=\'.. FILE {0} does not exist\'.format(t[2])\nelse:\n\tsnip.rv=\"\"\n", python_globals, args, snip, "", am[12]) end, ae(am[12])), i(0, "", {key = "i0"})
	}),
	s({trig = "di", descr = "(di) \"Directives\"", priority = -50, trigEngine = te("b")}, {
		t".. ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 13}, "snip.rv=complete(t[1], DIRECTIVES)", python_globals, args, snip, "", am[13]) end, ae(am[13])), t":: ", i(2, "", {key = "i2"}), nl(),
		nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "dt", descr = "(dt) \"Directives without title\"", priority = -50, trigEngine = te("b")}, {
		t".. ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 14}, "snip.rv=complete(t[1], DIRECTIVES_WITHOUT_TITLE)", python_globals, args, snip, "", am[14]) end, ae(am[14])), t"::", nl(),
		nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ds", descr = "(ds) \"Directives for subscription\"", priority = -50, trigEngine = te("b")}, {
		t".. |", i(1, "", {key = "i1"}), t"| ", i(2, "", {key = "i2"}), f(function(args, snip) return c_py({"rst", 15}, "snip.rv=complete(t[2], DIRECTIVES_FOR_SUBSTITUTION)", python_globals, args, snip, "", am[15]) end, ae(am[15])), t":: ", i(3, "Content", {key = "i3"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sa", descr = "(sa) \"Specific Admonitions\"", priority = -50, trigEngine = te("b")}, {
		t".. ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 16}, "snip.rv =complete(t[1], SPECIFIC_ADMONITIONS)", python_globals, args, snip, "", am[16]) end, ae(am[16])), t":: ", i(2, "", {key = "i2"}), nl(),
		nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ro", descr = "(ro) \"Text Roles\"", priority = -50, trigEngine = te("w")}, {
		t"\\ :", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 17}, "snip.rv=complete(t[1],\n\t\t\t\t\t\t\t   TEXT_ROLES+look_up_directives(TEXT_ROLES_REGEX,\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tpath))", python_globals, args, snip, "", am[17]) end, ae(am[17])), t":`", i(2, "", {key = "i2"}), t"`\\"
	}),
	s({trig = "eu", descr = "(eu) \"Embedded URI\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"rst", 18}, "\nif has_cjk(vim.current.line):\n\tsnip.rv = \"\\ \"", python_globals, args, snip, "", am[18]) end, ae(am[18])), t"`", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" <", i(2, "URI", {key = "i2"}), t">`_", f(function(args, snip) return c_py({"rst", 18}, "\nif has_cjk(vim.current.line):\n\tsnip.rv =\"\\ \"\nelse:\n\tsnip.rv = \"\"\n", python_globals, args, snip, "", am[18]) end, ae(am[18])), i(0, "", {key = "i0"})
	}),
	s({trig = "fnt", descr = "(fnt) \"Footnote or Citation\"", priority = -50, trigEngine = te("i")}, {
		t"[", i(1, "Label", {key = "i1"}), t"]_ ", i(0, "", {key = "i0"}), nl(),
		nl(),
		t".. [", cp(1), t"] ", i(2, "Reference", {key = "i2"})
	}),
	s({trig = "chart", descr = "(chart) \"Pygal chart for Nikola\"", priority = -50, trigEngine = te("b")}, {
		t".. chart:: ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"rst", 20}, "snip.rv=complete(t[1], CHART_TYPES)", python_globals, args, snip, "", am[20]) end, ae(am[20])), nl(),
		t"\t:title: \'", i(2, "Browser usage evolution (in %)", {key = "i2"}), t"\'", nl(),
		t"\t:x_labels: [", i(3, "\"2002\", \"2003\", \"2004\", \"2005\", \"2006\", \"2007\"", {key = "i3"}), t"]", nl(),
		nl(),
		t"\t\'Firefox\', [None, None, 0, 16.6, 25, 31]", nl(),
		t"\t\'Chrome\',  [None, None, None, None, None, None]", nl(),
		t"\t\'IE\',      [85.8, 84.6, 84.7, 74.5, 66, 58.6]", nl(),
		t"\t\'Others\',  [14.2, 15.4, 15.3, 8.9, 9, 10.4]", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sid", descr = "(sid) \"SideBar\"", priority = -50, trigEngine = te("b")}, {
		t".. sidebar:: ", i(1, "SideBar Title", {key = "i1"}), nl(),
		nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = ":", descr = "(:)", priority = -1000, trigEngine = te("w")}, {
		t":", i(1, "field name", {key = "i1"}), t": ", i(0, "", {key = "i0"})
	}),
	s({trig = "*", descr = "(*)", priority = -1000, trigEngine = te("w")}, {
		t"*", i(1, "Emphasis", {key = "i1"}), t"* ", i(0, "", {key = "i0"})
	}),
	s({trig = "**", descr = "(**)", priority = -1000, trigEngine = te("w")}, {
		t"**", i(1, "Strong emphasis", {key = "i1"}), t"** ", i(0, "", {key = "i0"})
	}),
	s({trig = "_", descr = "(_)", priority = -1000, trigEngine = te("w")}, {
		t"`", i(1, "hyperlink-name", {key = "i1"}), t"`_", nl(),
		t".. _`", cp(1), t"`: ", i(0, "link-block", {key = "i0"})
	}),
	s({trig = "=", descr = "(=)", priority = -1000, trigEngine = te("w")}, {
		i(1, "Title", {key = "i1"}), nl(),
		t"=====", i(2, "=", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "-", descr = "(-)", priority = -1000, trigEngine = te("w")}, {
		i(1, "Title", {key = "i1"}), nl(),
		t"-----", i(2, "-", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "img:", descr = "(img:)", priority = -1000, trigEngine = te("w")}, {
		t".. |", i(1, "alias", {key = "i1"}), t"| image:: ", i(0, "img", {key = "i0"})
	}),
	s({trig = "fig:", descr = "(fig:)", priority = -1000, trigEngine = te("w")}, {
		t".. figure:: ", i(1, "img", {key = "i1"}), nl(),
		t"\t:alt: ", i(2, "alter text", {key = "i2"}), nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "con:", descr = "(con:)", priority = -1000, trigEngine = te("w")}, {
		t".. contents:: ", i(1, "Table of Contents", {key = "i1"}), nl(),
		nl(),
		t"\t", i(0, "content", {key = "i0"})
	}),
	s({trig = "cod:", descr = "(cod:)", priority = -1000, trigEngine = te("w")}, {
		t".. code:: ", i(1, "type", {key = "i1"}), nl(),
		nl(),
		t"\t", i(0, "write some code", {key = "i0"})
	}),
	s({trig = "tip:", descr = "(tip:)", priority = -1000, trigEngine = te("w")}, {
		t".. tip::", nl(),
		t"\t", i(0, "my tips", {key = "i0"})
	}),
	s({trig = "not:", descr = "(not:)", priority = -1000, trigEngine = te("w")}, {
		t".. note::", nl(),
		t"\t", i(0, "my notes", {key = "i0"})
	}),
	s({trig = "war:", descr = "(war:)", priority = -1000, trigEngine = te("w")}, {
		t".. warning::", nl(),
		t"\t", i(0, "attention!", {key = "i0"})
	}),
	s({trig = "imp:", descr = "(imp:)", priority = -1000, trigEngine = te("w")}, {
		t".. important::", nl(),
		t"\t", i(0, "this is importatnt", {key = "i0"})
	}),
	s({trig = "att:", descr = "(att:)", priority = -1000, trigEngine = te("w")}, {
		t".. attention::", nl(),
		t"\t", i(0, "hey!", {key = "i0"})
	}),
	s({trig = "dan:", descr = "(dan:)", priority = -1000, trigEngine = te("w")}, {
		t".. danger::", nl(),
		t"\t", i(0, "ah!", {key = "i0"})
	}),
	s({trig = "err:", descr = "(err:)", priority = -1000, trigEngine = te("w")}, {
		t".. error::", nl(),
		t"\t", i(0, "Error occur", {key = "i0"})
	}),
	s({trig = "cau:", descr = "(cau:)", priority = -1000, trigEngine = te("w")}, {
		t".. caution::", nl(),
		t"\t", i(0, "Watch out!", {key = "i0"})
	}),
	s({trig = "sid:", descr = "(sid:)", priority = -1000, trigEngine = te("w")}, {
		t".. sidebar:: ", i(1, "Title", {key = "i1"}), nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "tod:", descr = "(tod:)", priority = -1000, trigEngine = te("w")}, {
		t".. todo::", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "lis:", descr = "(lis:)", priority = -1000, trigEngine = te("w")}, {
		t".. list-table:: ", i(1, "Title", {key = "i1"}), nl(),
		t"\t:header-rows: 1", nl(),
		t"\t:stub-columns: 0", nl(),
		nl(),
		t"\t* - ", i(0, "R1C1", {key = "i0"}), nl(),
		t"\t  - R1C2", nl(),
		t"\t* - R2C1", nl(),
		t"\t  - R2C2"
	}),
	s({trig = "csv:", descr = "(csv:)", priority = -1000, trigEngine = te("w")}, {
		t".. csv-table:: ", i(1, "Title", {key = "i1"}), nl(),
		t"\t:header-rows: 1", nl(),
		t"\t:stub-columns: 0", nl(),
		nl(),
		t"\t", i(0, "R1C1", {key = "i0"}), t", R1C2", nl(),
		t"\tR2C1, R2C2"
	}),
	s({trig = "toc:", descr = "(toc:)", priority = -1000, trigEngine = te("w")}, {
		t".. toctree::", nl(),
		t"\t:maxdepth: 2", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "dow:", descr = "(dow:)", priority = -1000, trigEngine = te("w")}, {
		t":download:`", i(1, "text", {key = "i1"}), t" <", i(0, "path", {key = "i0"}), t">`"
	}),
	s({trig = "ref:", descr = "(ref:)", priority = -1000, trigEngine = te("w")}, {
		t":ref:`", i(1, "text", {key = "i1"}), t" <", i(0, "path", {key = "i0"}), t">`"
	}),
	s({trig = "doc:", descr = "(doc:)", priority = -1000, trigEngine = te("w")}, {
		t":doc:`", i(1, "text", {key = "i1"}), t" <", i(0, "path", {key = "i0"}), t">`"
	}),
	s({trig = "*c", descr = "(*c)", priority = -1000, trigEngine = te("w")}, {
		t"\\ *", i(1, "Emphasis", {key = "i1"}), t"*\\ ", i(0, "", {key = "i0"})
	}),
	s({trig = "**c", descr = "(**c)", priority = -1000, trigEngine = te("w")}, {
		t"\\ **", i(1, "Strong emphasis", {key = "i1"}), t"**\\ ", i(0, "", {key = "i0"}), nl()
	}),
})
