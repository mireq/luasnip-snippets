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
	{},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1, 2},
	{1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0},
	{1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
}
ls.add_snippets("awk", {
	s({trig = "#!", descr = "(#!) #!/usr/bin/awk -f", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/awk -f"
	}),
	s({trig = "inc", descr = "(inc) @include", priority = -1000, trigEngine = te("w")}, {
		t"@include \"", i(1, "", {key = "i1"}), t"\"", i(0, "", {key = "i0"})
	}),
	s({trig = "loa", descr = "(loa) @load", priority = -1000, trigEngine = te("w")}, {
		t"@load \"", i(1, "", {key = "i1"}), t"\"", i(0, "", {key = "i0"})
	}),
	s({trig = "beg", descr = "(beg) BEGIN { ... }", priority = -1000, trigEngine = te("w")}, {
		t"BEGIN {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "begf", descr = "(begf) BEGINFILE { ... }", priority = -1000, trigEngine = te("w")}, {
		t"BEGINFILE {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "end", descr = "(end) END { ... }", priority = -1000, trigEngine = te("w")}, {
		t"END {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "endf", descr = "(endf) ENDFILE { ... }", priority = -1000, trigEngine = te("w")}, {
		t"ENDFILE {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "pri", descr = "(pri) print", priority = -1000, trigEngine = te("w")}, {
		t"print ", i(1, "\"${2}\"", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "printf", descr = "(printf) printf", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "%s", {key = "i1"}), t"\\n\", ", i(2, "", {key = "i2"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "ign", descr = "(ign) IGNORECASE", priority = -1000, trigEngine = te("w")}, {
		t"IGNORECASE = ", i(1, "1", {key = "i1"})
	}),
	s({trig = "if", descr = "(if) if {...}", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) if ... else ...", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif) else if ...", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el) else {...}", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) while", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do) do ... while", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} while (", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "for", descr = "(for) for", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(2, "i", {key = "i2"}), t" = 0; i < ", i(1, "n", {key = "i1"}), t"; ", i(3, "++i", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore) for each", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "i", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "sw", descr = "(sw) switch", priority = -1000, trigEngine = te("w")}, {
		t"switch (", i(1, "", {key = "i1"}), t") {", nl(),
		t"case ", i(2, "", {key = "i2"}), t":", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"\tbreak", nl(),
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tbreak", nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) case", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tbreak"
	}),
})
