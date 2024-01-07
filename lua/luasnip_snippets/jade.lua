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
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1},
	{1},
	{1},
}
ls.add_snippets("jade", {
	s({trig = "rep", descr = "(rep)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-repeat=\'", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t"\')", nl()
	}),
	s({trig = "repf", descr = "(repf)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-repeat=\'", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t"\' | ", i(3, "", {key = "i3"}), t")", nl()
	}),
	s({trig = "repi", descr = "(repi)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-repeat=\'", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t"\' track by $index)", nl()
	}),
	s({trig = "hide", descr = "(hide)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-hide=\'", i(1, "", {key = "i1"}), t"\')", nl()
	}),
	s({trig = "show", descr = "(show)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-show=\'", i(1, "", {key = "i1"}), t"\')", nl()
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"div(ng-if=\'", i(1, "", {key = "i1"}), t"\')"
	}),
})
