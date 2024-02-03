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
	{1},
	{1},
	{},
	{},
	{},
	{},
	{},
	{},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3},
	{1},
	{1},
	{1},
	{1},
	{0, 1},
	{0, 1},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2},
	{0},
	{1, 2, 3, 4, 5, 7},
	{1, 2, 3},
	{0, 1, 2, 3, 4},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3, 4, 5},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{0, 1, 2, 3},
	{1, 2, 3},
	{},
	{},
	{},
	{},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{1, 2},
	{},
	{},
	{},
	{0, 1},
	{0, 1},
	{1, 2},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1, 2},
	{1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{},
	{},
	{},
	{1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{},
	{},
	{},
	{},
	{1, 2},
	{0, 1, 2, 3},
	{1},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{},
	{},
	{},
	{},
	{},
	{1, 2},
	{1},
	{},
	{},
	{},
	{},
	{},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{1},
	{1, 2},
	{1, 2, 3},
	{0, 1},
	{1, 2},
	{1, 2, 3, 4},
	{1, 2},
	{0},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1},
	{1, 2},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3},
	{1},
	{1, 2},
	{1},
	{1, 2},
	{1, 2},
	{1, 2, 3},
}
ls.add_snippets("d", {
	s({trig = "imp", descr = "(imp) \"import (imp)\"", priority = -50, trigEngine = te("b")}, {
		t"import ", i(1, "std.stdio", {key = "i1"}), t";"
	}),
	s({trig = "pimp", descr = "(pimp) \"public import (pimp)\"", priority = -50, trigEngine = te("b")}, {
		t"public import ", i(1, "/*module*/", {key = "i1"}), t";"
	}),
	s({trig = "io", descr = "(io)", priority = -1000, trigEngine = te("w")}, {
		t"std.stdio"
	}),
	s({trig = "traits", descr = "(traits)", priority = -1000, trigEngine = te("w")}, {
		t"std.traits"
	}),
	s({trig = "conv", descr = "(conv)", priority = -1000, trigEngine = te("w")}, {
		t"std.conv"
	}),
	s({trig = "arr", descr = "(arr)", priority = -1000, trigEngine = te("w")}, {
		t"std.array"
	}),
	s({trig = "algo", descr = "(algo)", priority = -1000, trigEngine = te("w")}, {
		t"std.algorithm"
	}),
	s({trig = "theusual", descr = "(theusual)", priority = -1000, trigEngine = te("w")}, {
		t"import std.stdio, std.string, std.array;", nl(),
		t"import std.traits, std.conv, std.algorithm;", nl(),
		t"import std.math, std.regex;"
	}),
	s({trig = "for", descr = "(for) \"for (for)\"", priority = -50, trigEngine = te("b")}, {
		t"for (", i(4, "size_t", {key = "i4"}), t" ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", d(3, function(args) return sn(nil, {t"++", cp(2)}) end, {}, {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fe", descr = "(fe)", priority = -1000, trigEngine = te("w")}, {
		t"foreach(", i(1, "elem", {key = "i1"}), t"; ", i(2, "range", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fei", descr = "(fei)", priority = -1000, trigEngine = te("w")}, {
		t"foreach(", i(1, "i", {key = "i1"}), t", ", i(2, "elem", {key = "i2"}), t"; ", i(3, "range", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"} "
	}),
	s({trig = "fer", descr = "(fer)", priority = -1000, trigEngine = te("w")}, {
		t"foreach_reverse(", i(1, "elem", {key = "i1"}), t"; ", i(2, "range", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"} "
	}),
	s({trig = "feri", descr = "(feri)", priority = -1000, trigEngine = te("w")}, {
		t"foreach_reverse(", i(1, "i", {key = "i1"}), t", ", i(2, "elem", {key = "i2"}), t"; ", i(3, "range", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"  ", nl(),
		t"}"
	}),
	s({trig = "sce", descr = "(sce)", priority = -1000, trigEngine = te("w")}, {
		t"scope(exit) ", i(1, "f.close();", {key = "i1"})
	}),
	s({trig = "scs", descr = "(scs)", priority = -1000, trigEngine = te("w")}, {
		t"scope(success) ", i(1, "", {key = "i1"})
	}),
	s({trig = "scf", descr = "(scf)", priority = -1000, trigEngine = te("w")}, {
		t"scope(failure) ", i(1, "", {key = "i1"})
	}),
	s({trig = "el", descr = "(el) \"else (el)\"", priority = -50, trigEngine = te("b")}, {
		t"else", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"else if(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if) \"if .. (if)\"", priority = -50, trigEngine = te("")}, {
		t"if(", i(1, "/*condition*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if .. else (ife)\"", priority = -50, trigEngine = te("b")}, {
		t"if(", i(1, "/*condition*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", nl(),
		t"else", nl(),
		t"{", nl(),
		t"\t", i(3, "/*else*/", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "ifee", descr = "(ifee)", priority = -1000, trigEngine = te("w")}, {
		t"if(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), t"\t", nl(),
		t"} else if(", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"} else {", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "sw", descr = "(sw) \"switch (sw)\"", priority = -50, trigEngine = te("")}, {
		t"switch(", i(1, "/*var*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\tcase ", i(2, "/*value*/", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\tbreak;", nl(),
		t"\tcase ", i(4, "/*value*/", {key = "i4"}), t":", nl(),
		t"\t\t", i(5, "", {key = "i5"}), nl(),
		t"\t\tbreak;", nl(),
		t"\t", i(7, "/*more cases*/", {key = "i7"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(6, "assert(false);", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "cs", descr = "(cs)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "0", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\tbreak;"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fsw", descr = "(fsw) \"final switch (fsw)\"", priority = -50, trigEngine = te("")}, {
		t"final switch(", i(1, "/*var*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\tcase ", i(2, "/*value*/", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\tbreak;", nl(),
		t"\tcase ", i(4, "/*value*/", {key = "i4"}), t":", nl(),
		t"\t\t", i(5, "", {key = "i5"}), nl(),
		t"\t\tbreak;", nl(),
		t"\t", i(6, "/*more cases*/", {key = "i7"}), nl(),
		t"}"
	}),
	s({trig = "try", descr = "(try) \"try/catch (try)\"", priority = -50, trigEngine = te("b")}, {
		t"try", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "/*code to try*/", {key = "i1"}), nl(),
		t"}", nl(),
		t"catch(", i(2, "", {key = "i2"}), t"Exception e)", nl(),
		t"{", nl(),
		t"\t", i(3, "/*handle exception*/", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "tcf", descr = "(tcf)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(5, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch(", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"} finally {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) \"while (wh)\"", priority = -50, trigEngine = te("b")}, {
		t"while(", i(1, "/*condition*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "dowh", descr = "(dowh)", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"} while(", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "sif", descr = "(sif)", priority = -1000, trigEngine = te("w")}, {
		t"static if(", i(1, "cond", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "sife", descr = "(sife)", priority = -1000, trigEngine = te("w")}, {
		t"static if(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} else {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "sifee", descr = "(sifee)", priority = -1000, trigEngine = te("w")}, {
		t"static if(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} else static if(", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"} else {", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "seif", descr = "(seif)", priority = -1000, trigEngine = te("w")}, {
		t"else static if(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} "
	}),
	s({trig = "?", descr = "(?)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, " a > b", {key = "i1"}), t") ? ", i(2, "a", {key = "i2"}), t" : ", i(3, "b", {key = "i3"}), t"; "
	}),
	s({trig = "with", descr = "(with) \"with (with)\"", priority = -50, trigEngine = te("")}, {
		t"with(", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "fun", descr = "(fun) \"function definition (fun)\"", priority = -50, trigEngine = te("")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "/*function name*/", {key = "i2"}), t"(", i(3, "/*args*/", {key = "i3"}), t") ", i(4, "@safe pure nothrow", {key = "i4"}), nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "contr", descr = "(contr)", priority = -1000, trigEngine = te("w")}, {
		t"in {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"} out {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} body {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "l", descr = "(l)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "x", {key = "i1"}), t") => ", i(2, "x", {key = "i2"}), i(0, ";", {key = "i0"})
	}),
	s({trig = "funl", descr = "(funl)", priority = -1000, trigEngine = te("w")}, {
		t"function (", i(1, "int x", {key = "i1"}), t") => ", i(2, "", {key = "i2"}), i(3, ";", {key = "i3"})
	}),
	s({trig = "del", descr = "(del)", priority = -1000, trigEngine = te("w")}, {
		t"delegate (", i(1, "int x", {key = "i1"}), t") => ", i(2, "", {key = "i2"}), i(3, ";", {key = "i3"}), t" "
	}),
	s({trig = "temp", descr = "(temp) \"template (temp)\"", priority = -50, trigEngine = te("b")}, {
		t"template ", i(2, "/*name*/", {key = "i2"}), t"(", i(1, "/*args*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "tempif", descr = "(tempif)", priority = -1000, trigEngine = te("w")}, {
		t"template ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$2\", \"untitled\")")}, ""), {key = "i1"}) }) end), t"(", i(2, "T", {key = "i2"}), t") if(", i(3, "isSomeString!", {key = "i3"}), cp(2), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"}"
	}),
	s({trig = "opApply", descr = "(opApply) \"opApply (opApply)\"", priority = -50, trigEngine = te("b")}, {
		t"int opApply(int delegate(ref ", i(1, "/*iterated type/s*/", {key = "i1"}), t") dg)", nl(),
		t"{", nl(),
		t"\tint result = 0;", nl(),
		t"\t", i(2, "/*loop*/", {key = "i2"}), nl(),
		t"\t{", nl(),
		t"\t\tresult = dg(", i(3, "/*arg/s*/", {key = "i3"}), t");", nl(),
		t"\t\tif(result){break;}", nl(),
		t"\t}", nl(),
		t"\treturn result;", nl(),
		t"}"
	}),
	s({trig = "psn", descr = "(psn)", priority = -1000, trigEngine = te("w")}, {
		t"pure @safe nothrow"
	}),
	s({trig = "safe", descr = "(safe)", priority = -1000, trigEngine = te("w")}, {
		t"@safe"
	}),
	s({trig = "trusted", descr = "(trusted)", priority = -1000, trigEngine = te("w")}, {
		t"@trusted"
	}),
	s({trig = "system", descr = "(system)", priority = -1000, trigEngine = te("w")}, {
		t"@system"
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"class", i(1, "(T)", {key = "i1"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$3\", \"untitled\")")}, ""), {key = "i2"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"}"
	}),
	s({trig = "str", descr = "(str)", priority = -1000, trigEngine = te("w")}, {
		t"struct", i(1, "(T)", {key = "i1"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$3\", \"untitled\")")}, ""), {key = "i2"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"}"
	}),
	s({trig = "uni", descr = "(uni)", priority = -1000, trigEngine = te("w")}, {
		t"union", i(1, "(T)", {key = "i1"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$3\", \"untitled\")")}, ""), {key = "i2"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), t"\t", nl(),
		t"}"
	}),
	s({trig = "inter", descr = "(inter) \"interface (inter)\"", priority = -50, trigEngine = te("")}, {
		t"interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"d", 51}, "snip.rv = (snip.basename or \"name\")", python_globals, args, snip, "", am[51])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "enum", descr = "(enum) \"enum (enum)\"", priority = -50, trigEngine = te("")}, {
		t"enum ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"d", 52}, "snip.rv = (snip.basename or \"name\")", python_globals, args, snip, "", am[52])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "pu", descr = "(pu)", priority = -1000, trigEngine = te("w")}, {
		t"public"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"private"
	}),
	s({trig = "po", descr = "(po)", priority = -1000, trigEngine = te("w")}, {
		t"protected"
	}),
	s({trig = "ctor", descr = "(ctor)", priority = -1000, trigEngine = te("w")}, {
		t"this(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} "
	}),
	s({trig = "dtor", descr = "(dtor)", priority = -1000, trigEngine = te("w")}, {
		t"~this(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "al", descr = "(al) \"alias (al)\"", priority = -50, trigEngine = te("")}, {
		t"alias ", i(1, "/*orig*/", {key = "i1"}), t" ", i(2, "/*alias*/", {key = "i2"}), t";"
	}),
	s({trig = "alth", descr = "(alth)", priority = -1000, trigEngine = te("w")}, {
		t"alias ", i(1, "value", {key = "i1"}), t" this;", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "main", descr = "(main) \"Main\"", priority = -50, trigEngine = te("b")}, {
		t"void main(string[] args)", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, " /*code*/", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "maina", descr = "(maina)", priority = -1000, trigEngine = te("w")}, {
		t"void main(string[] args) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", i(1, "main", {key = "i1"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "var", descr = "(var)", priority = -1000, trigEngine = te("w")}, {
		i(1, "auto", {key = "i1"}), t" ", i(2, "var", {key = "i2"}), t" = ", i(0, "1", {key = "i0"}), t";"
	}),
	s({trig = "new", descr = "(new) \"new (new)\"", priority = -50, trigEngine = te("")}, {
		t"new ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "file", descr = "(file)", priority = -1000, trigEngine = te("w")}, {
		t"auto ", i(1, "f", {key = "i1"}), t" = File(", i(2, "\"useful_info.xml\"", {key = "i2"}), t", ", i(3, "\"rw\"", {key = "i3"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"map!(", i(1, "f", {key = "i1"}), t")(", i(2, "xs", {key = "i2"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		t"filter!(", i(1, "p", {key = "i1"}), t")(", i(2, "xs", {key = "i2"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "reduce", descr = "(reduce)", priority = -1000, trigEngine = te("w")}, {
		t"reduce!(", i(1, "f", {key = "i1"}), t")(", i(2, "xs", {key = "i2"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "find", descr = "(find)", priority = -1000, trigEngine = te("w")}, {
		t"find!(", i(1, "p", {key = "i1"}), t")(", i(2, "", {key = "i2"}), t":xs);", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "aa", descr = "(aa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "int", {key = "i1"}), t"[", i(2, "string", {key = "i2"}), t"] ", i(3, "dict", {key = "i3"}), t" = ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env rdmd"
	}),
	s({trig = "bang", descr = "(bang)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env rdmd"
	}),
	s({trig = "rdmd", descr = "(rdmd)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env rdmd"
	}),
	s({trig = "isstr", descr = "(isstr)", priority = -1000, trigEngine = te("w")}, {
		t"isSomeString!", i(1, "S", {key = "i1"})
	}),
	s({trig = "isnum", descr = "(isnum)", priority = -1000, trigEngine = te("w")}, {
		t"isNumeric!", i(1, "N", {key = "i1"})
	}),
	s({trig = "tos", descr = "(tos)", priority = -1000, trigEngine = te("w")}, {
		t"to!string(", i(1, "x", {key = "i1"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "toi", descr = "(toi)", priority = -1000, trigEngine = te("w")}, {
		t"to!int(", i(1, "str", {key = "i1"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tod", descr = "(tod)", priority = -1000, trigEngine = te("w")}, {
		t"to!double(", i(1, "str", {key = "i1"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "un", descr = "(un)", priority = -1000, trigEngine = te("w")}, {
		t"unittest {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ver", descr = "(ver)", priority = -1000, trigEngine = te("w")}, {
		t"version(", i(1, "Posix", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "de", descr = "(de)", priority = -1000, trigEngine = te("w")}, {
		t"debug {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "sst", descr = "(sst)", priority = -1000, trigEngine = te("w")}, {
		t"shared static this(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "td", descr = "(td)", priority = -1000, trigEngine = te("w")}, {
		t"// Typedef is deprecated. Use alias instead.", nl(),
		t"typedef"
	}),
	s({trig = "ino", descr = "(ino)", priority = -1000, trigEngine = te("w")}, {
		t"inout"
	}),
	s({trig = "imm", descr = "(imm)", priority = -1000, trigEngine = te("w")}, {
		t"immutable"
	}),
	s({trig = "fin", descr = "(fin)", priority = -1000, trigEngine = te("w")}, {
		t"final"
	}),
	s({trig = "con", descr = "(con) \"const (con)\"", priority = -50, trigEngine = te("b")}, {
		t"const ", i(1, "/*variable*/", {key = "i1"}), t" = ", i(2, "/*value*/", {key = "i2"}), t";"
	}),
	s({trig = "psi", descr = "(psi)", priority = -1000, trigEngine = te("w")}, {
		t"private static immutable ", i(1, "int", {key = "i1"}), t" ", i(2, "Constant", {key = "i2"}), t" = ", i(3, "1", {key = "i3"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "prag", descr = "(prag)", priority = -1000, trigEngine = te("w")}, {
		t"pragma(", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "pms", descr = "(pms)", priority = -1000, trigEngine = te("w")}, {
		t"pragma(msg, ", i(1, "Warning", {key = "i1"}), t");"
	}),
	s({trig = "asm", descr = "(asm)", priority = -1000, trigEngine = te("w")}, {
		t"asm {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "mixin", descr = "(mixin) \"mixin (mixin)\"", priority = -50, trigEngine = te("b")}, {
		t"mixin ", i(1, "/*mixed_in*/", {key = "i1"}), t" ", i(2, "/*name*/", {key = "i2"}), t";"
	}),
	s({trig = "over", descr = "(over) \"override (over)\"", priority = -50, trigEngine = te("b")}, {
		t"override ", i(1, "/*function*/", {key = "i1"})
	}),
	s({trig = "ret", descr = "(ret) \"return (ret)\"", priority = -50, trigEngine = te("")}, {
		t"return ", i(1, "/*value to return*/", {key = "i1"}), t";"
	}),
	s({trig = "FILE", descr = "(FILE)", priority = -1000, trigEngine = te("w")}, {
		t"__FILE__"
	}),
	s({trig = "MOD", descr = "(MOD)", priority = -1000, trigEngine = te("w")}, {
		t"__MODULE__"
	}),
	s({trig = "LINE", descr = "(LINE)", priority = -1000, trigEngine = te("w")}, {
		t"__LINE__"
	}),
	s({trig = "FUN", descr = "(FUN)", priority = -1000, trigEngine = te("w")}, {
		t"__FUNCTION__"
	}),
	s({trig = "PF", descr = "(PF)", priority = -1000, trigEngine = te("w")}, {
		t"__PRETTY_FUNCTION__"
	}),
	s({trig = "cast", descr = "(cast)", priority = -1000, trigEngine = te("w")}, {
		t"cast(", i(1, "T", {key = "i1"}), t")(", i(2, "val", {key = "i2"}), t");"
	}),
	s({trig = "/*", descr = "(/*)", priority = -1000, trigEngine = te("w")}, {
		t"/*", nl(),
		t" * ", i(1, "", {key = "i1"}), nl(),
		t"*/"
	}),
	s({trig = "idk", descr = "(idk)", priority = -1000, trigEngine = te("w")}, {
		t"// I don\'t know how this works. Don\'t touch it."
	}),
	s({trig = "idfk", descr = "(idfk)", priority = -1000, trigEngine = te("w")}, {
		t"// Don\'t FUCKING touch this."
	}),
	s({trig = "scpn", descr = "(scpn) \"@safe const pure nothrow (scpn)\"", priority = -50, trigEngine = te("")}, {
		t"@safe const pure nothrow"
	}),
	s({trig = "spn", descr = "(spn) \"@safe pure nothrow (spn)\"", priority = -50, trigEngine = te("")}, {
		t"@safe pure nothrow"
	}),
	s({trig = "cont", descr = "(cont) \"continue (cont)\"", priority = -50, trigEngine = te("")}, {
		t"continue;"
	}),
	s({trig = "dis", descr = "(dis) \"@disable (dis)\"", priority = -50, trigEngine = te("b")}, {
		t"@disable ", i(1, "/*method*/", {key = "i1"}), t";"
	}),
	s({trig = "pub", descr = "(pub) \"public (pub)\"", priority = -50, trigEngine = te("b")}, {
		t"public:", nl(),
		t"\t", i(1, "/*members*/", {key = "i1"})
	}),
	s({trig = "priv", descr = "(priv) \"private (priv)\"", priority = -50, trigEngine = te("b")}, {
		t"private:", nl(),
		t"\t", i(1, "/*members*/", {key = "i1"})
	}),
	s({trig = "prot", descr = "(prot) \"protected (prot)\"", priority = -50, trigEngine = te("b")}, {
		t"protected:", nl(),
		t"\t", i(1, "/*members*/", {key = "i1"})
	}),
	s({trig = "pack", descr = "(pack) \"package (pack)\"", priority = -50, trigEngine = te("b")}, {
		t"package:", nl(),
		t"\t", i(1, "/*members*/", {key = "i1"})
	}),
	s({trig = "auto", descr = "(auto) \"auto (auto)\"", priority = -50, trigEngine = te("b")}, {
		t"auto ", i(1, "/*variable*/", {key = "i1"}), t" = ", i(2, "/*value*/", {key = "i2"}), t";"
	}),
	s({trig = "siz", descr = "(siz) \"size_t (siz)\"", priority = -50, trigEngine = te("b")}, {
		t"size_t ", i(1, "/*variable*/", {key = "i1"}), t" = ", i(2, "/*value*/", {key = "i2"}), t";"
	}),
	s({trig = "sup", descr = "(sup) \"super (sup)\"", priority = -50, trigEngine = te("b")}, {
		t"super(", i(1, "/*args*/", {key = "i1"}), t");"
	}),
	s({trig = "tup", descr = "(tup) \"tuple (tup)\"", priority = -50, trigEngine = te("")}, {
		t"tuple(", i(1, "/*args*/", {key = "i1"}), t")"
	}),
	s({trig = "wr", descr = "(wr) \"writeln (wr)\"", priority = -50, trigEngine = te("")}, {
		t"writeln(", i(1, "/*args*/", {key = "i1"}), t");"
	}),
	s({trig = "to", descr = "(to) \"to (to)\"", priority = -50, trigEngine = te("")}, {
		t"to!(", i(1, "/*type*/", {key = "i1"}), t")(", i(2, "/*arg*/", {key = "i2"}), t")"
	}),
	s({trig = "enf", descr = "(enf) \"enforce (enf)\"", priority = -50, trigEngine = te("b")}, {
		t"enforce(", i(1, "/*condition*/", {key = "i1"}), t",", nl(),
		t"\tnew ", i(2, "", {key = "i2"}), t"Exception(", i(3, "/*args*/", {key = "i3"}), t"));"
	}),
	s({trig = "elif", descr = "(elif) \"else if (elif)\"", priority = -50, trigEngine = te("b")}, {
		t"else if(", i(1, "/*condition*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) \"case (case)\"", priority = -50, trigEngine = te("b")}, {
		t"case ", i(1, "/*value*/", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\tbreak;"
	}),
	s({trig = "?:", descr = "(?:) \"ternary operator (?:)\"", priority = -50, trigEngine = te("")}, {
		i(1, "/*condition*/", {key = "i1"}), t" ? ", i(2, "/*then*/", {key = "i2"}), t" : ", i(3, "/*else*/", {key = "i3"}), i(4, "", {key = "i4"})
	}),
	s({trig = "do", descr = "(do) \"do while (do)\"", priority = -50, trigEngine = te("b")}, {
		t"do", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"} while(", i(1, "/*condition*/", {key = "i1"}), t");"
	}),
	s({trig = "forever", descr = "(forever) \"forever (forever)\"", priority = -50, trigEngine = te("b")}, {
		t"for(;;)", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore) \"foreach (fore)\"", priority = -50, trigEngine = te("")}, {
		t"foreach(", i(1, "/*elem*/", {key = "i1"}), t"; ", i(2, "/*range*/", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "forif", descr = "(forif) \"foreach if (forif)\"", priority = -50, trigEngine = te("b")}, {
		t"foreach(", i(1, "/*elem*/", {key = "i1"}), t"; ", i(2, "/*range*/", {key = "i2"}), t") if(", i(3, "/*condition*/", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "in", descr = "(in) \"in contract (in)\"", priority = -50, trigEngine = te("b")}, {
		t"in", nl(),
		t"{", nl(),
		t"\tassert(", i(1, "/*condition*/", {key = "i1"}), t", \"", i(2, "error message", {key = "i2"}), t"\");", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}", nl(),
		t"body"
	}),
	s({trig = "out", descr = "(out) \"out contract (out)\"", priority = -50, trigEngine = te("b")}, {
		t"out", i(1, "(result)", {key = "i1"}), nl(),
		t"{", nl(),
		t"\tassert(", i(2, "/*condition*/", {key = "i2"}), t", \"", i(3, "error message", {key = "i3"}), t"\");", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}", nl(),
		t"body"
	}),
	s({trig = "inv", descr = "(inv) \"invariant (inv)\"", priority = -50, trigEngine = te("b")}, {
		t"invariant()", nl(),
		t"{", nl(),
		t"\tassert(", i(1, "/*condition*/", {key = "i1"}), t", \"", i(2, "error message", {key = "i2"}), t"\");", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "void", descr = "(void) \"void function definition (void)\"", priority = -50, trigEngine = te("")}, {
		t"void ", i(1, "/*function name*/", {key = "i1"}), t"(", i(2, "/*args*/", {key = "i2"}), t") ", i(3, "@safe pure nothrow", {key = "i3"}), nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "this", descr = "(this) \"ctor (this)\"", priority = -50, trigEngine = te("w")}, {
		t"this(", i(1, "/*args*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "get", descr = "(get) \"getter property (get)\"", priority = -50, trigEngine = te("")}, {
		t"@property ", i(1, "/*type*/", {key = "i1"}), t" ", i(2, "/*member_name*/", {key = "i2"}), t"() const pure nothrow {return ", d(3, function(args) return sn(nil, {cp(2), t"_"}) end, {}, {key = "i3"}), t";}"
	}),
	s({trig = "set", descr = "(set) \"setter property (set)\"", priority = -50, trigEngine = te("")}, {
		t"@property void ", i(1, "/*member_name*/", {key = "i1"}), t"(", i(2, "/*type*/", {key = "i2"}), t" rhs) pure nothrow {", d(3, function(args) return sn(nil, {cp(1), t"_"}) end, {}, {key = "i3"}), t" = rhs;}"
	}),
	s({trig = "signal", descr = "(signal) \"signal (signal)\"", priority = -50, trigEngine = te("b")}, {
		t"mixin Signal!(", i(1, "/*args*/", {key = "i1"}), t") ", i(2, "/*name*/", {key = "i2"}), t";"
	}),
	s({trig = "scope", descr = "(scope) \"scope (scope)\"", priority = -50, trigEngine = te("b")}, {
		t"scope(", i(1, "exit", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf) \"try/catch/finally (tryf)\"", priority = -50, trigEngine = te("b")}, {
		t"try", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "/*code to try*/", {key = "i1"}), nl(),
		t"}", nl(),
		t"catch(", i(2, "", {key = "i2"}), t"Exception e)", nl(),
		t"{", nl(),
		t"\t", i(3, "/*handle exception*/", {key = "i3"}), nl(),
		t"}", nl(),
		t"finally", nl(),
		t"{", nl(),
		t"\t", i(4, "/*cleanup*/", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "catch", descr = "(catch) \"catch (catch)\"", priority = -50, trigEngine = te("b")}, {
		t"catch(", i(1, "", {key = "i1"}), t"Exception e)", nl(),
		t"{", nl(),
		t"\t", i(2, "/*handle exception*/", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "thr", descr = "(thr) \"throw (thr)\"", priority = -50, trigEngine = te("")}, {
		t"throw new ", i(1, "", {key = "i1"}), t"Exception(\"", i(2, "", {key = "i2"}), t"\");"
	}),
	s({trig = "struct", descr = "(struct) \"struct (struct)\"", priority = -50, trigEngine = te("")}, {
		t"struct ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"d", 138}, "snip.rv = (snip.basename or \"name\")", python_globals, args, snip, "", am[138])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "union", descr = "(union) \"union (union)\"", priority = -50, trigEngine = te("")}, {
		t"union ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"d", 139}, "snip.rv = (snip.basename or \"name\")", python_globals, args, snip, "", am[139])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "class", descr = "(class) \"class (class)\"", priority = -50, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"d", 140}, "snip.rv = (snip.basename or \"name\")", python_globals, args, snip, "", am[140])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "exc", descr = "(exc) \"exception declaration (exc)\"", priority = -50, trigEngine = te("b")}, {
		t"/// ", i(3, "/*documentation*/", {key = "i3"}), nl(),
		t"class ", i(1, "", {key = "i1"}), t"Exception : ", i(2, "", {key = "i2"}), t"Exception", nl(),
		t"{", nl(),
		t"\tpublic this(string msg, string file = __FILE__, int line = __LINE__)", nl(),
		t"\t{", nl(),
		t"\t\tsuper(msg, file, line);", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "version", descr = "(version) \"version (version)\"", priority = -50, trigEngine = te("b")}, {
		t"version(", i(1, "/*version name*/", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "debug", descr = "(debug) \"debug\"", priority = -50, trigEngine = te("b")}, {
		t"debug", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "ass", descr = "(ass) \"assert (ass)\"", priority = -50, trigEngine = te("b")}, {
		t"assert(", i(1, "false", {key = "i1"}), t", \"", i(2, "TODO", {key = "i2"}), t"\");", nl()
	}),
	s({trig = "unittest", descr = "(unittest) \"unittest (unittest)\"", priority = -50, trigEngine = te("b")}, {
		t"unittest", nl(),
		t"{", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "opDis", descr = "(opDis) \"opDispatch (opDis)\"", priority = -50, trigEngine = te("b")}, {
		i(1, "/*return type*/", {key = "i1"}), t" opDispatch(string s)()", nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), t";", nl(),
		t"}"
	}),
	s({trig = "op=", descr = "(op=) \"opAssign (op=)\"", priority = -50, trigEngine = te("b")}, {
		t"void opAssign(", i(1, "", {key = "i1"}), t" rhs) ", i(2, "@safe pure nothrow", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", cp(2), nl(),
		t"}"
	}),
	s({trig = "opCmp", descr = "(opCmp) \"opCmp (opCmp)\"", priority = -50, trigEngine = te("b")}, {
		t"int opCmp(", i(1, "", {key = "i1"}), t" rhs) @safe const pure nothrow", nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "toString", descr = "(toString) \"toString (toString)\"", priority = -50, trigEngine = te("b")}, {
		t"string toString() @safe const pure nothrow", nl(),
		t"{", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "todo", descr = "(todo) \"TODO (todo)\"", priority = -50, trigEngine = te("")}, {
		t"// TODO: ", i(1, "", {key = "i1"})
	}),
	s({trig = "doc", descr = "(doc) \"generic ddoc block (doc)\"", priority = -50, trigEngine = te("b")}, {
		t"/// ", i(1, "description", {key = "i1"}), nl(),
		t"///", nl(),
		t"/// ", i(2, "details", {key = "i2"})
	}),
	s({trig = "fdoc", descr = "(fdoc) \"function ddoc block (fdoc)\"", priority = -50, trigEngine = te("b")}, {
		t"/// ", i(1, "description", {key = "i1"}), nl(),
		t"///", nl(),
		t"/// ", d(2, function(args) return sn(nil, {t"Params:  ", i(1, "param", {key = "i3"}), t" = ", i(2, "param description", {key = "i4"}), nl(),
t"///", i(3, "", {key = "i5"}), t"\t $"}) end, {}, {key = "i2"}), nl(),
		t"///", nl(),
		t"/// ", d(3, function(args) return sn(nil, {t"Returns: ", i(1, "return value", {key = "i7"})}) end, {}, {key = "i6"}), nl(),
		t"///", nl(),
		t"/// ", d(4, function(args) return sn(nil, {t"Throws:  ", i(1, "", {key = "i9"}), t"Exception ", i(2, "", {key = "i10"})}) end, {}, {key = "i8"})
	}),
	s({trig = "Par", descr = "(Par) \"Params (Par)\"", priority = -50, trigEngine = te("")}, {
		t"Params:  ", i(1, "param", {key = "i1"}), t" = ", i(2, "param description", {key = "i2"}), nl(),
		t"///\t\t\t", i(3, "", {key = "i3"})
	}),
	s({trig = "Ret", descr = "(Ret) \"Returns (Ret)\"", priority = -50, trigEngine = te("")}, {
		t"Returns:  ", i(1, "return value/s", {key = "i1"})
	}),
	s({trig = "Thr", descr = "(Thr) \"Throws (Thr)\"", priority = -50, trigEngine = te("")}, {
		t"Throws:  ", i(1, "", {key = "i1"}), t"Exception ", i(2, "", {key = "i2"})
	}),
	s({trig = "Example", descr = "(Example) \"Examples (Example)\"", priority = -50, trigEngine = te("")}, {
		t"Examples:", nl(),
		t"/// --------------------", nl(),
		t"/// ", i(1, "example code", {key = "i1"}), nl(),
		t"/// --------------------"
	}),
	s({trig = "gpl", descr = "(gpl) \"GPL (gpl)\"", priority = -50, trigEngine = te("b")}, {
		t"// This program is free software; you can redistribute it and/or modify", nl(),
		t"// it under the terms of the GNU General Public License as published by", nl(),
		t"// the Free Software Foundation; either version 2 of the License, or", nl(),
		t"// (at your option) any later version.", nl(),
		t"//", nl(),
		t"// This program is distributed in the hope that it will be useful,", nl(),
		t"// but WITHOUT ANY WARRANTY; without even the implied warranty of", nl(),
		t"// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the", nl(),
		t"// GNU General Public License for more details.", nl(),
		t"//", nl(),
		t"// You should have received a copy of the GNU General Public License", nl(),
		t"// along with this program; if not, write to the Free Software", nl(),
		t"// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.", nl(),
		t"//", nl(),
		t"// Copyright (C) ", i(1, "Author", {key = "i1"}), t", ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, {}), nl(),
		nl(),
		i(2, "", {key = "i2"})
	}),
	s({trig = "boost", descr = "(boost) \"Boost (boost)\"", priority = -50, trigEngine = te("b")}, {
		t"//          Copyright ", i(1, "Author", {key = "i1"}), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, {}), t".", nl(),
		t"// Distributed under the Boost Software License, Version 1.0.", nl(),
		t"//    (See accompanying file LICENSE_1_0.txt or copy at", nl(),
		t"//          http://www.boost.org/LICENSE_1_0.txt)", nl(),
		nl(),
		i(2, "", {key = "i2"})
	}),
	s({trig = "module", descr = "(module) \"New module (module)\"", priority = -50, trigEngine = te("b")}, {
		t"//          Copyright ", i(1, "Author", {key = "i1"}), t" ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, {}), t".", nl(),
		t"// Distributed under the Boost Software License, Version 1.0.", nl(),
		t"//    (See accompanying file LICENSE_1_0.txt or copy at", nl(),
		t"//          http://www.boost.org/LICENSE_1_0.txt)", nl(),
		nl(),
		t"module ", i(2, "", {key = "i2"}), t".", f(function(args, snip) return c_viml("vim_snippets#Filename(\'$1\', \'name\')") end, {}), t";", nl(),
		nl(),
		nl(),
		i(3, "", {key = "i3"})
	}),
})
