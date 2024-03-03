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


ls.add_snippets("dart", {
	s({trig = "af", descr = "(af)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "", {key = "i1"}), t") {", i(2, "", {key = "i2"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"print(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "deb", descr = "(deb)", priority = -1000, trigEngine = te("w")}, {
		t"debugger();", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "lib", descr = "(lib)", priority = -1000, trigEngine = te("w")}, {
		t"library ", i(1, "", {key = "i1"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "im", descr = "(im)", priority = -1000, trigEngine = te("w")}, {
		t"import \'package:", i(1, "", {key = "i1"}), t"/", i(2, "", {key = "i2"}), t".dart\';", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "rgx", descr = "(rgx)", priority = -1000, trigEngine = te("w")}, {
		t"new RegExp(r\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "var", descr = "(var)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"main() {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "st", descr = "(st)", priority = -1000, trigEngine = te("w")}, {
		t"static ", i(0, "", {key = "i0"})
	}),
	s({trig = "fi", descr = "(fi)", priority = -1000, trigEngine = te("w")}, {
		t"final ", i(0, "", {key = "i0"})
	}),
	s({trig = "re", descr = "(re)", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"})
	}),
	s({trig = "br", descr = "(br)", priority = -1000, trigEngine = te("w")}, {
		t"break;"
	}),
	s({trig = "th", descr = "(th)", priority = -1000, trigEngine = te("w")}, {
		t"throw ", i(0, "", {key = "i0"})
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"\", \"untitled\")")}, ""), {key = "i1"}) }) end), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "in", descr = "(in)", priority = -1000, trigEngine = te("w")}, {
		t"interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"\", \"untitled\")")}, ""), {key = "i1"}) }) end), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"implements ", i(0, "", {key = "i0"})
	}),
	s({trig = "ext", descr = "(ext)", priority = -1000, trigEngine = te("w")}, {
		t"extends ", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "true", {key = "i1"}), t") {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "true", {key = "i1"}), t") {", nl(),
		t"  ", i(2, "", {key = "i2"}), nl(),
		t"} else {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else"
	}),
	s({trig = "sw", descr = "(sw)", priority = -1000, trigEngine = te("w")}, {
		t"switch (", i(1, "", {key = "i1"}), t") {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cs", descr = "(cs)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t":", nl(),
		t"  ", i(0, "", {key = "i0"})
	}),
	s({trig = "de", descr = "(de)", priority = -1000, trigEngine = te("w")}, {
		t"default:", nl(),
		t"  ", i(0, "", {key = "i0"})
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for (var ", i(2, "i", {key = "i2"}), t" = 0, len = ", i(1, "things", {key = "i1"}), t".length; ", cp(2), t" < len; ", i(3, "++", {key = "i3"}), cp(2), t") {", nl(),
		t"  ", d(4, function(args, snip) return sn(nil, { i(1, jt({args[1], "[", args[2], "]"}, "  "), {key = "i0"}) }) end, {k"i1", k"i2"}), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"for (final ", i(2, "item", {key = "i2"}), t" in ", i(1, "itemList", {key = "i1"}), t") {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "dowh", descr = "(dowh)", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"} while (", cp(0), t");"
	}),
	s({trig = "as", descr = "(as)", priority = -1000, trigEngine = te("w")}, {
		t"assert(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"  ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "  "), {key = "i0"}) }) end), nl(),
		t"} catch (", i(1, "Exception e", {key = "i1"}), t") {", nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"  ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "  "), {key = "i0"}) }) end), nl(),
		t"} catch (", i(1, "Exception e", {key = "i1"}), t") {", nl(),
		t"} finally {", nl(),
		t"}"
	}),
})
