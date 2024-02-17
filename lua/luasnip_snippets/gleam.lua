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
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
}
ls.add_snippets("gleam", {
	s({trig = "fn", descr = "(fn) \"fn\"", priority = -1000, trigEngine = te("w")}, {
		t"fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") -> ", i(3, "Nil", {key = "i3"}), t" {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "pfn", descr = "(pfn) \"pub fn\"", priority = -1000, trigEngine = te("w")}, {
		t"pub fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") -> ", i(3, "Nil", {key = "i3"}), t" {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "test", descr = "(test) \"test fn\"", priority = -1000, trigEngine = te("w")}, {
		t"pub fn ", i(1, "name", {key = "i1"}), t"_test() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "af", descr = "(af) \"anonymous fn\"", priority = -1000, trigEngine = te("w")}, {
		t"fn(", i(1, "", {key = "i1"}), t") { ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t" }", nl()
	}),
	s({trig = "let", descr = "(let) \"let binding\"", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "l", descr = "(l) \"let binding\"", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "as", descr = "(as) \"assert binding\"", priority = -1000, trigEngine = te("w")}, {
		t"assert ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "tr", descr = "(tr) \"try binding\"", priority = -1000, trigEngine = te("w")}, {
		t"try ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "-", descr = "(-) \"->\"", priority = -1000, trigEngine = te("w")}, {
		t"-> ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "case", descr = "(case) \"case expression\"", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "ty", descr = "(ty) \"type\"", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i0"}) }) end, {k"i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "pty", descr = "(pty) \"pub type\"", priority = -1000, trigEngine = te("w")}, {
		t"pub type ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i0"}) }) end, {k"i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "tya", descr = "(tya) \"type alias\"", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Name", {key = "i1"}), t" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i0"}) }) end, {k"i1"}), nl()
	}),
	s({trig = "ptya", descr = "(ptya) \"pub type alias\"", priority = -1000, trigEngine = te("w")}, {
		t"pub type ", i(1, "Name", {key = "i1"}), t" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i0"}) }) end, {k"i1"}), nl()
	}),
	s({trig = "ext", descr = "(ext) \"external type\"", priority = -1000, trigEngine = te("w")}, {
		t"external type ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "pext", descr = "(pext) \"pub external type\"", priority = -1000, trigEngine = te("w")}, {
		t"pub external type ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "exfn", descr = "(exfn) \"external fn\"", priority = -1000, trigEngine = te("w")}, {
		t"external fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") -> ", i(3, "", {key = "i3"}), nl(),
		t"\t= \"", i(4, "", {key = "i4"}), t"\" \"", i(0, "", {key = "i0"}), t"\"", nl()
	}),
	s({trig = "pexfn", descr = "(pexfn) \"pub external fn\"", priority = -1000, trigEngine = te("w")}, {
		t"pub external fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") -> ", i(3, "", {key = "i3"}), nl(),
		t"\t= \"", i(4, "", {key = "i4"}), t"\" \"", i(0, "", {key = "i0"}), t"\"", nl()
	}),
	s({trig = "im", descr = "(im) \"import\"", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "gleam/result", {key = "i0"}), nl()
	}),
	s({trig = "im.", descr = "(im.) \"import exposing\"", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "gleam/result", {key = "i1"}), t".{", i(0, "", {key = "i0"}), t"}", nl()
	}),
	s({trig = "p", descr = "(p) \"|>\"", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "tup", descr = "(tup) \"tuple()\"", priority = -1000, trigEngine = te("w")}, {
		t"tuple(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")", nl()
	}),
	s({trig = "bl", descr = "(bl) \"block\"", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "tf", descr = "(tf) \"fn(Type) -> Type\"", priority = -1000, trigEngine = te("w")}, {
		t"fn(", i(1, "", {key = "i1"}), t") -> ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "seq", descr = "(seq) \"should.equal\"", priority = -1000, trigEngine = te("w")}, {
		t"should.equal(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")", nl()
	}),
	s({trig = "strue", descr = "(strue) \"should.be_true\"", priority = -1000, trigEngine = te("w")}, {
		t"should.be_true(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")", nl()
	}),
	s({trig = "sfalse", descr = "(sfalse) \"should.be_false\"", priority = -1000, trigEngine = te("w")}, {
		t"should.be_true(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
})
