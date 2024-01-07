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
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
}
ls.add_snippets("alpaca", {
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "http", {key = "i0"})
	}),
	s({trig = "impt", descr = "(impt)", priority = -1000, trigEngine = te("w")}, {
		t"import type ", i(0, "option.option", {key = "i0"})
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"export ", i(0, "", {key = "i0"})
	}),
	s({trig = "expt", descr = "(expt)", priority = -1000, trigEngine = te("w")}, {
		t"export ", i(0, "", {key = "i0"})
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"val ", i(1, "fn", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t": fn ", i(3, "\'a", {key = "i3"}), t" -> ", i(4, "\'a", {key = "i4"}), nl(),
		t"let ", cp(1), t" ", i(5, "", {key = "i5"}), t" =", nl(),
		t"\t", d(6, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "mat", descr = "(mat)", priority = -1000, trigEngine = te("w")}, {
		t"match ", i(1, "", {key = "i1"}), t" with", nl(),
		t"| ", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "-", descr = "(-)", priority = -1000, trigEngine = te("w")}, {
		t"| ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t" in", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "letf", descr = "(letf)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "ty", descr = "(ty)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "msg", {key = "i1"}), nl(),
		t"\t= ", i(0, "", {key = "i0"})
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"test \"", i(1, "", {key = "i1"}), t"\" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"{-| ", i(0, "", {key = "i0"}), nl(),
		t"-}"
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"})
	}),
	s({trig = "ae", descr = "(ae)", priority = -1000, trigEngine = te("w")}, {
		t"assert.equal ", i(0, "", {key = "i0"})
	}),
})
