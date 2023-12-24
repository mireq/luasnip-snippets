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
	2,
	1,
	1,
	1,
	0,
	3,
	2,
	0,
	0,
	0,
}
ls.add_snippets("javascript-jsdoc", {
	s({trig = "/*", descr = "(/*) \"A JSDoc comment\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, " "), {key = "i1"}) }) end), i(0, "", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "@au", descr = "(@au) \"@author email (First Last)\"", priority = -50, trigEngine = te("")}, {
		t"@author ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i1"}) }) end), t" [", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author_email")}, ""), {key = "i2"}) }) end), t"]"
	}),
	s({trig = "@li", descr = "(@li) \"@license Description\"", priority = -50, trigEngine = te("")}, {
		t"@license ", i(1, "MIT", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "@ver", descr = "(@ver) \"@version Semantic version\"", priority = -50, trigEngine = te("")}, {
		t"@version ", i(1, "0.1.0", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "@fileo", descr = "(@fileo) \"@fileoverview Description\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * @fileoverview ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, " "), {key = "i1"}) }) end), i(0, "", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "@constr", descr = "(@constr) \"@constructor\"", priority = -50, trigEngine = te("")}, {
		t"@constructor"
	}),
	s({trig = "@p", descr = "(@p) \"@param {Type} varname Description\"", priority = -50, trigEngine = te("")}, {
		t"@param {", i(1, "Type", {key = "i1"}), t"} ", i(2, "varname", {key = "i2"}), t" ", i(3, "Description", {key = "i3"})
	}),
	s({trig = "@ret", descr = "(@ret) \"@return {Type} Description\"", priority = -50, trigEngine = te("")}, {
		t"@return {", i(1, "Type", {key = "i1"}), t"} ", i(2, "Description", {key = "i2"})
	}),
	s({trig = "@pri", descr = "(@pri) \"@private\"", priority = -50, trigEngine = te("")}, {
		t"@private"
	}),
	s({trig = "@over", descr = "(@over) \"@override\"", priority = -50, trigEngine = te("")}, {
		t"@override"
	}),
	s({trig = "@pro", descr = "(@pro) \"@protected\"", priority = -50, trigEngine = te("")}, {
		t"@protected"
	}),
})
