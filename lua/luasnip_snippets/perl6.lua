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
	{},
	{},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
}
ls.add_snippets("perl6", {
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env perl6", nl()
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t" =>"
	}),
	s({trig = "sub", descr = "(sub)", priority = -1000, trigEngine = te("w")}, {
		t"sub ", i(1, "function_name", {key = "i1"}), t"(", i(2, "Str $var", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "mul", descr = "(mul)", priority = -1000, trigEngine = te("w")}, {
		t"multi ", i(1, "function_name", {key = "i1"}), t"(", i(2, "Str $var", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", nl(),
		t"else {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elsif ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "xif", descr = "(xif)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" if ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "xunless", descr = "(xunless)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" unless ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "tc", descr = "(tc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ?? ", i(2, "value-if-true", {key = "i2"}), t" !! ", i(3, "value-if-false", {key = "i3"}), t";"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"given ", i(1, "$var", {key = "i1"}), t" {", nl(),
		t"  when ", i(2, "", {key = "i2"}), t" {", nl(),
		t"\t  ", i(3, "# code block ...", {key = "i3"}), nl(),
		t"  }", nl(),
		t"  ", i(4, "", {key = "i4"}), nl(),
		t"  default {", nl(),
		t"\t  ", i(5, "", {key = "i5"}), nl(),
		t"  }", nl(),
		t"}"
	}),
	s({trig = "loop", descr = "(loop)", priority = -1000, trigEngine = te("w")}, {
		t"loop (my ", i(1, "$i", {key = "i1"}), t" = 0; $", cp(1), t" < ", i(2, "count", {key = "i2"}), t"; $", cp(1), t"++) {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "@array", {key = "i1"}), t" -> ", i(2, "$variable", {key = "i2"}), t" {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "rp", descr = "(rp)", priority = -1000, trigEngine = te("w")}, {
		t"repeat {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"} ", i(2, "while|until", {key = "i2"}), t" ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		i(1, "my", {key = "i1"}), t" class ", i(2, "ClassName", {key = "i2"}), t" ", i(3, "is|does Parent|Role", {key = "i3"}), t"{", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "has", descr = "(has)", priority = -1000, trigEngine = te("w")}, {
		t"has ", i(1, "Type", {key = "i1"}), t" ", i(2, "$!identifier", {key = "i2"}), t";"
	}),
	s({trig = "mth", descr = "(mth)", priority = -1000, trigEngine = te("w")}, {
		t"method ", i(1, "method_name", {key = "i1"}), t"(", i(2, "$attr", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "pmth", descr = "(pmth)", priority = -1000, trigEngine = te("w")}, {
		t"method ", i(1, "!", {key = "i1"}), i(2, "method_name", {key = "i2"}), t"(", i(3, "$attr", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "smth", descr = "(smth)", priority = -1000, trigEngine = te("w")}, {
		t"submethod ", i(1, "submethod_name", {key = "i1"}), t"(", i(2, "$attr", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"use v6;", nl(),
		t"use Test;", nl(),
		i(1, "use lib \'lib\';", {key = "i1"}), nl(),
		nl(),
		t"plan ", i(2, "$num-tests", {key = "i2"}), t";", nl()
	}),
	s({trig = "slurp", descr = "(slurp)", priority = -1000, trigEngine = te("w")}, {
		t"my ", i(1, "$var", {key = "i1"}), t" = \"", i(2, "filename", {key = "i2"}), t"\".IO.slurp;"
	}),
	s({trig = "rfile", descr = "(rfile)", priority = -1000, trigEngine = te("w")}, {
		t"for \"", i(1, "filename", {key = "i1"}), t"\".IO.lines -> $line {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "open", descr = "(open)", priority = -1000, trigEngine = te("w")}, {
		t"my $fh = open \"", i(1, "filename", {key = "i1"}), t"\", ", i(2, ":r|:w|:a", {key = "i2"}), t";", nl(),
		i(3, "# actions", {key = "i3"}), t";", nl(),
		t"$fh.close;"
	}),
})
