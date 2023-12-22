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
local su = require("luasnip_snippets.snip_utils")
local cp = su.copy
local tr = su.transform
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
	2,
	{{1, 2}},
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	{{1, 2}, {2, 4}, {3, 5}},
	0,
}

local python_globals = {
	[[from vimsnippets import foldmarker, make_box, get_comment_format
LOREM = """
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod \
tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At \
vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, \
no sea takimata sanctus est Lorem ipsum dolor sit amet.
"""]]
}


ls.add_snippets("all", {
	s({trig = "box", descr = "(box) \"A nice box with the current comment symbol\"", priority = -60, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"all", 1}, "\nbox = make_box(len(t[1]))\nsnip.rv = box[0]\nsnip += box[1]\n", python_globals, args, snip, "", am[1]) end, ae(am[1])), d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), f(function(args, snip) return c_py({"all", 1}, "\nbox = make_box(len(t[1]))\nsnip.rv = box[2]\nsnip += box[3]", python_globals, args, snip, "", am[1]) end, ae(am[1])), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "bbox", descr = "(bbox) \"A nice box over the full width\"", priority = -60, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"all", 2}, "\nif not snip.c:\n\twidth = int(vim.eval(\"&textwidth - (virtcol(\'.\') == 1 ? 0 : virtcol(\'.\'))\")) or 71\nbox = make_box(len(t[1]), width)\nsnip.rv = box[0]\nsnip += box[1]\n", python_globals, args, snip, "", am[2]) end, ae(am[2])), d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), f(function(args, snip) return c_py({"all", 2}, "\nbox = make_box(len(t[1]), width)\nsnip.rv = box[2]\nsnip += box[3]", python_globals, args, snip, "", am[2]) end, ae(am[2])), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "fold", descr = "(fold) \"Insert a vim fold marker\"", priority = -60, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"all", 3}, "snip.rv = get_comment_format()[0]", python_globals, args, snip, "", am[3]) end, ae(am[3])), t" ", i(1, "Fold description", {key = "i1"}), t" ", f(function(args, snip) return c_py({"all", 3}, "snip.rv = foldmarker()[0]", python_globals, args, snip, "", am[3]) end, ae(am[3])), i(2, "1", {key = "i2"}), t" ", f(function(args, snip) return c_py({"all", 3}, "snip.rv = get_comment_format()[2]", python_globals, args, snip, "", am[3]) end, ae(am[3]))
	}),
	s({trig = "foldc", descr = "(foldc) \"Insert a vim fold close marker\"", priority = -60, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"all", 4}, "snip.rv = get_comment_format()[0]", python_globals, args, snip, "", am[4]) end, ae(am[4])), t" ", i(1, "1", {key = "i1"}), f(function(args, snip) return c_py({"all", 4}, "snip.rv = foldmarker()[1]", python_globals, args, snip, "", am[4]) end, ae(am[4])), t" ", f(function(args, snip) return c_py({"all", 4}, "snip.rv = get_comment_format()[2]", python_globals, args, snip, "", am[4]) end, ae(am[4]))
	}),
	s({trig = "foldp", descr = "(foldp) \"Insert a vim fold marker pair\"", priority = -60, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"all", 5}, "snip.rv = get_comment_format()[0]", python_globals, args, snip, "", am[5]) end, ae(am[5])), t" ", i(1, "Fold description", {key = "i1"}), t" ", f(function(args, snip) return c_py({"all", 5}, "snip.rv = foldmarker()[0]", python_globals, args, snip, "", am[5]) end, ae(am[5])), t" ", f(function(args, snip) return c_py({"all", 5}, "snip.rv = get_comment_format()[2]", python_globals, args, snip, "", am[5]) end, ae(am[5])), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), nl(),
		f(function(args, snip) return c_py({"all", 5}, "snip.rv = get_comment_format()[0]", python_globals, args, snip, "", am[5]) end, ae(am[5])), t" ", f(function(args, snip) return c_py({"all", 5}, "snip.rv = foldmarker()[1]", python_globals, args, snip, "", am[5]) end, ae(am[5])), t" ", cp(1), t" ", f(function(args, snip) return c_py({"all", 5}, "snip.rv = get_comment_format()[2]", python_globals, args, snip, "", am[5]) end, ae(am[5]))
	}),
	s({trig = "lorem(([1-4])?[0-9])?", descr = "(lorem(([1-4])?[0-9])?) \"Lorem Ipsum\"", priority = -60, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"all", 6}, "snip.rv = \" \".join(LOREM.split()[:int(match.group(1))]) if match.group(1) else LOREM", python_globals, args, snip, "", am[6]) end, ae(am[6]))
	}),
	s({trig = "modeline", descr = "(modeline) \"Vim modeline\"", priority = -60, trigEngine = te("")}, {
		t"vim", f(function(args, snip) return c_viml("\':set \'. (&expandtab ? printf(\'et sw=%i ts=%i\', &sw, &ts) : printf(\'noet sts=%i sw=%i ts=%i\', &sts, &sw, &ts)) . (&tw ? \' tw=\'. &tw : \'\') . \':\'") end, ae(am[7]))
	}),
	s({trig = "date", descr = "(date) \"YYYY-MM-DD\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d\")") end, ae(am[8]))
	}),
	s({trig = "ddate", descr = "(ddate) \"Month DD, YYYY\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%b %d, %Y\")") end, ae(am[9]))
	}),
	s({trig = "diso", descr = "(diso) \"ISO format datetime\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d %H:%M:%S%z\")") end, ae(am[10]))
	}),
	s({trig = "time", descr = "(time) \"hh:mm\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%H:%M\")") end, ae(am[11]))
	}),
	s({trig = "datetime", descr = "(datetime) \"YYYY-MM-DD hh:mm\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d %H:%M\")") end, ae(am[12]))
	}),
	s({trig = "todo", descr = "(todo) \"TODO comment\"", priority = -60, trigEngine = te("bw")}, {
		f(function(args, snip) return c_py({"all", 13}, "snip.rv=get_comment_format()[0]", python_globals, args, snip, "", am[13]) end, ae(am[13])), t" ", i(1, "TODO", {key = "i1"}), t": ", i(0, "", {key = "i0"}), t" <", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\'%d-%m-%y\')")}, " "), {key = "i4"}) }) end), d(3, function(args, snip) return sn(nil, { i(1, jt({", ", c_viml("g:snips_author")}, " "), {key = "i5"}) }) end), t">", t" ", f(function(args, snip) return c_py({"all", 13}, "snip.rv=get_comment_format()[2]", python_globals, args, snip, "", am[13]) end, ae(am[13]))
	}),
	s({trig = "uuid", descr = "(uuid) \"Random UUID\"", priority = -60, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"all", 14}, "if not snip.c: import uuid; snip.rv = str(uuid.uuid4())", python_globals, args, snip, "", am[14]) end, ae(am[14]))
	}),
})
