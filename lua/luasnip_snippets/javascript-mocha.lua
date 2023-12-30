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
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
}
ls.add_snippets("javascript-mocha", {
	s({trig = "des", descr = "(des) \"describe(\'thing\', function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"describe(\'", i(1, "", {key = "i1"}), t"\', function() {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"});"
	}),
	s({trig = "it", descr = "(it) \"it(\'should do\', function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"it(\'", i(1, "", {key = "i1"}), t"\', function() {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"});"
	}),
	s({trig = "xit", descr = "(xit) \"xit(\'should do\', function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"xit(\'", i(1, "", {key = "i1"}), t"\', function() {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"});"
	}),
	s({trig = "bef", descr = "(bef) \"before(function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"before(function() {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"});"
	}),
	s({trig = "befe", descr = "(befe) \"beforeEach(function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"beforeEach(function() {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"});"
	}),
	s({trig = "aft", descr = "(aft) \"after(function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"after(function() {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"});"
	}),
	s({trig = "afte", descr = "(afte) \"afterEach(function() { ... })\" b", priority = -1000, trigEngine = te("w")}, {
		t"afterEach(function() {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"});"
	}),
	s({trig = "exp", descr = "(exp) \"expect(...)\" b", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "", {key = "i1"}), t")", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "expe", descr = "(expe) \"expect(...).to.equal(...)\" b", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "", {key = "i1"}), t").to.equal(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "expd", descr = "(expd) \"expect(...).to.deep.equal(...)\" b", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "", {key = "i1"}), t").to.deep.equal(", i(0, "", {key = "i0"}), t");"
	}),
})
