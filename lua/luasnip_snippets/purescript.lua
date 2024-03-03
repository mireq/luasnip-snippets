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


ls.add_snippets("purescript", {
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end), nl(),
		t"\t(", nl(),
		t"\t) where", nl(),
		nl(),
		t"import Prelude", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "Data.List", {key = "i0"})
	}),
	s({trig = "impq", descr = "(impq)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "Data.List", {key = "i1"}), t" as ", i(0, "List", {key = "i0"})
	}),
	s({trig = "fn0", descr = "(fn0)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), nl(),
		cp(1), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t"= ", i(0, "", {key = "i0"})
	}),
	s({trig = "fn1", descr = "(fn1)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t"= ", i(0, "", {key = "i0"})
	}),
	s({trig = "fn2", descr = "(fn2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), nl(),
		cp(1), t" ", i(5, "", {key = "i5"}), t"= ", i(0, "", {key = "i0"})
	}),
	s({trig = "fn3", descr = "(fn3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), t" -> ", i(5, "a", {key = "i5"}), nl(),
		cp(1), t" ", i(6, "", {key = "i6"}), t"= ", i(0, "", {key = "i0"})
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t" of", nl(),
		t"\t", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let", nl(),
		t"\t", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), nl(),
		t"in", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "where", descr = "(where)", priority = -1000, trigEngine = te("w")}, {
		t"where", nl(),
		t"\t", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"})
	}),
	s({trig = "testunit", descr = "(testunit)", priority = -1000, trigEngine = te("w")}, {
		t"module Test.Main where", nl(),
		nl(),
		t"import Prelude", nl(),
		t"import Test.Unit (suite, test)", nl(),
		t"import Test.Unit.Main (runTest)", nl(),
		t"import Test.Unit.Assert as Assert", nl(),
		nl(),
		t"main = runTest do", nl(),
		t"\tsuite \"", i(1, "", {key = "i1"}), t"\" do", nl(),
		t"\t\ttest \"", i(2, "the tests run", {key = "i2"}), t"\" do", nl(),
		t"\t\t\tAssert.equal", nl(),
		t"\t\t\t\t\"Hello, world!\"", nl(),
		t"\t\t\t\t\"Hello, sailor!\""
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"{-| ", i(0, "", {key = "i0"}), nl(),
		t"-}"
	}),
	s({trig = "ty", descr = "(ty)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Type", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "da", descr = "(da)", priority = -1000, trigEngine = te("w")}, {
		t"data ", i(1, "Type", {key = "i1"}), t" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i0"}) }) end, {k"i1"})
	}),
	s({trig = "nty", descr = "(nty)", priority = -1000, trigEngine = te("w")}, {
		t"newtype ", i(1, "Type", {key = "i1"}), t" =", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, "\t"), {key = "i2"}) }) end, {k"i1"}), t" ", i(0, "Int", {key = "i0"})
	}),
	s({trig = "fi", descr = "(fi)", priority = -1000, trigEngine = te("w")}, {
		t"foreign import ", i(1, "", {key = "i1"}), t" :: ", i(2, "", {key = "i2"})
	}),
})
