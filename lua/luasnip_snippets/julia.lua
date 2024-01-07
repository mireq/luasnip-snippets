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
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3, 4, 5, 10},
	{0, 1, 2},
	{0, 1, 2},
	{},
	{},
}
ls.add_snippets("julia", {
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env julia", nl()
	}),
	s({trig = "fun", descr = "(fun) function definition", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "ret", descr = "(ret) return", priority = -1000, trigEngine = te("w")}, {
		t"return(", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "pr", descr = "(pr) print", priority = -1000, trigEngine = te("w")}, {
		t"print(\"", i(1, "", {key = "i1"}), t"\")", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "prl", descr = "(prl) print line", priority = -1000, trigEngine = te("w")}, {
		t"println(\"", i(1, "", {key = "i1"}), t"\")", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "use", descr = "(use) load a package", priority = -1000, trigEngine = te("w")}, {
		t"using ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "incl", descr = "(incl) include source code", priority = -1000, trigEngine = te("w")}, {
		t"include(\"", i(1, "", {key = "i1"}), t"\")", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "forc", descr = "(forc) for loop iterating over iterable container", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "for", descr = "(for) standard for loop", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "fornest", descr = "(fornest) nested for loop", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t", ", i(3, "", {key = "i3"}), t" = ", i(4, "", {key = "i4"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "wh", descr = "(wh) while loop", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), t" ", i(2, "<=", {key = "i2"}), t" ", i(3, "", {key = "i3"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "if", descr = "(if) if statement", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "el", descr = "(el) else part of statement", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "eif", descr = "(eif) else if part of if statement", priority = -1000, trigEngine = te("w")}, {
		t"else if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "ife", descr = "(ife) full if-else statement", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "tern", descr = "(tern) ternary operator", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(3, "nothing", {key = "i3"}), nl()
	}),
	s({trig = "try", descr = "(try) try catch", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"catch ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "fin", descr = "(fin) finally statement", priority = -1000, trigEngine = te("w")}, {
		t"finally", nl(),
		t"\t", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "thr", descr = "(thr) throw", priority = -1000, trigEngine = te("w")}, {
		t"throw(", i(1, "", {key = "i1"}), t")", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "@i", descr = "(@i)", priority = -1000, trigEngine = te("w")}, {
		t"@info \"", i(1, "", {key = "i1"}), t"\" ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "@w", descr = "(@w)", priority = -1000, trigEngine = te("w")}, {
		t"@warn \"", i(1, "", {key = "i1"}), t"\" ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "@e", descr = "(@e)", priority = -1000, trigEngine = te("w")}, {
		t"@error \"", i(1, "", {key = "i1"}), t"\" ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "@d", descr = "(@d)", priority = -1000, trigEngine = te("w")}, {
		t"@debug \"", i(1, "", {key = "i1"}), t"\" ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "@t", descr = "(@t) @testset with @test", priority = -1000, trigEngine = te("w")}, {
		t"@testset \"", i(1, "", {key = "i1"}), t"\" begin", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\t@test ", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "@tt", descr = "(@tt) @testset with @test_throws", priority = -1000, trigEngine = te("w")}, {
		t"@testset \"", i(1, "", {key = "i1"}), t"\" begin", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\t@test_throws ", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "docf", descr = "(docf) \"function documentation\"", priority = 0, trigEngine = te("b")}, {
		t"#\' @description", nl(),
		t"#\'", nl(),
		t"#\' ", i(1, "function description", {key = "i1"}), nl(),
		t"#\'", nl(),
		t"#\' ", d(2, function(args) return sn(nil, {t"@param ", i(1, "name", {key = "i3"}), t"::", i(2, "Type", {key = "i4"}), t" ", i(3, "Description", {key = "i5"})}) end, {}, {key = "i2"}), nl(),
		t"#\'", nl(),
		t"#\' ", d(3, function(args) return sn(nil, {t"@returns ", i(1, "name", {key = "i7"}), t"::", i(2, "Type", {key = "i8"}), t" ", i(3, "Description", {key = "i9"})}) end, {}, {key = "i6"}), nl(),
		t"#\'", nl(),
		t"#\' @examples", nl(),
		t"#\'", nl(),
		t"#\' ", i(4, " function call examples", {key = "i10"})
	}),
	s({trig = "doct", descr = "(doct) \"type definition\"", priority = 0, trigEngine = te("b")}, {
		t"#\' @description", nl(),
		t"#\'", nl(),
		t"#\' ", i(1, "type description", {key = "i1"}), nl(),
		t"#\'", nl(),
		t"#\' ", d(2, function(args) return sn(nil, {t"@field ", i(1, "name", {key = "i3"}), t"::", i(2, "Type", {key = "i4"}), t" ", i(3, "Description", {key = "i5"})}) end, {}, {key = "i2"}), nl(),
		t"#\'", nl(),
		t"#\' @examples", nl(),
		t"#\'", nl(),
		t"#\' ", i(3, " constructor examples", {key = "i10"})
	}),
	s({trig = "par", descr = "(par) \"function parameter documentation\"", priority = 0, trigEngine = te("b")}, {
		t"#\' @param ", i(1, "name", {key = "i1"}), t"::", i(2, "Type", {key = "i2"}), t" ", i(0, "Description", {key = "i0"})
	}),
	s({trig = "fld", descr = "(fld) \"type field documentation\"", priority = 0, trigEngine = te("b")}, {
		t"#\' @field ", i(1, "name", {key = "i1"}), t"::", i(2, "Type", {key = "i2"}), t" ", i(0, "Description", {key = "i0"})
	}),
	s({trig = "deb", descr = "(deb) \"Debugger breakpoint\"", priority = 0, trigEngine = te("b")}, {
		t"Main.@bp"
	}),
	s({trig = "inf", descr = "(inf) \"Infiltrator breakpoint\"", priority = 0, trigEngine = te("b")}, {
		t"Main.@infiltrate"
	}),
})
