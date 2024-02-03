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
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{1, 2},
}

local python_globals = {
	[[def compB(t, opts):
	if t:
		opts = [m[len(t):] for m in opts if m.startswith(t)]
	if len(opts) == 1:
		return opts[0]
	return "(" + '|'.join(opts) + ')']]
}


ls.add_snippets("json", {
	s({trig = "s", descr = "(s) \"String\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(1, "key", {key = "i1"}), t"\": \"", i(0, "value", {key = "i0"}), t"\","
	}),
	s({trig = "n", descr = "(n) \"Number\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(1, "key", {key = "i1"}), t"\": ", i(0, "value", {key = "i0"}), t","
	}),
	s({trig = "a", descr = "(a) \"Array\"", priority = -50, trigEngine = te("b")}, {
		t"[", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"],"
	}),
	s({trig = "na", descr = "(na) \"Named array\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(1, "key", {key = "i1"}), t"\": [", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"],"
	}),
	s({trig = "o", descr = "(o) \"Object\"", priority = -50, trigEngine = te("b")}, {
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"},"
	}),
	s({trig = "no", descr = "(no) \"Named object\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(1, "key", {key = "i1"}), t"\": {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"},"
	}),
	s({trig = "null", descr = "(null) \"Null\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(0, "key", {key = "i0"}), t"\": null,"
	}),
	s({trig = "b", descr = "(b) \"Bool\"", priority = -50, trigEngine = te("b")}, {
		t"\"", i(1, "key", {key = "i1"}), t"\": ", i(2, "", {key = "i2"}), f(function(args, snip) return c_py({"json", 8}, "snip.rv=compB(t[2], [\'true\', \'false\'])", python_globals, args, snip, "", am[8]) end, ae(am[8])), t","
	}),
})
