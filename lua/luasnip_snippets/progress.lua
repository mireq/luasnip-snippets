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
local su = require("luasnip_snippets.snip_utils")
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
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	1,
	2,
	3,
	1,
	0,
	0,
	0,
	0,
	0,
}
ls.add_snippets("progress", {
	s({trig = "defbuf", descr = "(defbuf)", priority = -1000, trigEngine = te("w")}, {
		t"DEFINE BUFFER b_", i(1, "TableName", {key = "i1"}), t" FOR ", cp(1), t" ", i(0, "", {key = "i0"}), t"."
	}),
	s({trig = "defvar", descr = "(defvar)", priority = -1000, trigEngine = te("w")}, {
		t"DEFINE VARIABLE ", i(1, "VariableName", {key = "i1"}), t" AS ", i(0, "", {key = "i0"}), t"."
	}),
	s({trig = "nl", descr = "(nl)", priority = -1000, trigEngine = te("w")}, {
		t"NO-LOCK"
	}),
	s({trig = "ne", descr = "(ne)", priority = -1000, trigEngine = te("w")}, {
		t"NO-ERROR"
	}),
	s({trig = "nle", descr = "(nle)", priority = -1000, trigEngine = te("w")}, {
		t"NO-LOCK NO-ERROR"
	}),
	s({trig = "ini", descr = "(ini)", priority = -1000, trigEngine = te("w")}, {
		t"INITIAL ", i(0, "?", {key = "i0"})
	}),
	s({trig = "nu", descr = "(nu)", priority = -1000, trigEngine = te("w")}, {
		t"NO-UNDO"
	}),
	s({trig = "err", descr = "(err)", priority = -1000, trigEngine = te("w")}, {
		t"ERROR"
	}),
	s({trig = "ff", descr = "(ff)", priority = -1000, trigEngine = te("w")}, {
		t"FIND FIRST ", i(1, "BufferName", {key = "i1"}), nl(),
		t"WHERE ", cp(1), t".${3}", t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "input", descr = "(input)", priority = -1000, trigEngine = te("w")}, {
		t"DEFINE INPUT PARAMETER ", i(1, "ParamName", {key = "i1"}), t" AS ", i(0, "", {key = "i0"}), t"."
	}),
	s({trig = "output", descr = "(output)", priority = -1000, trigEngine = te("w")}, {
		t"DEFINE OUTPUT PARAMETER ", i(1, "ParamName", {key = "i1"}), t" AS ", i(0, "ParamType", {key = "i0"}), t"."
	}),
	s({trig = "proc", descr = "(proc)", priority = -1000, trigEngine = te("w")}, {
		nl(),
		t"/******************************************************************************/", nl(),
		nl(),
		t"PROCEDURE ", i(1, "ProcName", {key = "i1"}), t":", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"END PROCEDURE. /* ", cp(1), t" */", nl(),
		nl(),
		t"/******************************************************************************/", nl()
	}),
	s({trig = "alert", descr = "(alert)", priority = -1000, trigEngine = te("w")}, {
		t"MESSAGE \"", i(1, "MessageContent", {key = "i1"}), t"\" ", i(2, "Data", {key = "i2"}), t" VIEW-AS ALERT-BOX."
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"IF ", i(1, "Condition", {key = "i1"}), nl(),
		t"THEN ", i(2, "Action", {key = "i2"}), nl(),
		i(3, "ELSE ${4:OtherWise}", {key = "i3"})
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"DO", i(1, " Clauses", {key = "i1"}), t":", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"END."
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		t"INTEGER"
	}),
	s({trig = "char", descr = "(char)", priority = -1000, trigEngine = te("w")}, {
		t"CHARACTER"
	}),
	s({trig = "log", descr = "(log)", priority = -1000, trigEngine = te("w")}, {
		t"LOGICAL"
	}),
	s({trig = "dec", descr = "(dec)", priority = -1000, trigEngine = te("w")}, {
		t"DECIMAL"
	}),
	s({trig = "sep", descr = "(sep)", priority = -1000, trigEngine = te("w")}, {
		t"/* ------------------------------------------------------------------------- */"
	}),
})
