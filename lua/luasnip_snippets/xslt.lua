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
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{1},
	{1, 2},
	{1, 2},
	{1},
	{1, 2, 3, 4},
	{1, 2},
	{1},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{0},
	{1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1},
}
ls.add_snippets("xslt", {
	s({trig = "apply-templates", descr = "(apply-templates) plain", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:apply-templates select=\"", i(1, "*", {key = "i1"}), t"\">", nl(),
			t"\t<xsl:with-param name=\"", i(2, "param", {key = "i2"}), t"\">", i(3, "", {key = "i3"}), t"</xsl:with-param>", i(4, "", {key = "i4"}), nl(),
			t"</xsl:apply-templates>", nl()
		},
		{
			t"<xsl:apply-templates select=\"", i(1, "*", {key = "i1"}), t"\">", nl(),
			t"\t<xsl:sort select=\"", i(2, "node", {key = "i2"}), t"\" order=\"", i(3, "ascending", {key = "i3"}), t"\" data-type=\"", i(4, "text", {key = "i4"}), t"\">", i(5, "", {key = "i5"}), nl(),
			t"</xsl:apply-templates>", nl()
		},
		{
			t"<xsl:apply-templates select=\"", i(1, "*", {key = "i1"}), t"\" />", nl()
		},
	})),
	s({trig = "attribute", descr = "(attribute) value-of", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:attribute name=\"", i(1, "name", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), t"</xsl:attribute>", nl()
		},
		{
			t"<xsl:attribute name=\"", i(1, "name", {key = "i1"}), t"\">", nl(),
			t"\t<xsl:value-of select=\"", i(2, "*", {key = "i2"}), t"\" />", nl(),
			t"</xsl:attribute>", nl()
		},
	})),
	s({trig = "call-template", descr = "(call-template) with-param", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:call-template name=\"", i(1, "template", {key = "i1"}), t"\" />", nl()
		},
		{
			t"<xsl:call-template name=\"", i(1, "template", {key = "i1"}), t"\">", nl(),
			t"\t<xsl:with-param name=\"", i(2, "param", {key = "i2"}), t"\">", i(3, "", {key = "i3"}), t"</xsl:with-param>", i(4, "", {key = "i4"}), nl(),
			t"</xsl:call-template>", nl()
		},
	})),
	s({trig = "choose", descr = "(choose)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:choose>", nl(),
		t"\t<xsl:when test=\"", i(1, "value", {key = "i1"}), t"\">", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t</xsl:when>", nl(),
		t"</xsl:choose>", nl()
	}),
	s({trig = "copy-of", descr = "(copy-of)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:copy-of select=\"", i(1, "*", {key = "i1"}), t"\" />", nl()
	}),
	s({trig = "for-each", descr = "(for-each)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:for-each select=\"", i(1, "*", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), nl(),
		t"</xsl:for-each>", nl()
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:if test=\"", i(1, "test", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), nl(),
		t"</xsl:if>", nl()
	}),
	s({trig = "import", descr = "(import)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:import href=\"", i(1, "stylesheet", {key = "i1"}), t"\" />", nl()
	}),
	s({trig = "include", descr = "(include)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:include href=\"", i(1, "stylesheet", {key = "i1"}), t"\" />", nl()
	}),
	s({trig = "otherwise", descr = "(otherwise)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:otherwise>", i(0, "", {key = "i0"}), nl(),
		t"</xsl:otherwise>", nl()
	}),
	s({trig = "param", descr = "(param)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:param name=\"", i(1, "name", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), nl(),
		t"</xsl:param>", nl()
	}),
	s({trig = "stylesheet", descr = "(stylesheet)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:stylesheet version=\"1.0\"", nl(),
		t"xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">", i(0, "", {key = "i0"}), nl(),
		t"</xsl:stylesheet>", nl()
	}),
	s({trig = "template", descr = "(template) named", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:template match=\"", i(1, "*", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), nl(),
			t"</xsl:template>", nl()
		},
		{
			t"<xsl:template name=\"", i(1, "name", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), nl(),
			t"</xsl:template>", nl()
		},
	})),
	s({trig = "text", descr = "(text)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:text>", i(0, "", {key = "i0"}), t"</xsl:text>", nl()
	}),
	s({trig = "value-of", descr = "(value-of)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:value-of select=\"", i(1, "*", {key = "i1"}), t"\" />", nl()
	}),
	s({trig = "variable", descr = "(variable) select", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:variable name=\"", i(1, "name", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), nl(),
			t"</xsl:variable>", nl()
		},
		{
			t"<xsl:variable select=\"", i(1, "*", {key = "i1"}), t"\" />", nl()
		},
	})),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"<xsl:when test=\"", i(1, "test", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), nl(),
		t"</xsl:when>", nl()
	}),
	s({trig = "with-param", descr = "(with-param) select", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"<xsl:with-param name=\"", i(1, "name", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</xsl:with-param>", nl()
		},
		{
			t"<xsl:with-param name=\"", i(1, "name", {key = "i1"}), t"\" select=\"", i(0, "*", {key = "i0"}), t"\" />", nl()
		},
	})),
})
