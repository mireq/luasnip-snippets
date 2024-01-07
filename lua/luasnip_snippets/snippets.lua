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
	{0, 1, 2},
	{},
	{0, 1},
	{0, 1, 2, 3},
	{0},
	{1, 2, 3},
}
ls.add_snippets("snippets", {
	s({trig = "snip", descr = "(snip)", priority = -1000, trigEngine = te("w")}, {
		t"snippet ", i(1, "trigger", {key = "i1"}), t" \"", i(2, "description", {key = "i2"}), t"\"", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "v", descr = "(v)", priority = -1000, trigEngine = te("w")}, {
		t"{VISUAL}"
	}),
	s({trig = "$", descr = "($)", priority = -1000, trigEngine = te("w")}, {
		t"${", i(1, "1", {key = "i1"}), t":", i(0, "text", {key = "i0"}), t"}"
	}),
	s({trig = "usnip", descr = "(usnip) \"Ultisnips snippet definition\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"snippets", 4}, "snip.rv = \"snippet\"", python_globals, args, snip, "", am[4]) end, ae(am[4])), t" ", i(1, "Tab_trigger", {key = "i1"}), t" \"", i(2, "Description", {key = "i2"}), t"\" ", i(3, "b", {key = "i3"}), nl(),
		d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		f(function(args, snip) return c_py({"snippets", 4}, "snip.rv = \"endsnippet\"", python_globals, args, snip, "", am[4]) end, ae(am[4]))
	}),
	s({trig = "global", descr = "(global) \"Global snippet\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"snippets", 5}, "snip.rv = \"global\"", python_globals, args, snip, "", am[5]) end, ae(am[5])), t" !p", nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		f(function(args, snip) return c_py({"snippets", 5}, "snip.rv = \"endglobal\"", python_globals, args, snip, "", am[5]) end, ae(am[5]))
	}),
	s({trig = "vis", descr = "(vis) \"${VISUAL}\"", priority = -50, trigEngine = te("i")}, {
		t"${VISUAL", d(1, function(args) return sn(nil, {i(1, "default", {key = "i2"}), i(2, "/transform/", {key = "i3"})}) end, {}, {key = "i1"}), t"}"
	}),
})
