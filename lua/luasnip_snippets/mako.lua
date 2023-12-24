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
local su = require("luasnip_snippets.snip_utils")
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
	2,
	2,
	1,
	1,
	3,
	2,
	3,
	3,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
}
ls.add_snippets("mako", {
	s({trig = "def", descr = "(def) \"definition\"", priority = -50, trigEngine = te("b")}, {
		t"<%def name=\"", i(1, "name", {key = "i1"}), t"\">", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"</%def>"
	}),
	s({trig = "call", descr = "(call) \"call\"", priority = -50, trigEngine = te("b")}, {
		t"<%call expr=\"", i(1, "name", {key = "i1"}), t"\">", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"</%call>"
	}),
	s({trig = "doc", descr = "(doc) \"doc\"", priority = -50, trigEngine = te("b")}, {
		t"<%doc>", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"</%doc>"
	}),
	s({trig = "text", descr = "(text) \"text\"", priority = -50, trigEngine = te("b")}, {
		t"<%text>", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"</%text>"
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = -50, trigEngine = te("b")}, {
		t"% for ", i(1, "i", {key = "i1"}), t" in ", i(2, "iter", {key = "i2"}), t":", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"% endfor"
	}),
	s({trig = "if", descr = "(if) \"if/else\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"% if ", i(1, "condition", {key = "i1"}), t":", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"% endif"
		},
		{
			t"% if ", i(1, "condition", {key = "i1"}), t":", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"% else:", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"% endif"
		},
	})),
	s({trig = "try", descr = "(try) \"try\"", priority = -50, trigEngine = te("b")}, {
		t"% try:", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"% except", i(2, "", {key = "i2"}), t":", nl(),
		t"\t", i(3, "pass", {key = "i3"}), nl(),
		t"% endtry"
	}),
	s({trig = "wh", descr = "(wh) \"wh\"", priority = -50, trigEngine = te("b")}, {
		t"% while ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"% endwhile"
	}),
	s({trig = "$", descr = "($) \"$\"", priority = -50, trigEngine = te("i")}, {
		t"${", i(1, "", {key = "i1"}), t"}"
	}),
	s({trig = "<%", descr = "(<%) \"<%\"", priority = -50, trigEngine = te("b")}, {
		t"<% ", i(1, "", {key = "i1"}), t" %>"
	}),
	s({trig = "<!%", descr = "(<!%) \"<!%\"", priority = -50, trigEngine = te("b")}, {
		t"<!% ", i(1, "", {key = "i1"}), t" %>"
	}),
	s({trig = "inherit", descr = "(inherit) \"inherit\"", priority = -50, trigEngine = te("b")}, {
		t"<%inherit file=\"", i(1, "filename", {key = "i1"}), t"\" />"
	}),
	s({trig = "include", descr = "(include) \"include\"", priority = -50, trigEngine = te("b")}, {
		t"<%include file=\"", i(1, "filename", {key = "i1"}), t"\" />"
	}),
	s({trig = "namespace", descr = "(namespace) \"namespace\"", priority = -50, trigEngine = te("b")}, {
		t"<%namespace file=\"", i(1, "name", {key = "i1"}), t"\" />"
	}),
	s({trig = "page", descr = "(page) \"page\"", priority = -50, trigEngine = te("b")}, {
		t"<%page args=\"", i(1, "", {key = "i1"}), t"\" />"
	}),
	s({trig = "ife", descr = "(ife) if/else", priority = -1000, trigEngine = te("w")}, {
		t"% if ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"% else:", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"% endif"
	}),
})
