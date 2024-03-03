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


ls.add_snippets("lua", {
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env lua\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env lua", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "local", descr = "(local) \"local x = 1\"", priority = -50, trigEngine = te("")}, {
		t"local ", i(1, "x", {key = "i1"}), t" = ", i(0, "1", {key = "i0"})
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "fname", {key = "i1"}), t"(", i(2, "...", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "for", descr = "(for) \"numeric for loop\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "i", {key = "i1"}), t"=", i(2, "first", {key = "i2"}), t",", i(3, "last", {key = "i3"}), tr(4, "^..*", "(?0:,:)"), i(4, "step", {key = "i4"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "forp", descr = "(forp) \"pair for loop\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "name", {key = "i1"}), t",", i(2, "val", {key = "i2"}), t" in pairs(", i(3, "table_name", {key = "i3"}), t") do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "fori", descr = "(fori) \"ipair for foop\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "idx", {key = "i1"}), t",", i(2, "val", {key = "i2"}), t" in ipairs(", i(3, "table_name", {key = "i3"}), t") do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "if", descr = "(if) \"if statement\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "ife", descr = "(ife) \"if/else statement\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "elif", descr = "(elif)", priority = -1000, trigEngine = te("w")}, {
		t"elseif ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "repeat", descr = "(repeat) \"repeat loop\"", priority = -50, trigEngine = te("b")}, {
		t"repeat", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"until ", i(0, "", {key = "i0"})
	}),
	s({trig = "while", descr = "(while) \"while loop\"", priority = -50, trigEngine = te("b")}, {
		t"while ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "true", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wht", descr = "(wht)", priority = -1000, trigEngine = te("w")}, {
		t"while true do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "print", descr = "(print)", priority = -1000, trigEngine = te("w")}, {
		t"print(\"", i(1, "string", {key = "i1"}), t"\")"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"print(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "prs", descr = "(prs)", priority = -1000, trigEngine = te("w")}, {
		t"print(\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "prf", descr = "(prf)", priority = -1000, trigEngine = te("w")}, {
		t"print(string.format(\"", i(1, "%s", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t"))"
	}),
	s({trig = "wr", descr = "(wr)", priority = -1000, trigEngine = te("w")}, {
		t"io.write(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "wrs", descr = "(wrs)", priority = -1000, trigEngine = te("w")}, {
		t"io.write(\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "wrf", descr = "(wrf)", priority = -1000, trigEngine = te("w")}, {
		t"io.write(string.format(\"", i(1, "%s", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t"))"
	}),
	s({trig = "fwr", descr = "(fwr)", priority = -1000, trigEngine = te("w")}, {
		t"io.", i(1, "stderr", {key = "i1"}), t":write(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "fwrs", descr = "(fwrs)", priority = -1000, trigEngine = te("w")}, {
		t"io.", i(1, "stderr", {key = "i1"}), t":write(\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "fwrf", descr = "(fwrf)", priority = -1000, trigEngine = te("w")}, {
		t"io.", i(1, "stderr", {key = "i1"}), t":write(string.format(\"", i(2, "%s", {key = "i2"}), t"\"", i(0, "", {key = "i0"}), t"))"
	}),
	s({trig = "req", descr = "(req) \"Require\"", priority = -50, trigEngine = te("b")}, {
		t"require(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "assert", descr = "(assert) \"Assertion\"", priority = -50, trigEngine = te("b")}, {
		t"assert(", i(1, "condition", {key = "i1"}), f(function(args, snip) return c_py({"lua", 25}, "\nif t[2]:\n\tsnip.rv = \", \"\nelse:\n\tsnip.rv = \"\"\n", python_globals, args, snip, "", {2}) end, {k"i2"}), i(2, "msg", {key = "i2"}), t")"
	}),
	s({trig = "fun(ction)?", descr = "(fun(ction)?) \"New function\"", priority = -50, trigEngine = te("br")}, {
		t"function ", i(1, "new_function", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "do", descr = "(do) \"do block\"", priority = -50, trigEngine = te("")}, {
		t"do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eif", descr = "(eif) \"if/elseif statement\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"elseif ", i(3, "", {key = "i3"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eife", descr = "(eife) \"if/elseif/else statement\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"elseif ", i(3, "", {key = "i3"}), t" then", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "pcall", descr = "(pcall) \"pcall statement\"", priority = -50, trigEngine = te("b")}, {
		t"local ok, err = pcall(", i(1, "your_function", {key = "i1"}), t")", nl(),
		t"if not ok then", nl(),
		t"\thandler(", i(2, "ok, err", {key = "i2"}), t")", nl(),
		c(3, {{t"else", nl(),
		t"\tsuccess(", i(1, "ok, err", {key = "i4"}), t")", nl()}, {i(1, jt({"else", "\n", "\tsuccess(", "ok, err", ")", "\n"}))}}, {key = "i3"}), t"end"
	}),
	s({trig = "use", descr = "(use) \"Use\"", priority = -50, trigEngine = te("b")}, {
		t"use { \'", i(1, "", {key = "i1"}), t"\' }"
	}),
})
