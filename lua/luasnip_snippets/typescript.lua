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
	1,
	1,
	3,
	4,
	3,
	3,
	3,
	1,
	1,
	1,
	1,
	1,
	4,
	3,
	3,
	3,
	3,
	3,
	5,
	6,
}
ls.add_snippets("typescript", {
	s({trig = "int", descr = "(int) \"interface\"", priority = -50, trigEngine = te("")}, {
		t"interface ", i(1, "", {key = "i1"}), t" {", nl(),
		t"}"
	}),
	s({trig = "nspc", descr = "(nspc) \"namespace\"", priority = -50, trigEngine = te("")}, {
		t"namespace ", i(1, "", {key = "i1"}), t" {", nl(),
		t"}"
	}),
	s({trig = "fun", descr = "(fun) \"function (named)\"", priority = -49, trigEngine = te("b")}, {
		t"function ", i(1, "function_name", {key = "i1"}), t" (", i(2, "argument", {key = "i2"}), t": ", i(3, "argument_type", {key = "i3"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "rfc", descr = "(rfc) \"react functional component\"", priority = -49, trigEngine = te("")}, {
		t"import React, { FC } from \"react\"", nl(),
		nl(),
		t"interface ", i(1, "function_name", {key = "i1"}), t"Props {", i(4, "props_types", {key = "i4"}), t"}", nl(),
		nl(),
		t"export const ", i(1, "function_name", {key = "i1"}), t": FC<", i(1, "function_name", {key = "i1"}), t"Props> = (", i(2, "props", {key = "i2"}), t") => ", i(3, "function_body", {key = "i3"})
	}),
	s({trig = "tconst", descr = "(tconst) \"ts const\"", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "", {key = "i1"}), t": ", i(2, "any", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tlet", descr = "(tlet) \"ts let\"", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t": ", i(2, "any", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tvar", descr = "(tvar) \"ts var\"", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t": ", i(2, "any", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "+", descr = "(+) \"ts create field\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": ", i(0, "any", {key = "i0"})
	}),
	s({trig = "#+", descr = "(#+) \"ts create private field using #\"", priority = -1000, trigEngine = te("w")}, {
		t"#", i(1, "", {key = "i1"}), t": ", i(0, "any", {key = "i0"})
	}),
	s({trig = "tpfi", descr = "(tpfi) \"ts create public field\"", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "", {key = "i1"}), t": ", i(0, "any", {key = "i0"})
	}),
	s({trig = "tprfi", descr = "(tprfi) \"ts create private field\"", priority = -1000, trigEngine = te("w")}, {
		t"private ", i(1, "", {key = "i1"}), t": ", i(0, "any", {key = "i0"})
	}),
	s({trig = "tprofi", descr = "(tprofi) \"ts create protected field\"", priority = -1000, trigEngine = te("w")}, {
		t"protected ", i(1, "", {key = "i1"}), t": ", i(0, "any", {key = "i0"})
	}),
	s({trig = "intx", descr = "(intx) \"interface extends\"", priority = -1000, trigEngine = te("w")}, {
		t"interface ", i(1, "", {key = "i1"}), t" extends ", i(2, "", {key = "i2"}), t" {", nl(),
		t"\t", i(3, "", {key = "i3"}), t": ", i(4, "any", {key = "i4"}), t";", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tfun", descr = "(tfun) \"ts function\"", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "any", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tpmet", descr = "(tpmet) \"ts public method\"", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "any", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tpsmet", descr = "(tpsmet) \"ts public static method\"", priority = -1000, trigEngine = te("w")}, {
		t"public static ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "any", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tprmet", descr = "(tprmet) \"ts private method\"", priority = -1000, trigEngine = te("w")}, {
		t"private ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "any", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tpromet", descr = "(tpromet) \"ts protected method\"", priority = -1000, trigEngine = te("w")}, {
		t"protected ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"): ", i(3, "any", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tcla", descr = "(tcla) \"ts class\"", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\tconstructor(public ", i(3, "", {key = "i3"}), t": ", i(4, " any", {key = "i4"}), t") {", nl(),
		t"\t\t", i(5, "", {key = "i5"}), nl(),
		t"\t}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tclax", descr = "(tclax) \"ts class extends\"", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends ", i(2, "", {key = "i2"}), t" {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"\tconstructor(public ", i(4, "", {key = "i4"}), t": ", i(5, " any", {key = "i5"}), t") {", nl(),
		t"\t\t", i(6, "", {key = "i6"}), nl(),
		t"\t}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
})
