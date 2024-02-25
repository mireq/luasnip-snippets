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
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{1},
	{},
	{0},
	{1},
	{1},
	{0},
	{1},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1, 2},
}
ls.add_snippets("javascript-jasmine", {
	s({trig = "des", descr = "(des) \"Describe (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"describe(\'", i(1, "description", {key = "i1"}), t"\', function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "it", descr = "(it) \"it (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"it(\'", i(1, "description", {key = "i1"}), t"\', function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "bef", descr = "(bef) \"before each (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"beforeEach(function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "aft", descr = "(aft) \"after each (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"afterEach(function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "befa", descr = "(befa) \"before all (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"beforeAll(function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "afta", descr = "(afta) \"after all (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"afterAll(function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "any", descr = "(any) \"any (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"jasmine.any(", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "anyt", descr = "(anyt) \"anything (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"jasmine.anything()"
	}),
	s({trig = "objc", descr = "(objc) \"object containing (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"jasmine.objectContaining({", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "arrc", descr = "(arrc) \"array containing (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"jasmine.arrayContaining([", i(1, "value1", {key = "i1"}), t"]);"
	}),
	s({trig = "strm", descr = "(strm) \"string matching (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"jasmine.stringMatching(\"", i(1, "matcher", {key = "i1"}), t"\")"
	}),
	s({trig = "ru", descr = "(ru) \"runs (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"runs(function() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "wa", descr = "(wa) \"waits (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"waits(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "ex", descr = "(ex) \"expect (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t")", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "ee", descr = "(ee) \"expect to equal (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toEqual(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "el", descr = "(el) \"expect to be less than (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeLessThan(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "eg", descr = "(eg) \"expect to be greater than (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeGreaterThan(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "eb", descr = "(eb) \"expect to be (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBe(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "em", descr = "(em) \"expect to match (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toMatch(", i(2, "pattern", {key = "i2"}), t");"
	}),
	s({trig = "eha", descr = "(eha) \"expect to have attribute (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toHaveAttr(\'", i(2, "attr", {key = "i2"}), t"\'", i(3, ", \'${4:value}\'", {key = "i3"}), t");"
	}),
	s({trig = "et", descr = "(et) \"expect to be truthy (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeTruthy();"
	}),
	s({trig = "ef", descr = "(ef) \"expect to be falsy (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeFalsy();"
	}),
	s({trig = "etbd", descr = "(etbd) \"expect to be defined (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeDefined();"
	}),
	s({trig = "eud", descr = "(eud) \"expect to be defined (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeUndefined();"
	}),
	s({trig = "en", descr = "(en) \"expect to be null (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeNull();"
	}),
	s({trig = "ec", descr = "(ec) \"expect to contain (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toContain(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "ev", descr = "(ev) \"expect to be visible (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeVisible();"
	}),
	s({trig = "eh", descr = "(eh) \"expect to be hidden (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toBeHidden();"
	}),
	s({trig = "eth", descr = "(eth) \"expect to throw (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toThrow(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "ethe", descr = "(ethe) \"expect to throw error (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toThrowError(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notx", descr = "(notx) \"expect not (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "note", descr = "(note) \"expect not to equal (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toEqual(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notl", descr = "(notl) \"expect to not be less than (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeLessThan(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notg", descr = "(notg) \"expect to not be greater than (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeGreaterThan(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notm", descr = "(notm) \"expect not to match (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toMatch(", i(2, "pattern", {key = "i2"}), t");"
	}),
	s({trig = "notha", descr = "(notha) \"expect to not have attribute (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toHaveAttr(\'", i(2, "attr", {key = "i2"}), t"\'", i(3, ", \'${4:value}\'", {key = "i3"}), t");"
	}),
	s({trig = "nott", descr = "(nott) \"expect not to be truthy (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeTruthy();"
	}),
	s({trig = "notf", descr = "(notf) \"expect not to be falsy (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeFalsy();"
	}),
	s({trig = "notd", descr = "(notd) \"expect not to be defined (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeDefined();"
	}),
	s({trig = "notn", descr = "(notn) \"expect not to be null (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeNull();"
	}),
	s({trig = "notc", descr = "(notc) \"expect not to contain (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toContain(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notv", descr = "(notv) \"expect not to be visible (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeVisible();"
	}),
	s({trig = "noth", descr = "(noth) \"expect not to be hidden (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toBeHidden();"
	}),
	s({trig = "notth", descr = "(notth) \"expect not to throw (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toThrow(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "notthe", descr = "(notthe) \"expect not to throw error (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toThrowError(", i(2, "value", {key = "i2"}), t");"
	}),
	s({trig = "s", descr = "(s) \"spy on (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \'", i(2, "method", {key = "i2"}), t"\')", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "sr", descr = "(sr) \"spy on and return (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \'", i(2, "method", {key = "i2"}), t"\').and.returnValue(", i(3, "arguments", {key = "i3"}), t");"
	}),
	s({trig = "st", descr = "(st) \"spy on and throw (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \'", i(2, "method", {key = "i2"}), t"\').and.throwError(", i(3, "exception", {key = "i3"}), t");"
	}),
	s({trig = "sct", descr = "(sct) \"spy on and call through (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \'", i(2, "method", {key = "i2"}), t"\').and.callThrough();"
	}),
	s({trig = "scf", descr = "(scf) \"spy on and call fake (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"spyOn(", i(1, "object", {key = "i1"}), t", \'", i(2, "method", {key = "i2"}), t"\').and.callFake(", i(3, "function", {key = "i3"}), t");"
	}),
	s({trig = "ethbc", descr = "(ethbc) \"expect to have been called (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toHaveBeenCalled();"
	}),
	s({trig = "nthbc", descr = "(nthbc) \"expect not to have been called (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").not.toHaveBeenCalled();"
	}),
	s({trig = "ethbcw", descr = "(ethbcw) \"expect to have been called with (js)\"", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "target", {key = "i1"}), t").toHaveBeenCalledWith(", i(2, "arguments", {key = "i2"}), t");"
	}),
})
