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
	0,
	0,
	0,
	2,
	2,
	3,
	3,
	2,
}
ls.add_snippets("texmath", {
	s({trig = "eqnn", descr = "(eqnn) \"Equation without a number\"", priority = -50, trigEngine = te("b")}, {
		t"\\begin{equation*}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{equation*}"
	}),
	s({trig = "al", descr = "(al) \"Align\"", priority = -50, trigEngine = te("b")}, {
		t"\\begin{align}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{align}"
	}),
	s({trig = "alnn", descr = "(alnn) \"Align without a number\"", priority = -50, trigEngine = te("b")}, {
		t"\\begin{align*}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{align*}"
	}),
	s({trig = "eqa", descr = "(eqa) \"Equation array\"", priority = -50, trigEngine = te("b")}, {
		t"\\begin{eqnarray}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), t" & ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i2"}) }) end), t" & ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i3"}) }) end), nl(),
		t"\\end{eqnarray}"
	}),
	s({trig = "eqann", descr = "(eqann) \"Equation array without a number\"", priority = -50, trigEngine = te("b")}, {
		t"\\begin{eqnarray*}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), t" & ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i2"}) }) end), t" & ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i3"}) }) end), nl(),
		t"\\end{eqnarray*}"
	}),
	s({trig = "dv", descr = "(dv) \"Derivative\"", priority = -50, trigEngine = te("w")}, {
		t"\\dv[", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"]{", i(2, "", {key = "i2"}), t"}{", i(3, "", {key = "i3"}), t"}"
	}),
	s({trig = "pdv", descr = "(pdv) \"Partial Derivative\"", priority = -50, trigEngine = te("w")}, {
		t"\\pdv[", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"]{", i(2, "", {key = "i2"}), t"}{", i(3, "", {key = "i3"}), t"}"
	}),
	s({trig = "SI", descr = "(SI) \"SI-Unit\"", priority = -50, trigEngine = te("w")}, {
		t"\\SI{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}{", i(2, "", {key = "i2"}), t"}"
	}),
})
