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
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{},
	{1},
	{0},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5, 6},
	{1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0, 1, 2, 3, 4},
}
ls.add_snippets("haskell", {
	s({trig = "lang", descr = "(lang)", priority = -1000, trigEngine = te("w")}, {
		t"{-# LANGUAGE ", i(0, "OverloadedStrings", {key = "i0"}), t" #-}"
	}),
	s({trig = "haddock", descr = "(haddock)", priority = -1000, trigEngine = te("w")}, {
		t"{-# OPTIONS_HADDOCK ", i(0, "hide", {key = "i0"}), t" #-}"
	}),
	s({trig = "ghc", descr = "(ghc)", priority = -1000, trigEngine = te("w")}, {
		t"{-# OPTIONS_GHC ", i(0, "-fno-warn-unused-imports", {key = "i0"}), t" #-}"
	}),
	s({trig = "inline", descr = "(inline)", priority = -1000, trigEngine = te("w")}, {
		t"{-# INLINE ", i(0, "name", {key = "i0"}), t" #-}"
	}),
	s({trig = "info", descr = "(info)", priority = -1000, trigEngine = te("w")}, {
		t"-- |", nl(),
		t"-- Module      :  ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')")}, ""), {key = "i1"}) }) end), nl(),
		t"-- Copyright   :  ", i(2, "Author", {key = "i2"}), t" ", i(3, "2011-2012", {key = "i3"}), nl(),
		t"-- License     :  ", i(4, "BSD3", {key = "i4"}), nl(),
		t"--", nl(),
		t"-- Maintainer  :  ", i(5, "email@something.com", {key = "i5"}), nl(),
		t"-- Stability   :  ", i(6, "experimental", {key = "i6"}), nl(),
		t"-- Portability :  ", i(7, "unknown", {key = "i7"}), nl(),
		t"--", nl(),
		t"-- ", i(0, "Description", {key = "i0"}), nl(),
		t"--"
	}),
	s({trig = "imp", descr = "(imp) \"Simple import\"", priority = -50, trigEngine = te("")}, {
		t"import ", c(1, {{i(1, "Data", {key = "i2"}), t".", i(2, "Text", {key = "i0"})}, {i(1, jt({"Data", ".", "Text"}))}}, {key = "i1"})
	}),
	s({trig = "import", descr = "(import)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "Data.Text", {key = "i0"})
	}),
	s({trig = "import2", descr = "(import2)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "Data.Text", {key = "i1"}), t" (", i(0, "head", {key = "i0"}), t")"
	}),
	s({trig = "impq", descr = "(impq) \"Qualified import\"", priority = -50, trigEngine = te("")}, {
		t"import qualified ", c(1, {{i(1, "Data", {key = "i2"}), t".", i(2, "Text", {key = "i3"})}, {i(1, jt({"Data", ".", "Text"}))}}, {key = "i1"}), t" as ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"haskell", 9}, "snip.rv = t[1].split(\".\")[-1]", python_globals, args, snip, "", am[9])}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "importq", descr = "(importq)", priority = -1000, trigEngine = te("w")}, {
		t"import qualified ", i(1, "Data.Text", {key = "i1"}), t" as ", i(0, "T", {key = "i0"})
	}),
	s({trig = "inst", descr = "(inst)", priority = -1000, trigEngine = te("w")}, {
		t"instance ", i(1, "Monoid", {key = "i1"}), t" ", i(2, "Type", {key = "i2"}), t" where", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ty", descr = "(ty)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Type", {key = "i1"}), t" = ", i(0, "Type", {key = "i0"})
	}),
	s({trig = "type", descr = "(type)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Type", {key = "i1"}), t" = ", i(0, "Type", {key = "i0"})
	}),
	s({trig = "da", descr = "(da)", priority = -1000, trigEngine = te("w")}, {
		t"data ", i(1, "Type", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t" ", i(0, "Int", {key = "i0"})
	}),
	s({trig = "data", descr = "(data)", priority = -1000, trigEngine = te("w")}, {
		t"data ", i(1, "Type", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t" ", i(0, "Int", {key = "i0"})
	}),
	s({trig = "newtype", descr = "(newtype)", priority = -1000, trigEngine = te("w")}, {
		t"newtype ", i(1, "Type", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t" ", i(0, "Int", {key = "i0"})
	}),
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "Class", {key = "i1"}), t" a where", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "module", descr = "(module)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end), t" (", nl(),
		t") where", nl(),
		f(function(args, snip) return c_viml("expand(\'%\') =~ \'Main\' ? \"\\nmain :: IO ()\\nmain = undefined\" : \"\"") end), nl()
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end), nl(),
		t"\t( ", i(1, "", {key = "i1"}), nl(),
		t"\t) where", nl(),
		nl(),
		f(function(args, snip) return c_viml("expand(\'%\') =~ \'Main\' ? \"\\nmain :: IO ()\\nmain = undefined\" : \"\"") end)
	}),
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"main :: IO ()", nl(),
		t"main = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "const", descr = "(const)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), nl(),
		cp(1), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn0", descr = "(fn0)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), nl(),
		cp(1), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn1", descr = "(fn1)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn2", descr = "(fn2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), nl(),
		cp(1), t" ", i(5, "", {key = "i5"}), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "fn3", descr = "(fn3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" :: ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), t" -> ", i(5, "a", {key = "i5"}), nl(),
		cp(1), t" ", i(6, "", {key = "i6"}), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "=>", descr = "(=>) \"Type constraint\"", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "Class", {key = "i1"}), t" ", i(2, "a", {key = "i2"}), t") => ", cp(2)
	}),
	s({trig = "ap", descr = "(ap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "map", {key = "i1"}), t" ", i(2, "fn", {key = "i2"}), t" ", i(0, "list", {key = "i0"})
	}),
	s({trig = "\\", descr = "(\\)", priority = -1000, trigEngine = te("w")}, {
		t"\\", i(1, "x", {key = "i1"}), t" -> ", i(0, "expression", {key = "i0"})
	}),
	s({trig = "(\\", descr = "((\\)", priority = -1000, trigEngine = te("w")}, {
		t"(\\", i(1, "x", {key = "i1"}), t" -> ", i(0, "expression", {key = "i0"}), t")"
	}),
	s({trig = "<-", descr = "(<-)", priority = -1000, trigEngine = te("w")}, {
		i(1, "a", {key = "i1"}), t" <- ", i(0, "m a", {key = "i0"})
	}),
	s({trig = "->", descr = "(->)", priority = -1000, trigEngine = te("w")}, {
		i(1, "m a", {key = "i1"}), t" -> ", i(0, "a", {key = "i0"})
	}),
	s({trig = "tup", descr = "(tup)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "a", {key = "i1"}), t", ", i(0, "b", {key = "i0"}), t")"
	}),
	s({trig = "tup2", descr = "(tup2)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), t", ", i(0, "c", {key = "i0"}), t")"
	}),
	s({trig = "tup3", descr = "(tup3)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), t", ", i(3, "c", {key = "i3"}), t", ", i(0, "d", {key = "i0"}), t")"
	}),
	s({trig = "rec", descr = "(rec)", priority = -1000, trigEngine = te("w")}, {
		i(1, "Record", {key = "i1"}), t" { ", i(2, "recFieldA", {key = "i2"}), t" = ", i(3, "undefined", {key = "i3"}), nl(),
		t"\t\t\t, ", i(4, "recFieldB", {key = "i4"}), t" = ", i(0, "undefined", {key = "i0"}), nl(),
		t"\t\t\t}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "something", {key = "i1"}), t" of", nl(),
		t"\t", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), nl(),
		t"in ", i(3, "", {key = "i3"})
	}),
	s({trig = "where", descr = "(where)", priority = -1000, trigEngine = te("w")}, {
		t"where", nl(),
		t"\t", i(1, "fn", {key = "i1"}), t" = ", i(0, "undefined", {key = "i0"})
	}),
	s({trig = "spec", descr = "(spec)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end), t" (main, spec) where", nl(),
		nl(),
		t"import Test.Hspec", nl(),
		t"import Test.QuickCheck", nl(),
		nl(),
		t"main :: IO ()", nl(),
		t"main = hspec spec", nl(),
		nl(),
		t"spec :: Spec", nl(),
		t"spec =", nl(),
		t"\tdescribe \"", i(1, "", {key = "i1"}), t"\" $ do", nl(),
		t"\t\tit \"", i(2, "", {key = "i2"}), t"\" $", nl(),
		t"\t\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "specf", descr = "(specf)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end), t" (main, spec) where", nl(),
		nl(),
		t"import Test.Hspec", nl(),
		t"import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)", nl(),
		nl(),
		t"main :: IO ()", nl(),
		t"main = hspecWith defaultConfig {configFastFail = True} spec", nl(),
		nl(),
		t"spec :: Spec", nl(),
		t"spec =", nl(),
		t"\tdescribe \"", i(1, "", {key = "i1"}), t"\" $ do", nl(),
		t"\t\tit \"", i(2, "", {key = "i2"}), t"\" $", nl(),
		t"\t\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "desc", descr = "(desc)", priority = -1000, trigEngine = te("w")}, {
		t"describe \"", i(1, "", {key = "i1"}), t"\" $ do", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "it", descr = "(it)", priority = -1000, trigEngine = te("w")}, {
		t"it \"", i(1, "", {key = "i1"}), t"\" $", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "itp", descr = "(itp)", priority = -1000, trigEngine = te("w")}, {
		t"it \"", i(1, "", {key = "i1"}), t"\" $ property $", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "sb", descr = "(sb)", priority = -1000, trigEngine = te("w")}, {
		t"`shouldBe` ", i(0, "", {key = "i0"})
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"{-| ", i(0, "", {key = "i0"}), nl(),
		t"-}"
	}),
	s({trig = "imp2", descr = "(imp2) \"Selective import\"", priority = -50, trigEngine = te("b")}, {
		t"import ", c(1, {{i(1, "Data", {key = "i2"}), t".", i(2, "Text", {key = "i3"})}, {i(1, jt({"Data", ".", "Text"}))}}, {key = "i1"}), t" (", i(2, "", {key = "i4"}), t")", i(0, "", {key = "i0"})
	}),
})
