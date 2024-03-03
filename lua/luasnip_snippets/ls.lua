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


ls.add_snippets("ls", {
	s({trig = "forinlet", descr = "(forinlet)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), nl(),
		t"\tlet ", cp(1), nl(),
		t"\t\t", i(3, "", {key = "i3"})
	}),
	s({trig = "fora", descr = "(fora)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "foro", descr = "(foro)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "key", {key = "i1"}), t", ", i(2, "value", {key = "i2"}), t" of ", i(3, "object", {key = "i3"}), nl(),
		t"\t", i(4, "", {key = "i4"})
	}),
	s({trig = "forr", descr = "(forr)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" from ", i(2, "start", {key = "i2"}), t" to ", i(3, "finish", {key = "i3"}), nl(),
		t"\t", i(4, "", {key = "i4"})
	}),
	s({trig = "forrb", descr = "(forrb)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" from ", i(2, "start", {key = "i2"}), t" to ", i(3, "finish", {key = "i3"}), t" by ", i(4, "step", {key = "i4"}), nl(),
		t"\t", i(5, "", {key = "i5"})
	}),
	s({trig = "forrex", descr = "(forrex)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" from ", i(2, "start", {key = "i2"}), t" til ", i(3, "finish", {key = "i3"}), nl(),
		t"\t", i(4, "", {key = "i4"})
	}),
	s({trig = "forrexb", descr = "(forrexb)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" from ", i(2, "start", {key = "i2"}), t" til ", i(3, "finish", {key = "i3"}), t" by ", i(4, "step", {key = "i4"}), nl(),
		t"\t", i(5, "", {key = "i5"})
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "args", {key = "i1"}), t") ->", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "bfun", descr = "(bfun)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "args", {key = "i1"}), t") ~>", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "cla", descr = "(cla) class .. extends .. constructor: ..", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
			t"\t", i(2, "", {key = "i2"})
		},
		{
			t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
			t"\t(", i(2, "args", {key = "i2"}), t") ->", nl(),
			t"\t\t", i(3, "", {key = "i3"}), nl(),
			nl(),
			t"\t", i(4, "", {key = "i4"})
		},
		{
			t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" extends ", i(2, "ParentClass", {key = "i2"}), nl(),
			t"\t", i(3, "", {key = "i3"})
		},
		{
			t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" extends ", i(2, "ParentClass", {key = "i2"}), nl(),
			t"\t(", i(3, "args", {key = "i3"}), t") ->", nl(),
			t"\t\t", i(4, "", {key = "i4"}), nl(),
			nl(),
			t"\t", i(5, "", {key = "i5"})
		},
	})),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "elif", descr = "(elif)", priority = -1000, trigEngine = te("w")}, {
		t"else if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ifte", descr = "(ifte)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then ", i(2, "", {key = "i2"}), t" else ", i(0, "", {key = "i0"})
	}),
	s({trig = "unl", descr = "(unl)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" unless ", i(0, "", {key = "i0"})
	}),
	s({trig = "swi", descr = "(swi)", priority = -1000, trigEngine = te("w")}, {
		t"switch ", i(1, "object", {key = "i1"}), nl(),
		t"case ", i(2, "value", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"default void"
	}),
	s({trig = "mat", descr = "(mat)", priority = -1000, trigEngine = te("w")}, {
		t"match ", i(1, "object", {key = "i1"}), nl(),
		t"| ", i(2, "value", {key = "i2"}), t" => ", i(3, "", {key = "i3"}), nl(),
		t"| otherwise => void"
	}),
	s({trig = "log", descr = "(log)", priority = -1000, trigEngine = te("w")}, {
		t"console.log ", i(1, "", {key = "i1"})
	}),
	s({trig = "str", descr = "(str)", priority = -1000, trigEngine = te("w")}, {
		t"JSON.stringify ", i(1, "", {key = "i1"}), t", void, 2"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"catch ", i(2, "error", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "req", descr = "(req)", priority = -1000, trigEngine = te("w")}, {
		d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t" = require \'", i(1, "", {key = "i1"}), t"\'", i(3, "", {key = "i3"})
	}),
	s({trig = "req!", descr = "(req!)", priority = -1000, trigEngine = te("w")}, {
		t"require! ", i(1, "", {key = "i1"})
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "root", {key = "i1"}), t" = exports ? this"
	}),
})
