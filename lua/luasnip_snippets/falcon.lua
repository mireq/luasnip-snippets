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


ls.add_snippets("falcon", {
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env falcon"
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "module", {key = "i0"})
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "function_name", {key = "i2"}), t"(", i(2, "", {key = "i3"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "class_name", {key = "i1"}), t"(", i(2, "class_params", {key = "i2"}), t")", nl(),
		t"\t", i(0, "/* members/methods */", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", cp(1), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"else", nl(),
		t"    ", i(1, "", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elif ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch ", i(1, "expression", {key = "i1"}), nl(),
		t"\tcase ", i(2, "item", {key = "i2"}), nl(),
		t"\tcase ", i(0, "item", {key = "i0"}), nl(),
		t"\tdefault", nl(),
		t"end"
	}),
	s({trig = "select", descr = "(select)", priority = -1000, trigEngine = te("w")}, {
		t"select ", i(1, "variable", {key = "i1"}), nl(),
		t"\tcase ", i(2, "TypeSpec", {key = "i2"}), nl(),
		t"\tcase ", i(0, "TypeSpec", {key = "i0"}), nl(),
		t"\tdefault", nl(),
		t"end"
	}),
	s({trig = "forin", descr = "(forin)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "element", {key = "i1"}), t" in ", i(2, "container", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "forto", descr = "(forto)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "lowerbound", {key = "i1"}), t" to ", i(2, "upperbound", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "conidition", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
})
