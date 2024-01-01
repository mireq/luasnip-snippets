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
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
}
ls.add_snippets("javascript-bemjson", {
	s({trig = "b", descr = "(b)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\tblock : \'", i(1, "name", {key = "i1"}), t"\',", nl(),
		t"\tcontent : [", nl(),
		t"\t\t\'", i(2, "content", {key = "i2"}), t"\'", nl(),
		t"\t]", nl(),
		t"}", nl()
	}),
	s({trig = "btc", descr = "(btc)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t block : \'", i(1, "name", {key = "i1"}), t"\',", nl(),
		t"\t content: \'", i(2, "content", {key = "i2"}), t"\'", nl(),
		t"}", nl()
	}),
	s({trig = "bwm", descr = "(bwm)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\tblock : \'", i(1, "name", {key = "i1"}), t"\',", nl(),
		t"\tmods: { ", i(2, "modName", {key = "i2"}), t": \'", i(3, "modVal", {key = "i3"}), t"\' },", nl(),
		t"\tcontent : [", nl(),
		t"\t\t\'", i(4, "content", {key = "i4"}), t"\'", nl(),
		t"\t]", nl(),
		t"}", nl()
	}),
	s({trig = "e", descr = "(e)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\telem : \'", i(1, "name", {key = "i1"}), t"\',", nl(),
		t"\tcontent : [", nl(),
		t"\t\t\'", i(2, "content", {key = "i2"}), t"\'", nl(),
		t"\t]", nl(),
		t"}", nl(),
		nl()
	}),
	s({trig = "mo", descr = "(mo)", priority = -1000, trigEngine = te("w")}, {
		t"mods : { ", i(1, "modName", {key = "i1"}), t" : \'", i(2, "modVal", {key = "i2"}), t"\' },", nl()
	}),
	s({trig = "mi", descr = "(mi)", priority = -1000, trigEngine = te("w")}, {
		t"mix : [ { ", i(1, "block", {key = "i1"}), t" : \'", i(2, "block", {key = "i2"}), t"\' } ],", nl()
	}),
	s({trig = "a", descr = "(a)", priority = -1000, trigEngine = te("w")}, {
		t"attrs : { ", i(1, "attr", {key = "i1"}), t" : \'", i(2, "val", {key = "i2"}), t"\' },", nl()
	}),
})
