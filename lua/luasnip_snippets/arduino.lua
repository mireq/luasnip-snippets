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
	{1, 2},
	{0},
	{1},
	{1},
	{0, 1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{1, 2},
	{1, 2},
	{1, 2, 3, 4},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{},
	{},
	{1},
	{1},
	{1},
	{},
}
ls.add_snippets("arduino", {
	s({trig = "setup", descr = "(setup)", priority = -1000, trigEngine = te("w")}, {
		t"void setup()", nl(),
		t"{", nl(),
		t"\tSerial.begin(", i(1, "9600", {key = "i1"}), t");", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "loop", descr = "(loop)", priority = -1000, trigEngine = te("w")}, {
		t"void loop()", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "inc", descr = "(inc)", priority = -1000, trigEngine = te("w")}, {
		t"#include <", i(1, "", {key = "i1"}), t".h>"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"#define ", i(1, "", {key = "i1"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "elif", descr = "(elif)", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ifi", descr = "(ifi)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch (", i(1, "/* variable */", {key = "i1"}), t") {", nl(),
		t"\tcase ", i(2, "/* variable case */", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t", i(4, "break;", {key = "i4"}), i(5, "", {key = "i5"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "/* variable case */", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\t", i(3, "break;", {key = "i3"})
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for (int ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr)", priority = -1000, trigEngine = te("w")}, {
		t"for (int ", i(1, "i", {key = "i1"}), t" = ", i(2, "0", {key = "i2"}), t"; ", d(3, function(args, snip) return sn(nil, { i(1, jt({args[1], " < 10"}, ""), {key = "i3"}) }) end, {k"i1"}), t"; ", cp(1), i(4, "++", {key = "i4"}), t") {", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} while (", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "pinout", descr = "(pinout)", priority = -1000, trigEngine = te("w")}, {
		t"pinMode(", i(1, "", {key = "i1"}), t", OUTPUT);"
	}),
	s({trig = "pinin", descr = "(pinin)", priority = -1000, trigEngine = te("w")}, {
		t"pinMode(", i(1, "", {key = "i1"}), t", INPUT);"
	}),
	s({trig = "dwHigh", descr = "(dwHigh)", priority = -1000, trigEngine = te("w")}, {
		t"digitalWrite(", i(1, "", {key = "i1"}), t", HIGH);"
	}),
	s({trig = "dwLow", descr = "(dwLow)", priority = -1000, trigEngine = te("w")}, {
		t"digitalWrite(", i(1, "", {key = "i1"}), t", LOW);"
	}),
	s({trig = "dr", descr = "(dr)", priority = -1000, trigEngine = te("w")}, {
		t"digitalRead(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "ar", descr = "(ar)", priority = -1000, trigEngine = te("w")}, {
		t"analogRead(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "aw", descr = "(aw)", priority = -1000, trigEngine = te("w")}, {
		t"analogWrite(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "sr", descr = "(sr)", priority = -1000, trigEngine = te("w")}, {
		t"Serial.read();"
	}),
	s({trig = "sw", descr = "(sw)", priority = -1000, trigEngine = te("w")}, {
		t"Serial.write();"
	}),
	s({trig = "sp", descr = "(sp)", priority = -1000, trigEngine = te("w")}, {
		t"Serial.print(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "sl", descr = "(sl)", priority = -1000, trigEngine = te("w")}, {
		t"Serial.println(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "dl", descr = "(dl)", priority = -1000, trigEngine = te("w")}, {
		t"delay(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "ml", descr = "(ml)", priority = -1000, trigEngine = te("w")}, {
		t"millis();"
	}),
})
