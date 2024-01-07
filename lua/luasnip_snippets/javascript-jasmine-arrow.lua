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
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
}
ls.add_snippets("javascript-jasmine-arrow", {
	s({trig = "des", descr = "(des) \"Describe (js)\"", priority = -50, trigEngine = te("b")}, {
		t"describe(\'", i(1, "description", {key = "i1"}), t"\', () => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "it", descr = "(it) \"it (js)\"", priority = -50, trigEngine = te("b")}, {
		t"it(\'", i(1, "description", {key = "i1"}), t"\', () => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "bef", descr = "(bef) \"before each (js)\"", priority = -50, trigEngine = te("b")}, {
		t"beforeEach(() => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "aft", descr = "(aft) \"after each (js)\"", priority = -50, trigEngine = te("b")}, {
		t"afterEach(() => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "befa", descr = "(befa) \"before all (js)\"", priority = -50, trigEngine = te("b")}, {
		t"beforeAll(() => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "afta", descr = "(afta) \"after all (js)\"", priority = -50, trigEngine = te("b")}, {
		t"afterAll(() => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "ru", descr = "(ru) \"runs (js)\"", priority = -50, trigEngine = te("b")}, {
		t"runs(() => {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
})
