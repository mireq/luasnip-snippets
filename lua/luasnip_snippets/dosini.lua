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
}
ls.add_snippets("dosini", {
	s({trig = "ec", descr = "(ec)", priority = -1000, trigEngine = te("w")}, {
		t"; http://editorconfig.org", nl(),
		nl(),
		t"root = true", nl(),
		nl(),
		t"[*]", nl(),
		t"indent_style = ", i(1, "space_or_tab", {key = "i1"}), nl(),
		t"indent_size = ", i(2, "indent_size", {key = "i2"}), nl(),
		t"end_of_line = lf", nl(),
		t"charset = utf-8", nl(),
		t"trim_trailing_whitespace = true", nl(),
		t"insert_final_newline = true"
	}),
})
