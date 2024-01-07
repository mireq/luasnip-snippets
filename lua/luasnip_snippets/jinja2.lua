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
	{1, 2},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
}
ls.add_snippets("jinja2", {
	s({trig = "block", descr = "(block) \"block\"", priority = -50, trigEngine = te("b")}, {
		t"{% block ", i(1, "name", {key = "i1"}), t" %}", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"{% endblock ", cp(1), t" %}"
	}),
	s({trig = "{{", descr = "({{) \"variable\"", priority = -50, trigEngine = te("b")}, {
		t"{{ ", i(1, "", {key = "i1"}), t" }}"
	}),
	s({trig = "{#", descr = "({#) \"comment\"", priority = -50, trigEngine = te("b")}, {
		t"{# ", i(1, "", {key = "i1"}), t" #}"
	}),
	s({trig = "#", descr = "(#) \"comment\"", priority = -50, trigEngine = te("b")}, {
		t"{# ", i(1, "", {key = "i1"}), t" #}"
	}),
	s({trig = "raw", descr = "(raw) \"escaped block\"", priority = -50, trigEngine = te("b")}, {
		t"{% raw %}", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"{% endraw %}"
	}),
	s({trig = "extends", descr = "(extends) \"extends\"", priority = -50, trigEngine = te("b")}, {
		t"{% extends \"", i(1, "template", {key = "i1"}), t"\" %}"
	}),
	s({trig = "include", descr = "(include) \"include\"", priority = -50, trigEngine = te("b")}, {
		t"{% include \"", i(1, "template", {key = "i1"}), t"\" %}"
	}),
	s({trig = "import", descr = "(import) \"import\"", priority = -50, trigEngine = te("b")}, {
		t"{% import \"", i(1, "template", {key = "i1"}), t"\" %}"
	}),
	s({trig = "from", descr = "(from) \"from/import/as\"", priority = -50, trigEngine = te("b")}, {
		t"{% from \"", i(1, "template", {key = "i1"}), t"\" import ", i(2, "name", {key = "i2"}), d(3, function(args) return sn(nil, {t" as ", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"})}) end, {}, {key = "i3"}), t" %}"
	}),
	s({trig = "filter", descr = "(filter) \"filter\"", priority = -50, trigEngine = te("b")}, {
		t"{% filter ", i(1, "filter", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% endfilter %}"
	}),
	s({trig = "for", descr = "(for) \"for/else\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"{% for ", i(1, "item", {key = "i1"}), t" in ", i(2, "sequence", {key = "i2"}), t" %}", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"{% endfor %}"
		},
		{
			t"{% for ", i(1, "item", {key = "i1"}), t" in ", i(2, "sequence", {key = "i2"}), t" %}", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"{% else %}", nl(),
			t"\t", i(4, "", {key = "i4"}), nl(),
			t"{% endfor %}"
		},
	})),
	s({trig = "if", descr = "(if) \"if/elif/else\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"{% if ", i(1, "expr", {key = "i1"}), t" %}", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"{% endif %}"
		},
		{
			t"{% if ", i(1, "expr", {key = "i1"}), t" %}", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"{% else %}", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"{% endif %}"
		},
		{
			t"{% if ", i(1, "expr", {key = "i1"}), t" %}", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"{% elif %}", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"{% else %}", nl(),
			t"\t", i(4, "", {key = "i4"}), nl(),
			t"{% endif %}"
		},
	})),
	s({trig = "macro", descr = "(macro) \"macro\"", priority = -50, trigEngine = te("b")}, {
		t"{% macro ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% endmacro %}"
	}),
	s({trig = "call", descr = "(call) \"call\"", priority = -50, trigEngine = te("b")}, {
		t"{% call ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% endcall %}"
	}),
	s({trig = "set", descr = "(set) \"set\"", priority = -50, trigEngine = te("b")}, {
		t"{% set ", i(1, "name", {key = "i1"}), t" = ", i(2, "\'value\'", {key = "i2"}), t" %}"
	}),
	s({trig = "trans", descr = "(trans) \"translation\"", priority = -50, trigEngine = te("b")}, {
		t"{% trans %}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"{% endtrans %}"
	}),
	s({trig = "with", descr = "(with) \"with\"", priority = -50, trigEngine = te("b")}, {
		t"{% with %}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"{% endwith %}"
	}),
	s({trig = "autoescape", descr = "(autoescape) \"autoescape\"", priority = -50, trigEngine = te("b")}, {
		t"{% autoescape ", i(1, "true", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% endautoescape %}"
	}),
	s({trig = "batch", descr = "(batch) \"batch items\"", priority = -50, trigEngine = te("w")}, {
		t"batch(linecount=", i(1, "", {key = "i1"}), t", fill_with=", i(2, "None", {key = "i2"}), t")"
	}),
	s({trig = "dictsort", descr = "(dictsort) \"sort and yield (key, value) pairs\"", priority = -50, trigEngine = te("w")}, {
		t"dictsort(case_sensitive=", i(1, "False", {key = "i1"}), t", by=", i(2, "\'key\'", {key = "i2"}), t")"
	}),
	s({trig = "round", descr = "(round) \"round number\"", priority = -50, trigEngine = te("w")}, {
		t"round(precision=", i(1, "0", {key = "i1"}), t", method=", i(2, "\'common|ceil|floor\'", {key = "i2"}), t")"
	}),
	s({trig = "urlize", descr = "(urlize) \"convert plain-text url to <a/>\"", priority = -50, trigEngine = te("w")}, {
		t"urlize(trim_url_limit=", i(1, "None", {key = "i1"}), t", nofollow=", i(2, "False", {key = "i2"}), t")"
	}),
	s({trig = "wordwrap", descr = "(wordwrap) \"wordwrap\"", priority = -50, trigEngine = te("w")}, {
		t"wordwrap(width=", i(1, "79", {key = "i1"}), t", break_long_words=", i(2, "True", {key = "i2"}), t")"
	}),
	s({trig = "truncate", descr = "(truncate) \"truncate\"", priority = -50, trigEngine = te("w")}, {
		t"truncate(lenght=", i(1, "79", {key = "i1"}), t", killwords=", i(2, "False", {key = "i2"}), t", end=", i(3, "\'...\'\'", {key = "i3"}), t")"
	}),
	s({trig = "sum", descr = "(sum) \"sum of sequence of numbers + start\"", priority = -50, trigEngine = te("w")}, {
		t"sum(attribute=", i(1, "None", {key = "i1"}), t", start=", i(2, "0", {key = "i2"}), t")"
	}),
	s({trig = "sort", descr = "(sort) \"sort an iterable\"", priority = -50, trigEngine = te("w")}, {
		t"sort(reverse=", i(1, "False", {key = "i1"}), t", case_sensitive=", i(2, "False", {key = "i2"}), t", attribute=", i(3, "None", {key = "i3"}), t")"
	}),
	s({trig = "indent", descr = "(indent) \"indent\"", priority = -50, trigEngine = te("w")}, {
		t"indent(width=", i(1, "4", {key = "i1"}), t", indentfirst=", i(2, "False", {key = "i2"}), t")"
	}),
})
