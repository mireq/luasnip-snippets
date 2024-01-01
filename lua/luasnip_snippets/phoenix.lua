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
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
}
ls.add_snippets("phoenix", {
	s({trig = "cont", descr = "(cont)", priority = -1000, trigEngine = te("w")}, {
		t"defmodule ", i(1, "AppName", {key = "i1"}), t"Web.", i(2, "ControllerName", {key = "i2"}), t"Controller do", nl(),
		t"\tuse ", cp(1), t"Web, :controller", nl(),
		t"\t", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"end", nl()
	}),
	s({trig = "view", descr = "(view)", priority = -1000, trigEngine = te("w")}, {
		t"defmodule ", i(1, "AppName", {key = "i1"}), t"Web.", i(2, "ViewName", {key = "i2"}), t"View do", nl(),
		t"\tuse ", cp(1), t"Web, :view", nl(),
		t"end", nl()
	}),
	s({trig = "chan", descr = "(chan)", priority = -1000, trigEngine = te("w")}, {
		t"defmodule ", i(1, "AppName", {key = "i1"}), t"Web.", i(2, "ChannelName", {key = "i2"}), t"Channel do", nl(),
		t"\tuse ", cp(1), t"Web, :channel", nl(),
		t"end"
	}),
})
