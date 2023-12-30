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
	3,
	1,
	0,
	1,
	1,
	4,
	4,
	1,
	2,
	4,
	0,
	3,
	2,
	0,
	2,
	3,
}
ls.add_snippets("verilog", {
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end", nl(),
		t"else begin", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"end"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rep", descr = "(rep)", priority = -1000, trigEngine = te("w")}, {
		t"repeat (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case (", i(1, "/* variable */", {key = "i1"}), t")", nl(),
		t"\t", i(2, "/* value */", {key = "i2"}), t": begin", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\tend", nl(),
		t"\tdefault: begin", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\tend", nl(),
		t"endcase"
	}),
	s({trig = "casez", descr = "(casez)", priority = -1000, trigEngine = te("w")}, {
		t"casez (", i(1, "/* variable */", {key = "i1"}), t")", nl(),
		t"\t", i(2, "/* value */", {key = "i2"}), t": begin", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\tend", nl(),
		t"\tdefault: begin", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\tend", nl(),
		t"endcase"
	}),
	s({trig = "al", descr = "(al)", priority = -1000, trigEngine = te("w")}, {
		t"always @(", i(1, "/* sensitive list */", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'name\')")}, ""), {key = "i1"}) }) end), t" (", i(2, "", {key = "i2"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endmodule"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for (int ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t") begin", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"end"
	}),
	s({trig = "forev", descr = "(forev)", priority = -1000, trigEngine = te("w")}, {
		t"forever begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "void", {key = "i1"}), t" ", i(2, "name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endfunction: ", cp(2)
	}),
	s({trig = "task", descr = "(task)", priority = -1000, trigEngine = te("w")}, {
		t"task ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endtask: ", cp(1)
	}),
	s({trig = "ini", descr = "(ini)", priority = -1000, trigEngine = te("w")}, {
		t"initial begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "tdsp", descr = "(tdsp)", priority = -1000, trigEngine = te("w")}, {
		t"typedef struct packed {", nl(),
		t"\tint ", i(2, "data", {key = "i2"}), t";", nl(),
		t"} ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1_t\', \'name\')")}, ""), {key = "i1"}) }) end), t";"
	}),
	s({trig = "tde", descr = "(tde)", priority = -1000, trigEngine = te("w")}, {
		t"typedef enum ", i(2, "logic[15:0]", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", i(3, "REG = 16\'h0000", {key = "i3"}), nl(),
		t"} ", i(1, "my_dest_t", {key = "i1"}), t";"
	}),
})
