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
	{1},
	{1},
	{1, 2},
	{},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3},
	{0},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{0, 1},
	{0, 1},
	{1, 2, 3, 4},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6, 7, 8, 9},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{1},
}
ls.add_snippets("lpc", {
	s({trig = "inc", descr = "(inc)", priority = -1000, trigEngine = te("w")}, {
		t"#include <", i(1, "stdio", {key = "i1"}), t".h>"
	}),
	s({trig = "Inc", descr = "(Inc)", priority = -1000, trigEngine = te("w")}, {
		t"#include \"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1.h\")")}, ""), {key = "i1"}) }) end), t"\""
	}),
	s({trig = "ndef", descr = "(ndef)", priority = -1000, trigEngine = te("w")}, {
		t"#ifndef ", cp(1), nl(),
		t"#define ", i(1, "SYMBOL", {key = "i1"}), t" ", i(2, "value", {key = "i2"}), nl(),
		t"#endif /* ifndef ", cp(1), t" */"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"#define"
	}),
	s({trig = "ifdef", descr = "(ifdef)", priority = -1000, trigEngine = te("w")}, {
		t"#ifdef ", i(1, "FOO", {key = "i1"}), nl(),
		t"\t", i(2, "#define ", {key = "i2"}), nl(),
		t"#endif"
	}),
	s({trig = "#if", descr = "(#if)", priority = -1000, trigEngine = te("w")}, {
		t"#if ", i(1, "FOO", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"#endif"
	}),
	s({trig = "once", descr = "(once)", priority = -1000, trigEngine = te("w")}, {
		t"#ifndef ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("toupper(vim_snippets#Filename(\'$1_H\', \'UNTITLED_H\'))")}, ""), {key = "i1"}) }) end), nl(),
		nl(),
		t"#define ", cp(1), nl(),
		nl(),
		i(0, "", {key = "i0"}), nl(),
		nl(),
		t"#endif /* end of include guard: ", cp(1), t" */"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if(", i(1, "true", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if(", i(1, "true", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"}", nl(),
		t"else", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "elif", descr = "(elif)", priority = -1000, trigEngine = te("w")}, {
		t"else if(", i(1, "true", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ifi", descr = "(ifi)", priority = -1000, trigEngine = te("w")}, {
		t"if(", i(1, "true", {key = "i1"}), t") ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "t", descr = "(t) Ternary: `condition ? true : false`", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch(", i(1, "/* variable */", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\tcase ", i(2, "/* variable case */", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t", i(4, "break;", {key = "i4"}), i(5, "", {key = "i5"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "switchndef", descr = "(switchndef)", priority = -1000, trigEngine = te("w")}, {
		t"switch(", i(1, "/* variable */", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\tcase ", i(2, "/* variable case */", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t", i(4, "break;", {key = "i4"}), i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "/* variable case */", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\t", i(3, "break;", {key = "i3"})
	}),
	s({trig = "ret", descr = "(ret)", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"foreach(", i(1, "mixed", {key = "i1"}), t" ", i(2, "ele", {key = "i2"}), t" in ", i(3, "arr", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for(int ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr)", priority = -1000, trigEngine = te("w")}, {
		t"for(int ", i(1, "i", {key = "i1"}), t" = ", i(2, "0", {key = "i2"}), t"; ", d(3, function(args) return sn(nil, {cp(1), t" < 10"}) end, {}, {key = "i3"}), t"; ", cp(1), i(4, "++", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while(", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}while (", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "fnc", descr = "(fnc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "defun0", descr = "(defun0)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"()", nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "defun1", descr = "(defun1)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "defun2", descr = "(defun2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t", ", i(5, "Type", {key = "i5"}), t" ", i(6, "Parameter", {key = "i6"}), t")", nl(),
		t"{", nl(),
		t"\t", i(7, "", {key = "i7"}), nl(),
		t"}"
	}),
	s({trig = "defun3", descr = "(defun3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t", ", i(5, "Type", {key = "i5"}), t" ", i(6, "Parameter", {key = "i6"}), t", ", i(7, "Type", {key = "i7"}), t" ", i(8, "Parameter", {key = "i8"}), t")", nl(),
		t"{", nl(),
		t"\t", i(9, "", {key = "i9"}), nl(),
		t"}"
	}),
	s({trig = "fund", descr = "(fund)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "%s", {key = "i1"}), t"\\n\"", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "fpr", descr = "(fpr)", priority = -1000, trigEngine = te("w")}, {
		t"fprintf(", i(1, "stderr", {key = "i1"}), t", \"", i(2, "%s", {key = "i2"}), t"\\n\"", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "prd", descr = "(prd)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %d\\n\", ", cp(1), t");"
	}),
	s({trig = "prf", descr = "(prf)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %f\\n\", ", cp(1), t");"
	}),
	s({trig = "prx", descr = "(prx)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %", i(2, "", {key = "i2"}), t"\\n\", ", cp(1), t");"
	}),
	s({trig = "todo", descr = "(todo)", priority = -1000, trigEngine = te("w")}, {
		t"/*! TODO: ", i(1, "Todo description here", {key = "i1"}), t" */", nl()
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "", {key = "i1"}), t"]", nl(),
		nl()
	}),
	s({trig = "head", descr = "(head)", priority = -1000, trigEngine = te("w")}, {
		t"// code for ", i(1, "", {key = "i1"}), t" by ", f(function(args, snip) return c_viml("$USER") end, {}), t" create at ", f(function(args, snip) return c_viml("strftime(\"%Y-%m-%d %H:%M:%S\")") end, {})
	}),
})
