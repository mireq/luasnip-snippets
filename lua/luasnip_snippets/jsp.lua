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
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1, 2},
	{1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
}
ls.add_snippets("jsp", {
	s({trig = "@page", descr = "(@page)", priority = -1000, trigEngine = te("w")}, {
		t"<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>"
	}),
	s({trig = "jstl", descr = "(jstl)", priority = -1000, trigEngine = te("w")}, {
		t"<%@ taglib uri=\"http://java.sun.com/jsp/jstl/core\" prefix=\"c\" %>", nl(),
		t"<%@ taglib uri=\"http://java.sun.com/jsp/jstl/functions\" prefix=\"fn\" %>"
	}),
	s({trig = "jstl:c", descr = "(jstl:c)", priority = -1000, trigEngine = te("w")}, {
		t"<%@ taglib uri=\"http://java.sun.com/jsp/jstl/core\" prefix=\"c\" %>"
	}),
	s({trig = "jstl:fn", descr = "(jstl:fn)", priority = -1000, trigEngine = te("w")}, {
		t"<%@ taglib uri=\"http://java.sun.com/jsp/jstl/functions\" prefix=\"fn\" %>"
	}),
	s({trig = "cpath", descr = "(cpath)", priority = -1000, trigEngine = te("w")}, {
		t"${pageContext.request.contextPath}"
	}),
	s({trig = "cout", descr = "(cout)", priority = -1000, trigEngine = te("w")}, {
		t"<c:out value=\"", i(1, "", {key = "i1"}), t"\" default=\"", i(0, "", {key = "i0"}), t"\" />"
	}),
	s({trig = "cset", descr = "(cset)", priority = -1000, trigEngine = te("w")}, {
		t"<c:set var=\"", i(1, "", {key = "i1"}), t"\" value=\"", i(0, "", {key = "i0"}), t"\" />"
	}),
	s({trig = "cremove", descr = "(cremove)", priority = -1000, trigEngine = te("w")}, {
		t"<c:remove var=\"", i(1, "", {key = "i1"}), t"\" scope=\"", i(0, "page", {key = "i0"}), t"\" />"
	}),
	s({trig = "ccatch", descr = "(ccatch)", priority = -1000, trigEngine = te("w")}, {
		t"<c:catch var=\"", i(0, "", {key = "i0"}), t"\" />"
	}),
	s({trig = "cif", descr = "(cif)", priority = -1000, trigEngine = te("w")}, {
		t"<c:if test=\"${", i(1, "", {key = "i1"}), t"}\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</c:if>"
	}),
	s({trig = "cchoose", descr = "(cchoose)", priority = -1000, trigEngine = te("w")}, {
		t"<c:choose>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</c:choose>"
	}),
	s({trig = "cwhen", descr = "(cwhen)", priority = -1000, trigEngine = te("w")}, {
		t"<c:when test=\"${", i(1, "", {key = "i1"}), t"}\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</c:when>"
	}),
	s({trig = "cother", descr = "(cother)", priority = -1000, trigEngine = te("w")}, {
		t"<c:otherwise>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</c:otherwise>"
	}),
	s({trig = "cfore", descr = "(cfore)", priority = -1000, trigEngine = te("w")}, {
		t"<c:forEach items=\"${", i(1, "", {key = "i1"}), t"}\" var=\"", i(2, "", {key = "i2"}), t"\" varStatus=\"", i(3, "", {key = "i3"}), t"\">", nl(),
		t"\t", d(4, function(args) return sn(nil, {t"<c:out value=\"", cp(2), t"\" />"}) end, {}, {key = "i0"}), nl(),
		t"</c:forEach>"
	}),
	s({trig = "cfort", descr = "(cfort)", priority = -1000, trigEngine = te("w")}, {
		t"<c:set var=\"", i(1, "", {key = "i1"}), t"\">", i(2, "item1,item2,item3", {key = "i2"}), t"</c:set>", nl(),
		t"<c:forTokens var=\"", i(3, "", {key = "i3"}), t"\" items=\"${", cp(1), t"}\" delims=\"", i(4, ",", {key = "i4"}), t"\">", nl(),
		t"\t", d(5, function(args) return sn(nil, {t"<c:out value=\"", cp(3), t"\" />"}) end, {}, {key = "i0"}), nl(),
		t"</c:forTokens>"
	}),
	s({trig = "cparam", descr = "(cparam)", priority = -1000, trigEngine = te("w")}, {
		t"<c:param name=\"", i(1, "", {key = "i1"}), t"\" value=\"", i(0, "", {key = "i0"}), t"\" />"
	}),
	s({trig = "cparam+", descr = "(cparam+)", priority = -1000, trigEngine = te("w")}, {
		t"<c:param name=\"", i(1, "", {key = "i1"}), t"\" value=\"", i(2, "", {key = "i2"}), t"\" />", nl(),
		t"cparam+", i(0, "", {key = "i0"})
	}),
	s({trig = "cimport", descr = "(cimport)", priority = -1000, trigEngine = te("w")}, {
		t"<c:import url=\"", i(1, "", {key = "i1"}), t"\" />"
	}),
	s({trig = "cimport+", descr = "(cimport+)", priority = -1000, trigEngine = te("w")}, {
		t"<c:import url=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t<c:param name=\"", i(2, "", {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\" />", nl(),
		t"\tcparam+", i(0, "", {key = "i0"}), nl(),
		t"</c:import>"
	}),
	s({trig = "curl", descr = "(curl)", priority = -1000, trigEngine = te("w")}, {
		t"<c:url value=\"", i(1, "", {key = "i1"}), t"\" var=\"", i(2, "", {key = "i2"}), t"\" />", nl(),
		t"<a href=\"${", cp(2), t"}\">", i(0, "", {key = "i0"}), t"</a>"
	}),
	s({trig = "curl+", descr = "(curl+)", priority = -1000, trigEngine = te("w")}, {
		t"<c:url value=\"", i(1, "", {key = "i1"}), t"\" var=\"", i(2, "", {key = "i2"}), t"\">", nl(),
		t"\t<c:param name=\"", i(4, "", {key = "i4"}), t"\" value=\"", i(5, "", {key = "i5"}), t"\" />", nl(),
		t"\tcparam+", i(0, "", {key = "i0"}), nl(),
		t"</c:url>", nl(),
		t"<a href=\"${", cp(2), t"}\">", i(3, "", {key = "i3"}), t"</a>"
	}),
	s({trig = "credirect", descr = "(credirect)", priority = -1000, trigEngine = te("w")}, {
		t"<c:redirect url=\"", i(0, "", {key = "i0"}), t"\" />"
	}),
	s({trig = "contains", descr = "(contains)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:contains(", i(1, "string", {key = "i1"}), t", ", i(0, "substr", {key = "i0"}), t")}"
	}),
	s({trig = "contains:i", descr = "(contains:i)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:containsIgnoreCase(", i(1, "string", {key = "i1"}), t", ", i(0, "substr", {key = "i0"}), t")}"
	}),
	s({trig = "endswith", descr = "(endswith)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:endsWith(", i(1, "string", {key = "i1"}), t", ", i(0, "suffix", {key = "i0"}), t")}"
	}),
	s({trig = "escape", descr = "(escape)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:escapeXml(", i(0, "string", {key = "i0"}), t")}"
	}),
	s({trig = "indexof", descr = "(indexof)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:indexOf(", i(1, "string", {key = "i1"}), t", ", i(0, "substr", {key = "i0"}), t")}"
	}),
	s({trig = "join", descr = "(join)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:join(", i(1, "collection", {key = "i1"}), t", ", i(0, "delims", {key = "i0"}), t")}"
	}),
	s({trig = "length", descr = "(length)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:length(", i(0, "collection_or_string", {key = "i0"}), t")}"
	}),
	s({trig = "replace", descr = "(replace)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:replace(", i(1, "string", {key = "i1"}), t", ", i(2, "substr", {key = "i2"}), t", ", i(0, "replace", {key = "i0"}), t")}"
	}),
	s({trig = "split", descr = "(split)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:split(", i(1, "string", {key = "i1"}), t", ", i(0, "delims", {key = "i0"}), t")}"
	}),
	s({trig = "startswith", descr = "(startswith)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:startsWith(", i(1, "string", {key = "i1"}), t", ", i(0, "prefix", {key = "i0"}), t")}"
	}),
	s({trig = "substr", descr = "(substr)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:substring(", i(1, "string", {key = "i1"}), t", ", i(2, "begin", {key = "i2"}), t", ", i(0, "end", {key = "i0"}), t")}"
	}),
	s({trig = "substr:a", descr = "(substr:a)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:substringAfter(", i(1, "string", {key = "i1"}), t", ", i(0, "substr", {key = "i0"}), t")}"
	}),
	s({trig = "substr:b", descr = "(substr:b)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:substringBefore(", i(1, "string", {key = "i1"}), t", ", i(0, "substr", {key = "i0"}), t")}"
	}),
	s({trig = "lc", descr = "(lc)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:toLowerCase(", i(0, "string", {key = "i0"}), t")}"
	}),
	s({trig = "uc", descr = "(uc)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:toUpperCase(", i(0, "string", {key = "i0"}), t")}"
	}),
	s({trig = "trim", descr = "(trim)", priority = -1000, trigEngine = te("w")}, {
		t"${fn:trim(", i(0, "string", {key = "i0"}), t")}"
	}),
})
