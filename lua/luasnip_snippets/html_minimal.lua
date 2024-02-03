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


local am = { -- list of argument numbers
	{1, 2},
	{1, 2},
	{1, 2, 3, 4, 5, 6, 7, 8},
	{1, 2, 3, 4, 5, 7},
	{2, 3, 7},
	{2, 3, 4, 5},
	{1, 2, 3},
}
ls.add_snippets("html_minimal", {
	s({trig = "id", descr = "(id)", priority = -49, trigEngine = te("")}, {
		t"id=\"", i(1, "", {key = "i1"}), t"\"", i(2, "", {key = "i2"})
	}),
	s({trig = "idn", descr = "(idn)", priority = -49, trigEngine = te("")}, {
		t"id=\"", i(1, "", {key = "i1"}), t"\" name=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\""
	}),
	s({trig = "label_and_input", descr = "(label_and_input)", priority = -49, trigEngine = te("")}, {
		t"<label for=\"", d(1, function(args) return sn(nil, {i(1, "", {key = "i1"})}) end, {}, {key = "i2"}), t"\">", cp(1), t"</label>", nl(),
		t"<input type=\"", i(2, "text", {key = "i3"}), t"\" name=\"", d(3, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"}), t"\"", d(4, function(args) return sn(nil, {t" id=\"", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i6"}), t"\""}) end, {}, {key = "i5"}), t" value=\"", i(5, "", {key = "i7"}), t"\" />", i(6, "", {key = "i8"})
	}),
	s({trig = "input", descr = "(input)", priority = -49, trigEngine = te("")}, {
		t"<input type=\"", i(1, "text", {key = "i1"}), t"\" value=\"", i(2, "", {key = "i2"}), t"\" name=\"", i(3, "", {key = "i3"}), t"\"", d(4, function(args) return sn(nil, {t" id=\"", d(1, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i5"}), t"\""}) end, {}, {key = "i4"}), t"/>", i(5, "", {key = "i7"})
	}),
	s({trig = "submit", descr = "(submit)", priority = -49, trigEngine = te("")}, {
		t"<input type=\"submit\" value=\"", i(1, "", {key = "i2"}), t"\" ", i(2, "", {key = "i3"}), t"/>", i(3, "", {key = "i7"})
	}),
	s({trig = "textarea", descr = "(textarea)", priority = -49, trigEngine = te("")}, {
		t"<textarea name=\"", i(1, "", {key = "i2"}), t"\"", d(2, function(args) return sn(nil, {t" id=\"", i(1, "", {key = "i4"}), t"\""}) end, {}, {key = "i3"}), t">", i(3, "", {key = "i5"}), t"</textarea>"
	}),
	s({trig = "img", descr = "(img)", priority = -49, trigEngine = te("")}, {
		t"<img src=\"", i(1, "", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {t" alt=\"", i(1, "", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), t"/>"
	}),
})
