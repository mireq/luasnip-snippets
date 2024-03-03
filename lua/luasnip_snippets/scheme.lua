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


ls.add_snippets("scheme", {
	s({trig = "+", descr = "(+)", priority = -1000, trigEngine = te("w")}, {
		t"(+ ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "-", descr = "(-)", priority = -1000, trigEngine = te("w")}, {
		t"(- ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "/", descr = "(/)", priority = -1000, trigEngine = te("w")}, {
		t"(/ ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "*", descr = "(*)", priority = -1000, trigEngine = te("w")}, {
		t"(* ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"(define (", i(1, "name", {key = "i1"}), t")", nl(),
		t"\t", i(0, "definition", {key = "i0"}), t")"
	}),
	s({trig = "defl", descr = "(defl)", priority = -1000, trigEngine = te("w")}, {
		t"(define ", i(1, "name", {key = "i1"}), nl(),
		t"\t(lambda (x)(", i(0, "definition", {key = "i0"}), t")))"
	}),
	s({trig = "cond", descr = "(cond)", priority = -1000, trigEngine = te("w")}, {
		t"(cond ((", i(1, "predicate", {key = "i1"}), t") (", i(2, "action", {key = "i2"}), t"))", nl(),
		t"\t((", i(3, "predicate", {key = "i3"}), t") (", i(0, "action", {key = "i0"}), t")))"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"(if (", i(1, "predicate", {key = "i1"}), t")", nl(),
		t"\t(", i(2, "true-action", {key = "i2"}), t")", nl(),
		t"\t(", i(0, "false-action", {key = "i0"}), t"))"
	}),
})
