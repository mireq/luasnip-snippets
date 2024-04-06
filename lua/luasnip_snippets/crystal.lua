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
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


ls.add_snippets("crystal", {
	s({trig = "req", descr = "(req) require", priority = -1000, trigEngine = te("w")}, {
		t"require \"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), nl(),
		t"when ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"when ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "method_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "pdef", descr = "(pdef)", priority = -1000, trigEngine = te("w")}, {
		t"private def ", i(1, "method_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "cla", descr = "(cla) class .. end", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \"\\(_\\|^\\)\\(.\\)\", \"\\u\\2\", \"g\")")}, ""), {key = "i1"}) }) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mod", descr = "(mod) class .. end", priority = -1000, trigEngine = te("w")}, {
		t"module ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \"\\(_\\|^\\)\\(.\\)\", \"\\u\\2\", \"g\")")}, ""), {key = "i1"}) }) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "r", descr = "(r)", priority = -1000, trigEngine = te("w")}, {
		t"getter ", i(0, "name", {key = "i0"})
	}),
	s({trig = "r!", descr = "(r!)", priority = -1000, trigEngine = te("w")}, {
		t"getter! ", i(0, "name", {key = "i0"})
	}),
	s({trig = "r?", descr = "(r?)", priority = -1000, trigEngine = te("w")}, {
		t"getter? ", i(0, "name", {key = "i0"})
	}),
	s({trig = "w", descr = "(w)", priority = -1000, trigEngine = te("w")}, {
		t"setter ", i(0, "name", {key = "i0"})
	}),
	s({trig = "w!", descr = "(w!)", priority = -1000, trigEngine = te("w")}, {
		t"setter! ", i(0, "name", {key = "i0"})
	}),
	s({trig = "w?", descr = "(w?)", priority = -1000, trigEngine = te("w")}, {
		t"setter? ", i(0, "name", {key = "i0"})
	}),
	s({trig = "rw", descr = "(rw)", priority = -1000, trigEngine = te("w")}, {
		t"property ", i(0, "name", {key = "i0"})
	}),
	s({trig = "rw!", descr = "(rw!)", priority = -1000, trigEngine = te("w")}, {
		t"property! ", i(0, "name", {key = "i0"})
	}),
	s({trig = "rw?", descr = "(rw?)", priority = -1000, trigEngine = te("w")}, {
		t"property? ", i(0, "name", {key = "i0"})
	}),
	s({trig = "defs", descr = "(defs)", priority = -1000, trigEngine = te("w")}, {
		t"def self.", i(1, "class_method_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defi", descr = "(defi)", priority = -1000, trigEngine = te("w")}, {
		t"def initialize(", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "dov", descr = "(dov)", priority = -1000, trigEngine = te("w")}, {
		t"do |", i(1, "v", {key = "i1"}), t"|", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "desc", descr = "(desc)", priority = -1000, trigEngine = te("w")}, {
		t"describe ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(vim_snippets#Filename(), \"_spec$\", \"\", \"\"), \"\\(_\\|^\\)\\(.\\)\", \"\\u\\2\", \"g\")")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "it", descr = "(it)", priority = -1000, trigEngine = te("w")}, {
		t"it \"", i(1, "", {key = "i1"}), t"\" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "\\b(de)?f", descr = "(\\b(de)?f) \"def <name>...\"", priority = -50, trigEngine = te("r"), regTrig = true}, {
		t"def ", i(1, "method_name", {key = "i1"}), c(2, {{t"(", i(1, "*args", {key = "i3"}), t")"}, {i(1, jt({"(", "*args", ")"}))}}, {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "\\b(pde)?f", descr = "(\\b(pde)?f) \"private def <name>...\"", priority = -50, trigEngine = te("r"), regTrig = true}, {
		t"private def ", i(1, "method_name", {key = "i1"}), c(2, {{t"(", i(1, "*args", {key = "i3"}), t")"}, {i(1, jt({"(", "*args", ")"}))}}, {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
})
