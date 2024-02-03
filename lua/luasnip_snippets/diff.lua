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
	{0, 1, 2, 3, 4, 5, 6, 7, 8},
}
ls.add_snippets("diff", {
	s({trig = "header", descr = "(header) DEP-3 style header", priority = -1000, trigEngine = te("w")}, {
		t"Description: ", i(1, "", {key = "i1"}), nl(),
		t"Origin: ", i(2, "vendor|upstream|other", {key = "i2"}), t", ", i(3, "url of the original patch", {key = "i3"}), nl(),
		t"Bug: ", i(4, "url in upstream bugtracker", {key = "i4"}), nl(),
		t"Forwarded: ", i(5, "no|not-needed|url", {key = "i5"}), nl(),
		t"Author: ", d(6, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i6"}) }) end), nl(),
		t"Reviewed-by: ", i(7, "name and email", {key = "i7"}), nl(),
		t"Last-Update: ", d(8, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%Y-%m-%d\")")}, ""), {key = "i8"}) }) end), nl(),
		t"Applied-Upstream: ", i(0, "upstream version|url|commit", {key = "i0"}), nl()
	}),
})
