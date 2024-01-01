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
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}, {9, 9}, {10, 10}, {11, 11}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
}
ls.add_snippets("javascript-d3", {
	s({trig = ".attr", descr = "(.attr)", priority = -1000, trigEngine = te("w")}, {
		t".attr(\"", i(1, "", {key = "i1"}), t"\", ", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = ".style", descr = "(.style)", priority = -1000, trigEngine = te("w")}, {
		t".style(\"", i(1, "", {key = "i1"}), t"\", ", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "axis", descr = "(axis)", priority = -1000, trigEngine = te("w")}, {
		t"d3.svg.axis()", nl(),
		t"  .orient(", i(1, "", {key = "i1"}), t")", nl(),
		t"  .scale(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "fd", descr = "(fd)", priority = -1000, trigEngine = te("w")}, {
		t"function(d) { ", i(1, "", {key = "i1"}), t" }"
	}),
	s({trig = "fdi", descr = "(fdi)", priority = -1000, trigEngine = te("w")}, {
		t"function(d, i) { ", i(1, "", {key = "i1"}), t" }"
	}),
	s({trig = "marginconvention", descr = "(marginconvention)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "margin", {key = "i1"}), t" = { top: ", i(2, "10", {key = "i2"}), t", right: ", i(3, "10", {key = "i3"}), t", bottom: ", i(4, "10", {key = "i4"}), t", left: ", i(5, "10", {key = "i5"}), t" };", nl(),
		t"var ", i(6, "width", {key = "i6"}), t" = ", i(7, "970", {key = "i7"}), t" - ", cp(1), t".left - ", cp(1), t".right;", nl(),
		t"var ", i(8, "height", {key = "i8"}), t" = ", i(9, "500", {key = "i9"}), t" - ", cp(1), t".top - ", cp(1), t".bottom;", nl(),
		nl(),
		t"var ", i(10, "svg", {key = "i10"}), t" = d3.select(\"", i(11, "", {key = "i11"}), t"\").append(\"svg\")", nl(),
		t"  .attr(\"width\", ", cp(6), t" + ", cp(1), t".left + ", cp(1), t".right)", nl(),
		t"  .attr(\"height\", ", cp(8), t" + ", cp(1), t".top + ", cp(1), t".bottom)", nl(),
		t"    .append(\"g\")", nl(),
		t"  .attr(\"transform\", \"translate(\" + ", cp(1), t".left + \",\" + ", cp(1), t".top + \")\")"
	}),
	s({trig = "nest", descr = "(nest)", priority = -1000, trigEngine = te("w")}, {
		t"d3.nest()", nl(),
		t"  .key(", i(1, "", {key = "i1"}), t")", nl(),
		t"  .entries(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "scale", descr = "(scale)", priority = -1000, trigEngine = te("w")}, {
		t"d3.scale.linear()", nl(),
		t"  .domain(", i(1, "", {key = "i1"}), t")", nl(),
		t"  .range(", i(2, "", {key = "i2"}), t")"
	}),
})
