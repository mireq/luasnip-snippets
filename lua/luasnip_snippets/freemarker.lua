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
	0,
	0,
	1,
	0,
	1,
	1,
	1,
	1,
	0,
	1,
	2,
	2,
	2,
	2,
	2,
	0,
	1,
}
ls.add_snippets("freemarker", {
	s({trig = "ver", descr = "(ver) \"${.version}\"", priority = -1000, trigEngine = te("w")}, {
		t"${.version}"
	}),
	s({trig = "int", descr = "(int) \"${interpolation}\"", priority = -1000, trigEngine = te("w")}, {
		t"${", d(1, function(args, snip) return sn(nil, { i(1, jt({"interpolation", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}"
	}),
	s({trig = "intd", descr = "(intd) \"${interpolation!\"default_string\"}\"", priority = -1000, trigEngine = te("w")}, {
		t"${", d(2, function(args, snip) return sn(nil, { i(1, jt({"interpolation", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t"!\"", i(1, "default_string", {key = "i1"}), t"\"}"
	}),
	s({trig = "com", descr = "(com) \"<#-- comment -->\"", priority = -1000, trigEngine = te("w")}, {
		t"<#-- ", d(1, function(args, snip) return sn(nil, { i(1, jt({"comment", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" -->"
	}),
	s({trig = "ass", descr = "(ass) \"<#assign variable_name = value />\"", priority = -1000, trigEngine = te("w")}, {
		t"<#assign ", i(1, "variable_name", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({"value", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t" />"
	}),
	s({trig = "assm", descr = "(assm) \"<#assign <#-- multiple lines --> />\"", priority = -1000, trigEngine = te("w")}, {
		t"<#assign", nl(),
		t"\t", i(1, "variable_name", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({"value", snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i2"}) }) end), nl(),
		t"/>"
	}),
	s({trig = "loc", descr = "(loc) \"<#local variable_name = value />\"", priority = -1000, trigEngine = te("w")}, {
		t"<#local ", i(1, "variable_name", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({"value", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t" />"
	}),
	s({trig = "locm", descr = "(locm) \"<#local <#-- multiple lines --> />\"", priority = -1000, trigEngine = te("w")}, {
		t"<#local", nl(),
		t"\t", i(1, "variable_name", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({"value", snip.env.LS_SELECT_DEDENT or {}}, "\t "), {key = "i2"}) }) end), nl(),
		t"/>"
	}),
	s({trig = "inc", descr = "(inc) \"<#include \\\"file.ftl\\\" />\"", priority = -1000, trigEngine = te("w")}, {
		t"<#include \"", d(1, function(args, snip) return sn(nil, { i(1, jt({"file.ftl", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"\" />"
	}),
	s({trig = "if", descr = "(if) \"<#if condition>...</#if>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#if ", i(1, "true", {key = "i1"}), t">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"</#if>"
	}),
	s({trig = "ife", descr = "(ife) \"<#if condition>...<#else>...</#if>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#if ", i(1, "true", {key = "i1"}), t">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"<#else>", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"</#if>"
	}),
	s({trig = "lis", descr = "(lis) \"<#list sequence as element>...</#list>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#list ", i(1, "sequence", {key = "i1"}), t" as ", i(2, "element", {key = "i2"}), t">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"</#list>"
	}),
	s({trig = "lish", descr = "(lish) \"<#list hashmap?keys as element>...</#list>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#list ", i(1, "hashmap", {key = "i1"}), t"?keys as ", i(2, "key", {key = "i2"}), t">", nl(),
		t"\t${", cp(2), t"}: ${", cp(1), t"[", cp(2), t"]}", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"</#list>"
	}),
	s({trig = "mac", descr = "(mac) \"<#macro macro_name param1>...</#macro>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#macro ", i(1, "macro_name", {key = "i1"}), t" ", i(2, "param1", {key = "i2"}), t">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"</#macro>"
	}),
	s({trig = "fun", descr = "(fun) \"<#function function_name param1>...</#function>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#function ", i(1, "function_name", {key = "i1"}), t" ", i(2, "param1", {key = "i2"}), t">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"</#function>"
	}),
	s({trig = "att", descr = "(att) \"<#attempt>...<#recover></#attempt>\"", priority = -1000, trigEngine = te("w")}, {
		t"<#attempt>", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"<#recover>", nl(),
		t"</#attempt>"
	}),
	s({trig = "?th", descr = "(?th) \"?then(true, false)\"", priority = -1000, trigEngine = te("w")}, {
		t"?then(", i(1, "true", {key = "i1"}), t", ", d(2, function(args, snip) return sn(nil, { i(1, jt({"false", snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t")"
	}),
})
