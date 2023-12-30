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
	1,
	1,
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	3,
	3,
	1,
}
ls.add_snippets("systemverilog", {
	s({trig = "forea", descr = "(forea)", priority = -1000, trigEngine = te("w")}, {
		t"foreach (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "dowh", descr = "(dowh)", priority = -1000, trigEngine = te("w")}, {
		t"do begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end while (", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "alc", descr = "(alc)", priority = -1000, trigEngine = te("w")}, {
		t"always_comb begin ", i(1, ": statement_label", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1)
	}),
	s({trig = "alff", descr = "(alff)", priority = -1000, trigEngine = te("w")}, {
		t"always_ff @(posedge ", i(1, "clk", {key = "i1"}), t") begin ", i(2, ": statement_label", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(2)
	}),
	s({trig = "all", descr = "(all)", priority = -1000, trigEngine = te("w")}, {
		t"always_latch begin ", i(1, ": statement_label", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1)
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "class_name", {key = "i1"}), t";", nl(),
		t"\t// data or class properties", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\t// initialization", nl(),
		t"\tfunction new();", nl(),
		t"\tendfunction : new", nl(),
		nl(),
		t"endclass : ", cp(1)
	}),
	s({trig = "types", descr = "(types)", priority = -1000, trigEngine = te("w")}, {
		t"typedef struct {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} ", i(1, "name_t", {key = "i1"}), t";"
	}),
	s({trig = "prog", descr = "(prog)", priority = -1000, trigEngine = te("w")}, {
		t"program ", i(1, "program_name", {key = "i1"}), t" ();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endprogram : ", cp(1)
	}),
	s({trig = "intf", descr = "(intf)", priority = -1000, trigEngine = te("w")}, {
		t"interface ", i(1, "program_name", {key = "i1"}), t" ();", nl(),
		t"\t// nets", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\t// clocking", nl(),
		nl(),
		t"\t// modports", nl(),
		nl(),
		t"endinterface : ", cp(1)
	}),
	s({trig = "clock", descr = "(clock)", priority = -1000, trigEngine = te("w")}, {
		t"clocking ", i(1, "clocking_name", {key = "i1"}), t" @(", i(2, "posedge", {key = "i2"}), t" ", i(3, "clk", {key = "i3"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclocking : ", cp(1)
	}),
	s({trig = "cg", descr = "(cg)", priority = -1000, trigEngine = te("w")}, {
		t"covergroup ", i(1, "group_name", {key = "i1"}), t" @(", i(2, "posedge", {key = "i2"}), t" ", i(3, "clk", {key = "i3"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endgroup : ", cp(1)
	}),
	s({trig = "pkg", descr = "(pkg)", priority = -1000, trigEngine = te("w")}, {
		t"package ", i(1, "package_name", {key = "i1"}), t";", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endpackage : ", cp(1)
	}),
})
