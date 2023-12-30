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
	2,
	2,
	1,
	1,
	1,
	2,
}
ls.add_snippets("textile", {
	s({trig = "header", descr = "(header)", priority = -1000, trigEngine = te("w")}, {
		t"---", nl(),
		t"title: ", i(1, "title", {key = "i1"}), nl(),
		t"layout: post", nl(),
		t"date: ", i(2, "date", {key = "i2"}), t" ", i(0, "hour:minute:second", {key = "i0"}), t" -05:00", nl(),
		t"---", nl()
	}),
	s({trig = "img", descr = "(img)", priority = -1000, trigEngine = te("w")}, {
		t"!", i(1, "url", {key = "i1"}), t"(", i(2, "title", {key = "i2"}), t"):", i(0, "link", {key = "i0"}), t"!", nl()
	}),
	s({trig = "|", descr = "(|)", priority = -1000, trigEngine = te("w")}, {
		t"|", i(1, "", {key = "i1"}), t"|", nl()
	}),
	s({trig = "link", descr = "(link)", priority = -1000, trigEngine = te("w")}, {
		t"\"", i(1, "link text", {key = "i1"}), t"\":", i(0, "url", {key = "i0"}), nl()
	}),
	s({trig = "(", descr = "(()", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "Expand acronym", {key = "i1"}), t")", nl()
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "ref number", {key = "i1"}), t"] ", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"fn", cp(1), t". ", i(2, "footnote", {key = "i2"}), nl()
	}),
})
