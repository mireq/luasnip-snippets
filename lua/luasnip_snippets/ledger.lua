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
	8,
	3,
}
ls.add_snippets("ledger", {
	s({trig = "t", descr = "(t) \"Transaction\"", priority = -50, trigEngine = te("b")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%Y\")")}, ""), {key = "i1"}) }) end), t"-", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%m\")")}, ""), {key = "i2"}) }) end), t"-", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%d\")")}, ""), {key = "i3"}) }) end), t" ", i(4, "*", {key = "i4"}), t" ", i(5, "Payee", {key = "i5"}), nl(),
		t"\t", i(6, "Expenses", {key = "i6"}), t"  \t\t$", i(7, "0.00", {key = "i7"}), nl(),
		t"\t", i(8, "Assets:Checking", {key = "i8"}), i(0, "", {key = "i0"})
	}),
	s({trig = "ent", descr = "(ent)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("strftime(\"%Y/%m/%d\")") end, {}), t" ", i(1, "transaction", {key = "i1"}), nl(),
		t"    ", i(2, "account", {key = "i2"}), t"    ", i(3, "value", {key = "i3"}), nl(),
		t"    ", i(0, "account", {key = "i0"})
	}),
})
