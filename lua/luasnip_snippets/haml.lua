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
	0,
	0,
	1,
	1,
	1,
	2,
	2,
	4,
	2,
	1,
	1,
}
ls.add_snippets("haml", {
	s({trig = "t", descr = "(t)", priority = -1000, trigEngine = te("w")}, {
		t"%table", nl(),
		t"\t%tr", nl(),
		t"\t\t%th", nl(),
		t"\t\t\t", i(1, "headers", {key = "i1"}), nl(),
		t"\t%tr", nl(),
		t"\t\t%td", nl(),
		t"\t\t\t", i(0, "headers", {key = "i0"})
	}),
	s({trig = "ul", descr = "(ul)", priority = -1000, trigEngine = te("w")}, {
		t"%ul", nl(),
		t"\t%li", nl(),
		t"\t\t", i(0, "item", {key = "i0"}), nl(),
		t"\t%li"
	}),
	s({trig = "rp", descr = "(rp)", priority = -1000, trigEngine = te("w")}, {
		t"= render :partial => \"", i(0, "item", {key = "i0"}), t"\""
	}),
	s({trig = "rpc", descr = "(rpc)", priority = -1000, trigEngine = te("w")}, {
		t"= render :partial => \"", i(1, "item", {key = "i1"}), t"\", :collection => ", t"@", cp(1), t"s"
	}),
	s({trig = "rpl", descr = "(rpl)", priority = -1000, trigEngine = te("w")}, {
		t"= render :partial => \"", i(1, "item", {key = "i1"}), t"\", :locals => { :", cp(1), t" => ", t"@", cp(1), t" }"
	}),
	s({trig = "rpo", descr = "(rpo)", priority = -1000, trigEngine = te("w")}, {
		t"= render :partial => \"", i(1, "item", {key = "i1"}), t"\", :object => ", t"@", cp(1)
	}),
	s({trig = "lt", descr = "(lt)", priority = -1000, trigEngine = te("w")}, {
		t"= link_to ", i(1, "name", {key = "i1"}), t", ", i(2, "dest", {key = "i2"})
	}),
	s({trig = "mt", descr = "(mt)", priority = -1000, trigEngine = te("w")}, {
		t"= mail_to ", i(1, "email_address", {key = "i1"}), t", ", i(2, "name", {key = "i2"})
	}),
	s({trig = "mts", descr = "(mts)", priority = -1000, trigEngine = te("w")}, {
		t"= mail_to ", i(1, "email_address", {key = "i1"}), t", ", i(2, "name", {key = "i2"}), t", :subject => ", i(3, "", {key = "i3"}), t", :body => ", i(4, "", {key = "i4"})
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"- if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"- else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ifp", descr = "(ifp)", priority = -1000, trigEngine = te("w")}, {
		t"- if ", i(1, "", {key = "i1"}), t".presence?", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "ntc", descr = "(ntc)", priority = -1000, trigEngine = te("w")}, {
		t"= number_to_currency(", i(1, "", {key = "i1"}), t")"
	}),
})
