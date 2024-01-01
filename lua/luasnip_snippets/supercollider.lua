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
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
}
ls.add_snippets("supercollider", {
	s({trig = "b", descr = "(b)", priority = -1000, trigEngine = te("w")}, {
		t"(", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t")"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for)", priority = 0, trigEngine = te("")}, {
		t"for (", i(1, "1", {key = "i1"}), t", ", i(2, "10", {key = "i2"}), t") {", i(3, " |i", {key = "i3"}), t"|}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "sdef", descr = "(sdef)", priority = 0, trigEngine = te("")}, {
		t"SynthDef(\\", i(1, "synthName", {key = "i1"}), t", {", d(2, function(args) return sn(nil, {t" |", i(3, "x", {key = "i3"}), t"|"}) end, {}, {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}).add;"
	}),
})
