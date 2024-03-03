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


ls.add_snippets("coffee-jasmine", {
	s({trig = "des", descr = "(des) \"Describe (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"describe \'", i(1, "description", {key = "i1"}), t"\', ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "it", descr = "(it) \"it (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"it \'", i(1, "description", {key = "i1"}), t"\', ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "bef", descr = "(bef) \"before each (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"beforeEach ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "aft", descr = "(aft) \"after each (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"afterEach ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "any", descr = "(any) \"any (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"jasmine.any(", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "ru", descr = "(ru) \"runs (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"runs ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "wa", descr = "(wa) \"waits (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"waits(", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "ex", descr = "(ex) \"expect (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "ee", descr = "(ee) \"expect to equal (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toEqual(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "em", descr = "(em) \"expect to match (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toMatch(", i(2, "pattern", {key = "i2"}), t")"
	}),
	s({trig = "eha", descr = "(eha) \"expect to have attribute (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toHaveAttr(\'", i(2, "attr", {key = "i2"}), t"\'", c(3, {{t", \'", i(1, "value", {key = "i4"}), t"\'"}, {i(1, jt({", \'", "value", "\'"}))}}, {key = "i3"}), t")"
	}),
	s({trig = "et", descr = "(et) \"expect to be truthy (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeTruthy()"
	}),
	s({trig = "ef", descr = "(ef) \"expect to be falsy (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeFalsy()"
	}),
	s({trig = "ed", descr = "(ed) \"expect to be defined (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeDefined()"
	}),
	s({trig = "en", descr = "(en) \"expect to be null (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeNull()"
	}),
	s({trig = "ec", descr = "(ec) \"expect to contain (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toContain(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "ev", descr = "(ev) \"expect to be visible (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeVisible()"
	}),
	s({trig = "eh", descr = "(eh) \"expect to be hidden (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeHidden()"
	}),
	s({trig = "notx", descr = "(notx) \"expect not (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not", i(0, "", {key = "i0"})
	}),
	s({trig = "note", descr = "(note) \"expect not to equal (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toEqual(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "notm", descr = "(notm) \"expect not to match (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toMatch(", i(2, "pattern", {key = "i2"}), t")"
	}),
	s({trig = "notha", descr = "(notha) \"expect to not have attribute (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toHaveAttr(\'", i(2, "attr", {key = "i2"}), t"\'", c(3, {{t", \'", i(1, "value", {key = "i4"}), t"\'"}, {i(1, jt({", \'", "value", "\'"}))}}, {key = "i3"}), t")"
	}),
	s({trig = "nott", descr = "(nott) \"expect not to be truthy (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeTruthy()"
	}),
	s({trig = "notf", descr = "(notf) \"expect not to be falsy (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeFalsy()"
	}),
	s({trig = "notd", descr = "(notd) \"expect not to be defined (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeDefined()"
	}),
	s({trig = "notn", descr = "(notn) \"expect not to be null (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeNull()"
	}),
	s({trig = "notc", descr = "(notc) \"expect not to contain (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toContain(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "notv", descr = "(notv) \"expect not to be visible (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeVisible()"
	}),
	s({trig = "noth", descr = "(noth) \"expect not to be hidden (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeHidden()"
	}),
	s({trig = "s", descr = "(s) \"spy on (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \"", i(2, "method", {key = "i2"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "sr", descr = "(sr) \"spy on and return (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \"", i(2, "method", {key = "i2"}), t"\").andReturn(", i(3, "arguments", {key = "i3"}), t")"
	}),
	s({trig = "st", descr = "(st) \"spy on and throw (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \"", i(2, "method", {key = "i2"}), t"\").andThrow(", i(3, "exception", {key = "i3"}), t")"
	}),
	s({trig = "sct", descr = "(sct) \"spy on and call through (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \"", i(2, "method", {key = "i2"}), t"\").andCallThrough()"
	}),
	s({trig = "scf", descr = "(scf) \"spy on and call fake (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \"", i(2, "method", {key = "i2"}), t"\").andCallFake(", i(3, "function", {key = "i3"}), t")"
	}),
	s({trig = "esc", descr = "(esc) \"expect was called (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").wasCalled()"
	}),
	s({trig = "escw", descr = "(escw) \"expect was called with (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").wasCalledWith(", i(2, "arguments", {key = "i2"}), t")"
	}),
	s({trig = "notsc", descr = "(notsc) \"expect was not called (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").wasNotCalled()"
	}),
	s({trig = "noscw", descr = "(noscw) \"expect was not called with (coffee)\"", priority = -49, trigEngine = te("b")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").wasNotCalledWith(", i(2, "arguments", {key = "i2"}), t")"
	}),
})
