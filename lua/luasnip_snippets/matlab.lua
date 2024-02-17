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
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{1, 2, 3, 4, 5},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
}
ls.add_snippets("matlab", {
	s({trig = "if", descr = "(if) if", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "ife", descr = "(ife) if ... else", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "el", descr = "(el) else", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "eif", descr = "(eif) elsif", priority = -1000, trigEngine = te("w")}, {
		t"elseif ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "wh", descr = "(wh) while", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "for", descr = "(for) for", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" = ", i(2, "1:n", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "parfor", descr = "(parfor) parfor", priority = -1000, trigEngine = te("w")}, {
		t"parfor ", i(1, "i", {key = "i1"}), t" = ", i(2, "1:n", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "fun", descr = "(fun) function", priority = -1000, trigEngine = te("w")}, {
		t"function [", i(3, "out", {key = "i3"}), t"] = ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1\", \"fun_name\")")}, ""), {key = "i1"}) }) end), t"(", i(2, "", {key = "i2"}), t") ", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "try", descr = "(try) try ... catch", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"catch ", i(2, "err", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "switch", descr = "(switch) \"switch ... otherwise\"", priority = -50, trigEngine = te("")}, {
		t"switch ", i(1, "n", {key = "i1"}), nl(),
		t"\tcase ", i(2, "0", {key = "i2"}), nl(),
		t"\t\t", i(3, "", {key = "i3"}), c(4, {{nl(),
		t"\totherwise", nl(),
		t"\t\t", i(1, "", {key = "i5"}), t"\t\t${5"}, {i(1, jt({"\n", "\totherwise", "\n", "\t\t", "", "\t\t${5"}))}}, {key = "i4"}), nl(),
		t"end"
	}),
	s({trig = "@", descr = "(@) anonymous function", priority = -1000, trigEngine = te("w")}, {
		t"@(", i(1, "x", {key = "i1"}), t") ", i(0, "x*x", {key = "i0"}), nl()
	}),
	s({trig = "cl", descr = "(cl) class", priority = -1000, trigEngine = te("w")}, {
		t"classdef ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1\", \"class_name\")")}, ""), {key = "i1"}) }) end), nl(),
		t"   properties", nl(),
		t"\t  ", i(2, "", {key = "i2"}), nl(),
		t"   end", nl(),
		t"   methods", nl(),
		t"\t  ", i(0, "", {key = "i0"}), nl(),
		t"   end", nl(),
		t"end"
	}),
	s({trig = "clc", descr = "(clc) \"class with constructor\"", priority = -50, trigEngine = te("b")}, {
		t"classdef ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"matlab", 13}, "\nsnip.rv = snip.basename or \"class_name\"", python_globals, args, snip, "", am[13]), "ss_name\""}, ""), {key = "i1"}) }) end), t" ", nl(),
		t"\tproperties", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\tend", nl(),
		t"\tmethods", nl(),
		t"\t\tfunction obj = ", cp(1), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"\t\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\tend", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
})
