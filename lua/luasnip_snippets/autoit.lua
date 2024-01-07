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
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0, 1},
}
ls.add_snippets("autoit", {
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"If ", i(1, "", {key = "i1"}), t" Then", nl(),
		t"\t", i(0, "; True code", {key = "i0"}), nl(),
		t"EndIf"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"Else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"ElseIf ", i(1, "", {key = "i1"}), t" Then", nl(),
		t"\t", i(0, "; True code", {key = "i0"})
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"If ", i(1, "", {key = "i1"}), t" Then", nl(),
		t"\t", i(2, "; True code", {key = "i2"}), nl(),
		t"Else", nl(),
		t"\t", i(0, "; Else code", {key = "i0"}), nl(),
		t"EndIf"
	}),
	s({trig = "ifelif", descr = "(ifelif)", priority = -1000, trigEngine = te("w")}, {
		t"If ", i(1, "condition 1", {key = "i1"}), t" Then", nl(),
		t"\t", i(2, "; True code", {key = "i2"}), nl(),
		t"ElseIf ", i(3, "condition 2", {key = "i3"}), t" Then", nl(),
		t"\t", i(4, "; True code", {key = "i4"}), nl(),
		t"Else", nl(),
		t"\t", i(0, "; Else code", {key = "i0"}), nl(),
		t"EndIf"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"Switch (", i(1, "", {key = "i1"}), t")", nl(),
		t"Case ", i(2, "case1", {key = "i2"}), t":", nl(),
		t"\t", i(3, "; Case 1 code", {key = "i3"}), nl(),
		t"Case Else:", nl(),
		t"\t", i(0, "; Else code", {key = "i0"}), nl(),
		t"EndSwitch"
	}),
	s({trig = "select", descr = "(select)", priority = -1000, trigEngine = te("w")}, {
		t"Select (", i(1, "", {key = "i1"}), t")", nl(),
		t"Case ", i(2, "case1", {key = "i2"}), t":", nl(),
		t"\t", i(3, "; Case 1 code", {key = "i3"}), nl(),
		t"Case Else:", nl(),
		t"\t", i(0, "; Else code", {key = "i0"}), nl(),
		t"EndSelect"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"While (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", i(0, "; code...", {key = "i0"}), nl(),
		t"WEnd"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"For ", i(1, "n", {key = "i1"}), t" = ", i(3, "1", {key = "i3"}), t" to ", i(2, "count", {key = "i2"}), nl(),
		t"\t", i(0, "; code...", {key = "i0"}), nl(),
		t"Next"
	}),
	s({trig = "func", descr = "(func)", priority = -1000, trigEngine = te("w")}, {
		t"Func ", i(1, "fname", {key = "i1"}), t"(", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("indent(\'.\') ? \'self\' : \'\'")}, ""), {key = "i2"}) }) end), t"):", nl(),
		t"\t", i(0, "Return", {key = "i0"}), nl(),
		t"EndFunc"
	}),
	s({trig = "msg", descr = "(msg)", priority = -1000, trigEngine = te("w")}, {
		t"MsgBox(", i(0, "MsgType", {key = "i0"}), t", ", i(1, "\"Title\"", {key = "i1"}), t", ", i(2, "\"Message Text\"", {key = "i2"}), t")"
	}),
	s({trig = "debug", descr = "(debug)", priority = -1000, trigEngine = te("w")}, {
		t"MsgBox(0, \"Debug\", ", i(0, "\"Debug Message\"", {key = "i0"}), t")"
	}),
	s({trig = "showvar", descr = "(showvar)", priority = -1000, trigEngine = te("w")}, {
		t"MsgBox(0, \"", i(0, "VarName", {key = "i0"}), t"\", ", i(1, "", {key = "i1"}), t")"
	}),
})
