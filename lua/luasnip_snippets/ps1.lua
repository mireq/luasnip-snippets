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
	{1},
	{1, 2},
	{1, 2, 3, 4, 5},
	{1, 2, 3},
	{0, 1},
	{1, 2, 3},
	{0, 1},
	{1, 2, 3, 4, 5},
	{0, 1, 2},
	{1},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6},
}
ls.add_snippets("ps1", {
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		t"class {", nl(),
		t"\t[string] ", i(1, "FirstName", {key = "i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "function", descr = "(function)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\t[CmdletBinding()]", nl(),
		t"\tparam (", nl(),
		t"\t\t[Parameter(Mandatory = $true)]", nl(),
		t"\t\t[string] ", i(2, "Param", {key = "i2"}), nl(),
		t"\t)", nl(),
		nl(),
		t"\tbegin {", nl(),
		t"\t}", nl(),
		nl(),
		t"\tprocess {", nl(),
		t"\t}", nl(),
		nl(),
		t"\tend {", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "splatting", descr = "(splatting)", priority = -1000, trigEngine = te("w")}, {
		t"$Params = @{", nl(),
		t"\t", i(1, "Param1", {key = "i1"}), t" = \'", i(2, "Value1", {key = "i2"}), t"\'", nl(),
		t"\t", i(3, "Param2", {key = "i3"}), t" = \'", i(4, "Value2", {key = "i4"}), t"\'", nl(),
		t"}", nl(),
		i(5, "CommandName", {key = "i5"}), t" @Params", nl()
	}),
	s({trig = "enum", descr = "(enum)", priority = -1000, trigEngine = te("w")}, {
		t"enum ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "item1", {key = "i2"}), nl(),
		t"\t", i(3, "item2", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ( ", i(1, "", {key = "i1"}), t" ) {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", nl(),
		t"else {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "while", descr = "(while)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "filtersort", descr = "(filtersort)", priority = -1000, trigEngine = te("w")}, {
		i(1, "command", {key = "i1"}), t" | Where-Object -FilterScript { $PSItem.", i(2, "property", {key = "i2"}), t" -", i(3, "operator", {key = "i3"}), t" \'", i(4, "expression", {key = "i4"}), t"\' } | Sort-Object -Property ", i(5, "sortproperty", {key = "i5"}), nl()
	}),
	s({trig = "foreach", descr = "(foreach)", priority = -1000, trigEngine = te("w")}, {
		t"foreach ( $", i(1, "iterator", {key = "i1"}), t" in $", i(2, "collection", {key = "i2"}), t" ) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "epcsv", descr = "(epcsv)", priority = -1000, trigEngine = te("w")}, {
		t"Export-CSV -NoTypeInformation -Path ", i(1, "path", {key = "i1"}), nl()
	}),
	s({trig = "help", descr = "(help)", priority = -1000, trigEngine = te("w")}, {
		t"<#", nl(),
		t".SYNOPSIS", nl(),
		t"\t", i(1, "Short Description", {key = "i1"}), nl(),
		t".DESCRIPTION", nl(),
		t"\t", i(2, "Full Description", {key = "i2"}), nl(),
		t".PARAMETER ", i(3, "Param1", {key = "i3"}), nl(),
		t"\t", d(4, function(args) return sn(nil, {t" ", cp(3), t" usage"}) end, {}, {key = "i4"}), nl(),
		t".EXAMPLE", nl(),
		t"\t", i(5, "Example", {key = "i5"}), nl(),
		t".NOTES", nl(),
		t"\t", i(6, "notes", {key = "i6"}), nl(),
		t".LINK", nl(),
		t"\t", i(7, "online help", {key = "i7"}), nl(),
		t"#>", nl()
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch ( ", i(1, "test", {key = "i1"}), t" ){", nl(),
		t"\t", i(2, "condition1", {key = "i2"}), t" { ", i(3, "action", {key = "i3"}), t" }", nl(),
		t"\t", i(4, "condition2", {key = "i4"}), t" { ", i(5, "action", {key = "i5"}), t" }", nl(),
		t"\tdefault { ", i(6, "action", {key = "i6"}), t" }"
	}),
})
