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
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
}
ls.add_snippets("lfe", {
	s({trig = "defmo", descr = "(defmo)", priority = -1000, trigEngine = te("w")}, {
		t"(defmodule ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"\t(export ", i(2, "all", {key = "i2"}), t"))", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"(defun ", i(1, "", {key = "i1"}), t" (", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ltest", descr = "(ltest)", priority = -1000, trigEngine = te("w")}, {
		t"(defmodule ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"\t(behaviour ltest-unit)", nl(),
		t"\t(export all))", nl(),
		nl(),
		t"(include-lib \"ltest/include/ltest-macros.lfe\")", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"(deftest ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
})
