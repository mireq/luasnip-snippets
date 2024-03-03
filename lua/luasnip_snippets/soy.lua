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


ls.add_snippets("soy", {
	s({trig = "ns", descr = "(ns) \"Namespace\"", priority = -50, trigEngine = te("b")}, {
		t"{namespace ", i(1, "name", {key = "i1"}), t"}"
	}),
	s({trig = "tmpl", descr = "(tmpl) \"Template\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", d(2, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this template."}, " "), {key = "i2"}) }) end), nl(),
		t" */", nl(),
		t"{template .", i(1, "name", {key = "i1"}), t"}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/template}"
	}),
	s({trig = "msg", descr = "(msg) \"Message\"", priority = -50, trigEngine = te("b")}, {
		t"{msg desc=\"", i(1, "description", {key = "i1"}), t"\"}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/msg}"
	}),
	s({trig = "let", descr = "(let) \"let command\"", priority = -50, trigEngine = te("b")}, {
		t"{let $", i(1, "identifier", {key = "i1"}), t": ", i(2, "expression", {key = "i2"}), t" /}"
	}),
	s({trig = "if", descr = "(if) \"if .. (if)\"", priority = -50, trigEngine = te("b")}, {
		t"{if ", i(1, "expression", {key = "i1"}), t"}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/if}"
	}),
	s({trig = "ife", descr = "(ife) \"if .. else (ife)\"", priority = -50, trigEngine = te("b")}, {
		t"{if ", i(1, "expression", {key = "i1"}), t"}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{else}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/if}"
	}),
	s({trig = "eli", descr = "(eli) \"else if .. (eli)\"", priority = -50, trigEngine = te("b")}, {
		t"{elif ", i(1, "expression", {key = "i1"}), t"}", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fore", descr = "(fore) \"foreach command\"", priority = -50, trigEngine = te("b")}, {
		t"{foreach $", i(1, "var", {key = "i1"}), t" in ", i(2, "ref", {key = "i2"}), t"}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/foreach}"
	}),
	s({trig = "for", descr = "(for) \"for command\"", priority = -50, trigEngine = te("b")}, {
		t"{for $", i(1, "var", {key = "i1"}), t" in range(", i(2, "rangeexpr", {key = "i2"}), t")}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/for}"
	}),
	s({trig = "call", descr = "(call) \"template call\"", priority = -50, trigEngine = te("b")}, {
		t"{call ", i(1, "tmpl", {key = "i1"}), t"}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{/call}"
	}),
})
