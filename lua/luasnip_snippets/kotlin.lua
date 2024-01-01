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
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
}
ls.add_snippets("kotlin", {
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"fun ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "String", {key = "i3"}), t" {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "pfun", descr = "(pfun)", priority = -1000, trigEngine = te("w")}, {
		t"private fun ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "String", {key = "i3"}), t" {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"@JvmStatic", nl(),
		t"fun main(args: Array<String>) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ret", descr = "(ret)", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"})
	}),
	s({trig = "whe", descr = "(whe)", priority = -1000, trigEngine = te("w")}, {
		t"when (", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), t" -> ", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "cla", descr = "(cla)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "cobj", descr = "(cobj)", priority = -1000, trigEngine = te("w")}, {
		t"companion object {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "obj", descr = "(obj)", priority = -1000, trigEngine = te("w")}, {
		t"object ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
})
