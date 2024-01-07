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
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{1, 2, 3, 4},
	{0, 1, 2},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2, 3},
	{1, 2},
	{0, 1},
	{},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1, 2},
}
ls.add_snippets("tcl", {
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env tclsh", nl()
	}),
	s({trig = "pro", descr = "(pro)", priority = -1000, trigEngine = te("w")}, {
		t"proc ", i(1, "function_name", {key = "i1"}), t" {", i(2, "args", {key = "i2"}), t"} {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "xif", descr = "(xif)", priority = -1000, trigEngine = te("w")}, {
		i(1, "expr", {key = "i1"}), t"? ", i(2, "true", {key = "i2"}), t" : ", i(0, "false", {key = "i0"})
	}),
	s({trig = "if", descr = "(if) \"if... (if)\"", priority = -50, trigEngine = te("b")}, {
		t"if {", i(1, "condition", {key = "i1"}), t"} {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if {", i(1, "", {key = "i1"}), t"} {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} else {", nl(),
		t"\t", i(0, "# else...", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elseif {", i(1, "", {key = "i1"}), t"} {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifee", descr = "(ifee)", priority = -1000, trigEngine = te("w")}, {
		t"if {", i(1, "", {key = "i1"}), t"} {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} elseif {", i(3, "", {key = "i3"}), t"} {", nl(),
		t"\t", i(4, "# elsif...", {key = "i4"}), nl(),
		t"} else {", nl(),
		t"\t", i(0, "# else...", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifc", descr = "(ifc)", priority = -1000, trigEngine = te("w")}, {
		t"if { [catch {", i(1, "#do something...", {key = "i1"}), t"} ", i(2, "err", {key = "i2"}), t"] } {", nl(),
		t"\t", i(0, "# handle failure...", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "catch", descr = "(catch)", priority = -1000, trigEngine = te("w")}, {
		t"catch {", i(1, "", {key = "i1"}), t"} ", i(2, "err", {key = "i2"}), t" ", i(0, "options", {key = "i0"})
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while {", i(1, "", {key = "i1"}), t"} {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for) \"for... (for)\"", priority = -50, trigEngine = te("b")}, {
		t"for {", i(1, "set i 0", {key = "i1"}), t"} {", i(2, "$i < $n", {key = "i2"}), t"} {", i(3, "incr i", {key = "i3"}), t"} {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}", nl()
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"foreach ", i(1, "x", {key = "i1"}), t" {", i(2, "#list", {key = "i2"}), t"} {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "af", descr = "(af)", priority = -1000, trigEngine = te("w")}, {
		t"after ", i(1, "ms", {key = "i1"}), t" ", i(0, "#do something", {key = "i0"})
	}),
	s({trig = "afc", descr = "(afc)", priority = -1000, trigEngine = te("w")}, {
		t"after cancel ", i(0, "id or script", {key = "i0"})
	}),
	s({trig = "afi", descr = "(afi)", priority = -1000, trigEngine = te("w")}, {
		t"after idle ", i(0, "script", {key = "i0"})
	}),
	s({trig = "afin", descr = "(afin)", priority = -1000, trigEngine = te("w")}, {
		t"after info ", i(0, "id", {key = "i0"})
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"expr {", i(0, "#expression here", {key = "i0"}), t"}"
	}),
	s({trig = "sw", descr = "(sw)", priority = -1000, trigEngine = te("w")}, {
		t"switch ", i(1, "var", {key = "i1"}), t" {", nl(),
		t"\t", i(3, "pattern 1", {key = "i3"}), t" {", nl(),
		t"\t\t", i(0, "#do something", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"\tdefault {", nl(),
		t"\t\t", i(2, "#do something", {key = "i2"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ca", descr = "(ca)", priority = -1000, trigEngine = te("w")}, {
		i(1, "pattern", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "#do something", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ns", descr = "(ns)", priority = -1000, trigEngine = te("w")}, {
		t"namespace eval ", i(1, "path", {key = "i1"}), t" {", i(0, "#script...", {key = "i0"}), t"}"
	}),
	s({trig = "nsc", descr = "(nsc)", priority = -1000, trigEngine = te("w")}, {
		t"namespace current"
	}),
	s({trig = "foreach", descr = "(foreach) \"foreach... (foreach)\"", priority = -50, trigEngine = te("")}, {
		t"foreach ", i(1, "var", {key = "i1"}), t" ", i(2, "$list", {key = "i2"}), t" {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "proc", descr = "(proc) \"proc... (proc)\"", priority = -50, trigEngine = te("b")}, {
		t"proc ", i(1, "name", {key = "i1"}), t" {", i(2, "args", {key = "i2"}), t"} \\", nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "switch", descr = "(switch) \"switch... (switch)\"", priority = -50, trigEngine = te("b")}, {
		t"switch ", i(1, "-exact", {key = "i1"}), t" -- ", i(2, "$var", {key = "i2"}), t" {", nl(),
		t"\t", i(3, "match", {key = "i3"}), t" {", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t}", nl(),
		t"\tdefault {", i(5, "", {key = "i5"}), t"}", nl(),
		t"}", nl()
	}),
	s({trig = "while", descr = "(while) \"while... (while)\"", priority = -50, trigEngine = te("b")}, {
		t"while {", i(1, "condition", {key = "i1"}), t"} {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", nl()
	}),
})
