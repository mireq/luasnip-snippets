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
	{0, 1, 2, 3},
	{0, 1, 2},
}
ls.add_snippets("ejs", {
	s({trig = "for", descr = "(for) \"ejs for loop\"", priority = 0, trigEngine = te("b")}, {
		t"<% for (let ", i(1, "i = 0", {key = "i1"}), t"; ", i(2, "i<arr.length", {key = "i2"}), t"; ", i(3, "i++", {key = "i3"}), t") { %>", nl(),
		t"\t", i(0, "body", {key = "i0"}), nl(),
		t"<% } %>"
	}),
	s({trig = "forE", descr = "(forE) \"ejs for Each loop\"", priority = 0, trigEngine = te("b")}, {
		t"<% ", i(1, "array", {key = "i1"}), t".forEach((", i(2, "single var", {key = "i2"}), t") => { %>", nl(),
		t"\t", i(0, "body", {key = "i0"}), nl(),
		t"<% }) %>"
	}),
})
