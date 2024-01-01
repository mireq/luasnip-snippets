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
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
}
ls.add_snippets("htmltornado", {
	s({trig = "{", descr = "({)", priority = -1000, trigEngine = te("w")}, {
		t"{{ ", i(0, "", {key = "i0"}), t" }}", nl()
	}),
	s({trig = "extends", descr = "(extends)", priority = -1000, trigEngine = te("w")}, {
		t"{% extends \"", i(0, "base.html", {key = "i0"}), t"\" %}"
	}),
	s({trig = "autoescape", descr = "(autoescape)", priority = -1000, trigEngine = te("w")}, {
		t"{% autoescape ", i(0, "xhtml_escape | None", {key = "i0"}), t" %}"
	}),
	s({trig = "apply", descr = "(apply)", priority = -1000, trigEngine = te("w")}, {
		t"{% apply ", i(1, "function", {key = "i1"}), t" %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
	s({trig = "block", descr = "(block)", priority = -1000, trigEngine = te("w")}, {
		t"{% block ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"{% for ", i(1, "item", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
	s({trig = "from", descr = "(from)", priority = -1000, trigEngine = te("w")}, {
		t"{% from ", i(1, "x", {key = "i1"}), t" import ", i(0, "y", {key = "i0"}), t" %}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"{% elif ", i(0, "", {key = "i0"}), t" %}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"{% else %}"
	}),
	s({trig = "import", descr = "(import)", priority = -1000, trigEngine = te("w")}, {
		t"{% import ", i(0, "module", {key = "i0"}), t" %}"
	}),
	s({trig = "include", descr = "(include)", priority = -1000, trigEngine = te("w")}, {
		t"{% include \"", i(0, "filename", {key = "i0"}), t"\" %}"
	}),
	s({trig = "module", descr = "(module)", priority = -1000, trigEngine = te("w")}, {
		t"{% module ", i(0, "expression", {key = "i0"}), t" %}"
	}),
	s({trig = "raw", descr = "(raw)", priority = -1000, trigEngine = te("w")}, {
		t"{% raw ", i(0, "expression", {key = "i0"}), t" %}"
	}),
	s({trig = "set", descr = "(set)", priority = -1000, trigEngine = te("w")}, {
		t"{% set ", i(1, "x", {key = "i1"}), t" = ", i(0, "y", {key = "i0"}), t" %}"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"{% try %}", nl(),
		t"  ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "  "), {key = "i1"}) }) end), nl(),
		t"{% except %}", nl(),
		t"  ", i(2, "", {key = "i2"}), nl(),
		t"{% finallly %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"{% while ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"{% end %}"
	}),
})
