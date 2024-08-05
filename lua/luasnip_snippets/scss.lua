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
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


ls.add_snippets("scss", {
	s({trig = "$", descr = "($)", priority = -1000, trigEngine = te("w")}, {
		t"$", i(1, "variable", {key = "i1"}), t": ", i(0, "value", {key = "i0"}), t";"
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"@import \'", i(0, "", {key = "i0"}), t"\';"
	}),
	s({trig = "mix", descr = "(mix)", priority = -1000, trigEngine = te("w")}, {
		t"@mixin ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "inc", descr = "(inc)", priority = -1000, trigEngine = te("w")}, {
		t"@include ", i(1, "mixin", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "ext", descr = "(ext)", priority = -1000, trigEngine = te("w")}, {
		t"@extend ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"@function ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"@if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"@if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} @else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"@else if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"@for ", i(1, "$i", {key = "i1"}), t" from ", i(2, "1", {key = "i2"}), t" through ", i(3, "3", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "each", descr = "(each)", priority = -1000, trigEngine = te("w")}, {
		t"@each ", i(1, "$item", {key = "i1"}), t" in ", i(2, "items", {key = "i2"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "while", descr = "(while)", priority = -1000, trigEngine = te("w")}, {
		t"@while ", i(1, "$i", {key = "i1"}), t" ", i(2, ">", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "rc", descr = "(rc)", priority = -1000, trigEngine = te("w")}, {
		t"rem-calc(", i(1, "", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "ain", descr = "(ain) \"ainline\"", priority = 0, trigEngine = te("")}, {
		t"&:after {", nl(),
		t"\tcontent: \"\";", nl(),
		t"\tdisplay: inline-block;", nl(),
		t"\tvertical-align: middle;", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "bin", descr = "(bin) \"binline\"", priority = 0, trigEngine = te("")}, {
		t"&:before {", nl(),
		t"\tcontent: \"\";", nl(),
		t"\tdisplay: inline-block;", nl(),
		t"\tvertical-align: middle;", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
})
