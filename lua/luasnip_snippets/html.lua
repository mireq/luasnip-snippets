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
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{1, 2, 3},
	{},
	{},
	{},
	{0, 1},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{1, 2},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0},
	{1, 2},
	{1},
	{0, 1, 2, 3},
	{1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
	{1, 2, 3},
	{0},
	{0, 1},
	{0},
	{0},
	{1},
	{0},
	{1},
	{1},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{1},
	{1},
	{1},
	{},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{1, 2, 3},
	{0},
	{1},
	{0, 1},
	{0, 1},
	{1, 2, 3},
	{0},
	{1},
	{0},
	{0},
	{0, 1},
	{0, 1, 2},
	{1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1},
	{0},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{},
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2, 3},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1},
	{1},
	{1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5},
	{1},
	{0},
	{0},
	{0, 1},
	{1},
	{0, 1},
	{1, 2},
	{1, 2, 3, 4, 5},
	{1},
	{1},
	{1, 2},
	{1},
	{1},
	{1},
	{1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6},
	{1},
	{0},
	{0},
	{0},
	{1, 2},
	{0},
	{0},
	{1},
	{0},
	{},
	{},
	{1},
	{1},
	{0, 1},
	{0, 1},
	{1},
	{1, 2, 3},
	{1, 2, 3, 4, 5},
	{1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{1, 2},
	{1, 2, 3},
	{0},
	{0, 1},
	{0, 1},
	{1, 2},
	{1},
	{1},
	{1},
	{0},
	{0},
	{0},
	{1},
	{1},
	{0},
	{0},
	{0, 1, 2},
	{1, 3},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{1},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1, 2},
	{1},
	{0},
	{1},
	{0},
	{1},
	{0},
	{0, 1},
	{0, 1},
	{1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
	{1, 2},
	{1},
	{0},
	{0, 1},
	{1, 2, 3, 4, 5},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6, 7},
	{1},
	{},
	{},
	{},
	{1},
	{1},
	{1, 2},
	{0, 1, 2},
	{1},
	{1, 2, 3},
	{1, 2},
	{1},
	{1, 2},
}

local python_globals = {
	[[def x(snip):
	if snip.ft.startswith("x"):
		snip.rv = '/'
	else:
		snip.rv = ""]]
}


ls.add_snippets("html", {
	s({trig = "nbs", descr = "(nbs)", priority = -1000, trigEngine = te("w")}, {
		t"&nbsp;"
	}),
	s({trig = "left", descr = "(left) \"Left (left)\"", priority = -50, trigEngine = te("")}, {
		t"&#x2190;"
	}),
	s({trig = "right", descr = "(right) \"Right (right)\"", priority = -50, trigEngine = te("")}, {
		t"&#x2192;"
	}),
	s({trig = "up", descr = "(up) \"Up (up)\"", priority = -50, trigEngine = te("")}, {
		t"&#x2191;"
	}),
	s({trig = "down", descr = "(down) \"Down (down)\"", priority = -50, trigEngine = te("")}, {
		t"&#x2193;"
	}),
	s({trig = "return", descr = "(return) \"Return (return)\"", priority = -50, trigEngine = te("")}, {
		t"&#x21A9;"
	}),
	s({trig = "backtab", descr = "(backtab)", priority = -1000, trigEngine = te("w")}, {
		t"&#x21E4;"
	}),
	s({trig = "tab", descr = "(tab) \"Tab (tab)\"", priority = -50, trigEngine = te("")}, {
		t"&#x21E5;"
	}),
	s({trig = "shift", descr = "(shift) \"Shift (shift)\"", priority = -50, trigEngine = te("")}, {
		t"&#x21E7;"
	}),
	s({trig = "ctrl", descr = "(ctrl)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2303;"
	}),
	s({trig = "enter", descr = "(enter) \"Enter (enter)\"", priority = -50, trigEngine = te("")}, {
		t"&#x2305;"
	}),
	s({trig = "cmd", descr = "(cmd)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2318;"
	}),
	s({trig = "option", descr = "(option) \"Option\"", priority = -50, trigEngine = te("w")}, {
		t"<option", d(1, function(args) return sn(nil, {t" value=\"", i(1, "option", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t">", d(2, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i3"}), t"</option>"
	}),
	s({trig = "delete", descr = "(delete)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2326;"
	}),
	s({trig = "backspace", descr = "(backspace)", priority = -1000, trigEngine = te("w")}, {
		t"&#x232B;"
	}),
	s({trig = "esc", descr = "(esc)", priority = -1000, trigEngine = te("w")}, {
		t"&#x238B;"
	}),
	s({trig = "//", descr = "(//)", priority = -1000, trigEngine = te("w")}, {
		t"<!-- ", i(1, "", {key = "i1"}), t" -->", i(0, "", {key = "i0"})
	}),
	s({trig = "docts", descr = "(docts)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"", nl(),
		t"\"http://www.w3.org/TR/html4/strict.dtd\">"
	}),
	s({trig = "doct", descr = "(doct)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"", nl(),
		t"\"http://www.w3.org/TR/html4/loose.dtd\">"
	}),
	s({trig = "doct5", descr = "(doct5)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE HTML>"
	}),
	s({trig = "docxf", descr = "(docxf)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"", nl(),
		t"\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">"
	}),
	s({trig = "docxs", descr = "(docxs)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"", nl(),
		t"\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"
	}),
	s({trig = "docxt", descr = "(docxt)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"", nl(),
		t"\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"
	}),
	s({trig = "docx", descr = "(docx)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"", nl(),
		t"\"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">"
	}),
	s({trig = "attr", descr = "(attr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "attribute", {key = "i1"}), t"=\"", i(0, "property", {key = "i0"}), t"\""
	}),
	s({trig = "attr+", descr = "(attr+)", priority = -1000, trigEngine = te("w")}, {
		i(1, "attribute", {key = "i1"}), t"=\"", i(2, "property", {key = "i2"}), t"\" attr+"
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t"class=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "#", descr = "(#)", priority = -1000, trigEngine = te("w")}, {
		t"id=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "alt", descr = "(alt)", priority = -1000, trigEngine = te("w")}, {
		t"alt=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "charset", descr = "(charset)", priority = -1000, trigEngine = te("w")}, {
		t"charset=\"", i(1, "utf-8", {key = "i1"}), t"\""
	}),
	s({trig = "data", descr = "(data) \"<data>\"", priority = -50, trigEngine = te("")}, {
		t"<data value=\"", i(2, "", {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</data>"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "height", descr = "(height)", priority = -1000, trigEngine = te("w")}, {
		t"height=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "href", descr = "(href)", priority = -1000, trigEngine = te("w")}, {
		t"href=\"", i(1, "#", {key = "i1"}), t"\""
	}),
	s({trig = "lang", descr = "(lang)", priority = -1000, trigEngine = te("w")}, {
		t"lang=\"", i(1, "en", {key = "i1"}), t"\""
	}),
	s({trig = "media", descr = "(media)", priority = -1000, trigEngine = te("w")}, {
		t"media=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "name", descr = "(name)", priority = -1000, trigEngine = te("w")}, {
		t"name=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "rel", descr = "(rel)", priority = -1000, trigEngine = te("w")}, {
		t"rel=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "scope", descr = "(scope)", priority = -1000, trigEngine = te("w")}, {
		t"scope=\"", i(1, "row", {key = "i1"}), t"\""
	}),
	s({trig = "src", descr = "(src)", priority = -1000, trigEngine = te("w")}, {
		t"src=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "title=", descr = "(title=)", priority = -1000, trigEngine = te("w")}, {
		t"title=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "type", descr = "(type)", priority = -1000, trigEngine = te("w")}, {
		t"type=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "value", descr = "(value)", priority = -1000, trigEngine = te("w")}, {
		t"value=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "width", descr = "(width)", priority = -1000, trigEngine = te("w")}, {
		t"width=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "a", descr = "(a) \"Link\"", priority = -50, trigEngine = te("w")}, {
		t"<a href=\"", d(1, function(args) return sn(nil, {t"http://www.", i(1, "url.com", {key = "i2"})}) end, {}, {key = "i1"}), t"\"", i(2, " target=\"_blank\"", {key = "i3"}), t">", i(3, "Anchor Text", {key = "i4"}), t"</a>"
	}),
	s({trig = "a.", descr = "(a.)", priority = -1000, trigEngine = te("w")}, {
		t"<a class=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "#", {key = "i2"}), t"\">", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), t"</a>"
	}),
	s({trig = "a#", descr = "(a#)", priority = -1000, trigEngine = te("w")}, {
		t"<a id=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "#", {key = "i2"}), t"\">", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), t"</a>"
	}),
	s({trig = "a:ext", descr = "(a:ext)", priority = -1000, trigEngine = te("w")}, {
		t"<a href=\"http://", i(1, "example.com", {key = "i1"}), t"\">", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), t"</a>"
	}),
	s({trig = "a:mail", descr = "(a:mail)", priority = -1000, trigEngine = te("w")}, {
		t"<a href=\"mailto:", i(1, "joe@example.com", {key = "i1"}), t"?subject=", i(2, "feedback", {key = "i2"}), t"\">", i(0, "email me", {key = "i0"}), t"</a>"
	}),
	s({trig = "ac", descr = "(ac)", priority = -1000, trigEngine = te("w")}, {
		t"<a href=\"", f(function(args, snip) return c_viml("@+") end), t"\">", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i0"}) }) end), t"</a>"
	}),
	s({trig = "abbr", descr = "(abbr) \"<abbr>\"", priority = -50, trigEngine = te("w")}, {
		t"<abbr title=\"", i(2, "", {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</abbr>"
	}),
	s({trig = "address", descr = "(address) \"<address>\"", priority = -50, trigEngine = te("w")}, {
		t"<address>", i(1, "", {key = "i1"}), t"</address>"
	}),
	s({trig = "area", descr = "(area)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"", i(1, "rect", {key = "i1"}), t"\" coords=\"", i(2, "", {key = "i2"}), t"\" href=\"", i(3, "", {key = "i3"}), t"\" alt=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "area+", descr = "(area+)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"", i(1, "rect", {key = "i1"}), t"\" coords=\"", i(2, "", {key = "i2"}), t"\" href=\"", i(3, "", {key = "i3"}), t"\" alt=\"", i(4, "", {key = "i4"}), t"\">", nl(),
		t"area+"
	}),
	s({trig = "area:c", descr = "(area:c)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"circle\" coords=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "area:d", descr = "(area:d)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"default\" coords=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "area:p", descr = "(area:p)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"poly\" coords=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "area:r", descr = "(area:r)", priority = -1000, trigEngine = te("w")}, {
		t"<area shape=\"rect\" coords=\"", i(1, "", {key = "i1"}), t"\" href=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "article", descr = "(article) \"<article>\"", priority = -50, trigEngine = te("")}, {
		t"<article>", nl(),
		t"\t", i(1, "article content", {key = "i1"}), nl(),
		t"</article>"
	}),
	s({trig = "article.", descr = "(article.)", priority = -1000, trigEngine = te("w")}, {
		t"<article class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</article>"
	}),
	s({trig = "article#", descr = "(article#)", priority = -1000, trigEngine = te("w")}, {
		t"<article id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</article>"
	}),
	s({trig = "aside", descr = "(aside) \"<aside>\"", priority = -50, trigEngine = te("")}, {
		t"<aside>", nl(),
		t"\t", i(1, "aside content", {key = "i1"}), nl(),
		t"</aside>"
	}),
	s({trig = "aside.", descr = "(aside.)", priority = -1000, trigEngine = te("w")}, {
		t"<aside class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</aside>"
	}),
	s({trig = "aside#", descr = "(aside#)", priority = -1000, trigEngine = te("w")}, {
		t"<aside id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</aside>"
	}),
	s({trig = "audio", descr = "(audio)", priority = -1000, trigEngine = te("w")}, {
		t"<audio src=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</audio>"
	}),
	s({trig = "b", descr = "(b) \"<b>\"", priority = -50, trigEngine = te("w")}, {
		t"<b>", i(1, "", {key = "i1"}), t"</b>"
	}),
	s({trig = "base", descr = "(base) \"HTML <base>\"", priority = -50, trigEngine = te("w")}, {
		t"<base href=\"", i(1, "", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {t" target=\"", i(1, "", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), f(function(args, snip) return c_py({"html", 67}, "x(snip)", python_globals, args, snip, "", am[67]) end, ae(am[67])), t">"
	}),
	s({trig = "bdi", descr = "(bdi)", priority = -1000, trigEngine = te("w")}, {
		t"<bdi>", i(0, "", {key = "i0"}), t"</bdo>"
	}),
	s({trig = "bdo", descr = "(bdo)", priority = -1000, trigEngine = te("w")}, {
		t"<bdo dir=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</bdo>"
	}),
	s({trig = "bdo:l", descr = "(bdo:l)", priority = -1000, trigEngine = te("w")}, {
		t"<bdo dir=\"ltr\">", i(0, "", {key = "i0"}), t"</bdo>"
	}),
	s({trig = "bdo:r", descr = "(bdo:r)", priority = -1000, trigEngine = te("w")}, {
		t"<bdo dir=\"rtl\">", i(0, "", {key = "i0"}), t"</bdo>"
	}),
	s({trig = "blockquote", descr = "(blockquote) \"<blockquote>\"", priority = -50, trigEngine = te("")}, {
		t"<blockquote>", i(1, "", {key = "i1"}), t"</blockquote>"
	}),
	s({trig = "body", descr = "(body) \"<body>\"", priority = -50, trigEngine = te("")}, {
		t"<body>", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</body>"
	}),
	s({trig = "br", descr = "(br) \"<br>\"", priority = -50, trigEngine = te("w")}, {
		t"<br>", i(1, "", {key = "i1"}), t"</br>"
	}),
	s({trig = "button", descr = "(button) \"<button>\"", priority = -50, trigEngine = te("")}, {
		t"<button>", i(1, "", {key = "i1"}), t"</button>"
	}),
	s({trig = "button.", descr = "(button.)", priority = -1000, trigEngine = te("w")}, {
		t"<button class=\"", i(1, "button", {key = "i1"}), t"\" type=\"", i(2, "submit", {key = "i2"}), t"\">", i(0, "", {key = "i0"}), t"</button>"
	}),
	s({trig = "button#", descr = "(button#)", priority = -1000, trigEngine = te("w")}, {
		t"<button id=\"", i(1, "", {key = "i1"}), t"\" type=\"", i(2, "submit", {key = "i2"}), t"\">", i(0, "", {key = "i0"}), t"</button>"
	}),
	s({trig = "button:s", descr = "(button:s)", priority = -1000, trigEngine = te("w")}, {
		t"<button type=\"submit\">", i(0, "", {key = "i0"}), t"</button>"
	}),
	s({trig = "button:r", descr = "(button:r)", priority = -1000, trigEngine = te("w")}, {
		t"<button type=\"reset\">", i(0, "", {key = "i0"}), t"</button>"
	}),
	s({trig = "canvas", descr = "(canvas)", priority = -1000, trigEngine = te("w")}, {
		t"<canvas>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</canvas>"
	}),
	s({trig = "caption", descr = "(caption) \"<caption>\"", priority = -50, trigEngine = te("")}, {
		t"<caption>", i(1, "", {key = "i1"}), t"</caption>"
	}),
	s({trig = "cite", descr = "(cite) \"<cite>\"", priority = -50, trigEngine = te("w")}, {
		t"<cite>", i(1, "", {key = "i1"}), t"</cite>"
	}),
	s({trig = "code", descr = "(code) \"<code>\"", priority = -50, trigEngine = te("w")}, {
		t"<code>", i(1, "", {key = "i1"}), t"</code>"
	}),
	s({trig = "col", descr = "(col)", priority = -1000, trigEngine = te("w")}, {
		t"<col>"
	}),
	s({trig = "colgroup", descr = "(colgroup)", priority = -1000, trigEngine = te("w")}, {
		t"<colgroup>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</colgroup>"
	}),
	s({trig = "colgroup+", descr = "(colgroup+)", priority = -1000, trigEngine = te("w")}, {
		t"<colgroup>", nl(),
		t"\t<col>", nl(),
		t"\tcol+", i(0, "", {key = "i0"}), nl(),
		t"</colgroup>"
	}),
	s({trig = "command", descr = "(command)", priority = -1000, trigEngine = te("w")}, {
		t"<command type=\"command\" label=\"", i(1, "", {key = "i1"}), t"\" icon=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "command:c", descr = "(command:c)", priority = -1000, trigEngine = te("w")}, {
		t"<command type=\"checkbox\" label=\"", i(1, "", {key = "i1"}), t"\" icon=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "command:r", descr = "(command:r)", priority = -1000, trigEngine = te("w")}, {
		t"<command type=\"radio\" radiogroup=\"", i(1, "", {key = "i1"}), t"\" label=\"", i(2, "", {key = "i2"}), t"\" icon=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "datagrid", descr = "(datagrid)", priority = -1000, trigEngine = te("w")}, {
		t"<datagrid>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</datagrid>"
	}),
	s({trig = "datalist", descr = "(datalist) \"<datalist>\"", priority = -50, trigEngine = te("")}, {
		t"<datalist id=\"", i(1, "", {key = "i1"}), t"\" name=\"", i(2, "", {key = "i2"}), t"\">", nl(),
		t"\topt", i(3, "", {key = "i3"}), nl(),
		t"</datalist>"
	}),
	s({trig = "datatemplate", descr = "(datatemplate)", priority = -1000, trigEngine = te("w")}, {
		t"<datatemplate>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</datatemplate>"
	}),
	s({trig = "dd", descr = "(dd) \"<dd>\"", priority = -50, trigEngine = te("")}, {
		t"<dd>", i(1, "", {key = "i1"}), t"</dd>"
	}),
	s({trig = "dd.", descr = "(dd.)", priority = -1000, trigEngine = te("w")}, {
		t"<dd class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</dd>"
	}),
	s({trig = "dd#", descr = "(dd#)", priority = -1000, trigEngine = te("w")}, {
		t"<dd id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</dd>"
	}),
	s({trig = "del", descr = "(del) \"<del>\"", priority = -50, trigEngine = te("w")}, {
		t"<del cite=\"", i(2, "", {key = "i2"}), t"\" datetime=\"", d(3, function(args, snip) return sn(nil, { i(1, jt({c_shell("date \'+%Y-%m-%dT%H:%M:%S%:z\'")}, ""), {key = "i3"}) }) end), t"\">", i(1, "", {key = "i1"}), t"</del>"
	}),
	s({trig = "details", descr = "(details)", priority = -1000, trigEngine = te("w")}, {
		t"<details>", i(0, "", {key = "i0"}), t"</details>"
	}),
	s({trig = "dfn", descr = "(dfn) \"<dfn>\"", priority = -50, trigEngine = te("w")}, {
		t"<dfn>", i(1, "", {key = "i1"}), t"</dfn>"
	}),
	s({trig = "dialog", descr = "(dialog)", priority = -1000, trigEngine = te("w")}, {
		t"<dialog>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</dialog>"
	}),
	s({trig = "div", descr = "(div) \"<div>\"", priority = -50, trigEngine = te("w")}, {
		t"<div>", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</div>"
	}),
	s({trig = "div.", descr = "(div.) \"<div> with class\"", priority = -50, trigEngine = te("w")}, {
		t"<div", f(function(args, snip) return c_py({"html", 101}, "snip.rv=\' class=\"\' if t[1] else \"\"", python_globals, args, snip, "", am[101]) end, ae(am[101])), i(1, "name", {key = "i1"}), f(function(args, snip) return c_py({"html", 101}, "snip.rv = \'\"\' if t[1] else \"\"", python_globals, args, snip, "", am[101]) end, ae(am[101])), t">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</div>"
	}),
	s({trig = "div#", descr = "(div#) \"<div> with ID & class\"", priority = -50, trigEngine = te("w")}, {
		t"<div", f(function(args, snip) return c_py({"html", 102}, "snip.rv=\' id=\"\' if t[1] else \"\"", python_globals, args, snip, "", am[102]) end, ae(am[102])), i(1, "name", {key = "i1"}), f(function(args, snip) return c_py({"html", 102}, "snip.rv = \'\"\' if t[1] else \"\"", python_globals, args, snip, "", am[102]) end, ae(am[102])), f(function(args, snip) return c_py({"html", 102}, "snip.rv=\' class=\"\' if t[2] else \"\"", python_globals, args, snip, "", am[102]) end, ae(am[102])), i(2, "name", {key = "i2"}), f(function(args, snip) return c_py({"html", 102}, "snip.rv = \'\"\' if t[2] else \"\"", python_globals, args, snip, "", am[102]) end, ae(am[102])), t">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</div>"
	}),
	s({trig = "dl", descr = "(dl) \"<dl>\"", priority = -50, trigEngine = te("")}, {
		t"<dl>", nl(),
		t"\t", i(1, "Definition list", {key = "i1"}), nl(),
		t"</dl>"
	}),
	s({trig = "dl.", descr = "(dl.)", priority = -1000, trigEngine = te("w")}, {
		t"<dl class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</dl>"
	}),
	s({trig = "dl#", descr = "(dl#)", priority = -1000, trigEngine = te("w")}, {
		t"<dl id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</dl>"
	}),
	s({trig = "dl+", descr = "(dl+)", priority = -1000, trigEngine = te("w")}, {
		t"<dl>", nl(),
		t"\t<dt>", i(1, "", {key = "i1"}), t"</dt>", nl(),
		t"\t<dd>", i(2, "", {key = "i2"}), t"</dd>", nl(),
		t"\tdt+", i(0, "", {key = "i0"}), nl(),
		t"</dl>"
	}),
	s({trig = "dt", descr = "(dt) \"<dt>\"", priority = -50, trigEngine = te("")}, {
		t"<dt>", i(1, "", {key = "i1"}), t"</dt>"
	}),
	s({trig = "dt.", descr = "(dt.)", priority = -1000, trigEngine = te("w")}, {
		t"<dt class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</dt>"
	}),
	s({trig = "dt#", descr = "(dt#)", priority = -1000, trigEngine = te("w")}, {
		t"<dt id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</dt>"
	}),
	s({trig = "dt+", descr = "(dt+)", priority = -1000, trigEngine = te("w")}, {
		t"<dt>", i(1, "", {key = "i1"}), t"</dt>", nl(),
		t"<dd>", i(2, "", {key = "i2"}), t"</dd>", nl(),
		t"dt+", i(0, "", {key = "i0"})
	}),
	s({trig = "em", descr = "(em) \"<em>\"", priority = -50, trigEngine = te("w")}, {
		t"<em>", i(1, "", {key = "i1"}), t"</em>"
	}),
	s({trig = "embed", descr = "(embed)", priority = -1000, trigEngine = te("w")}, {
		t"<embed src=\"", i(1, "", {key = "i1"}), t"\" type=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "fieldset", descr = "(fieldset) \"Fieldset\"", priority = -50, trigEngine = te("w")}, {
		t"<fieldset id=\"", tr(1, "[\\w\\d]+|( )", "(?1:_:\\L$0\\E)"), t"\" ", d(2, function(args) return sn(nil, {t"class=\"", i(1, "", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), t">", nl(),
		t"\t<legend>", i(1, "", {key = "i1"}), t"</legend>", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</fieldset>"
	}),
	s({trig = "fieldset.", descr = "(fieldset.)", priority = -1000, trigEngine = te("w")}, {
		t"<fieldset class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</fieldset>"
	}),
	s({trig = "fieldset#", descr = "(fieldset#)", priority = -1000, trigEngine = te("w")}, {
		t"<fieldset id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</fieldset>"
	}),
	s({trig = "fieldset+", descr = "(fieldset+)", priority = -1000, trigEngine = te("w")}, {
		t"<fieldset>", nl(),
		t"\t<legend><span>", i(1, "", {key = "i1"}), t"</span></legend>", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"</fieldset>", nl(),
		t"fieldset+", i(0, "", {key = "i0"})
	}),
	s({trig = "figcaption", descr = "(figcaption) \"<figcaption>\"", priority = -50, trigEngine = te("")}, {
		t"<figcaption>", i(1, "", {key = "i1"}), t"</figcaption>"
	}),
	s({trig = "figure", descr = "(figure)", priority = -1000, trigEngine = te("w")}, {
		t"<figure>", i(0, "", {key = "i0"}), t"</figure>"
	}),
	s({trig = "figure#", descr = "(figure#)", priority = -1000, trigEngine = te("w")}, {
		t"<figure id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</figure>"
	}),
	s({trig = "figure.", descr = "(figure.)", priority = -1000, trigEngine = te("w")}, {
		t"<figure class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</figure>"
	}),
	s({trig = "footer", descr = "(footer) \"<footer>\"", priority = -50, trigEngine = te("")}, {
		t"<footer>", nl(),
		t"\t", i(1, "footer content", {key = "i1"}), nl(),
		t"</footer>"
	}),
	s({trig = "footer.", descr = "(footer.)", priority = -1000, trigEngine = te("w")}, {
		t"<footer class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</footer>"
	}),
	s({trig = "footer#", descr = "(footer#)", priority = -1000, trigEngine = te("w")}, {
		t"<footer id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</footer>"
	}),
	s({trig = "form", descr = "(form) \"HTML <form>\"", priority = -50, trigEngine = te("w")}, {
		t"<form action=\"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"html", 124}, "\nsnip.rv = (snip.basename or \'unnamed\') + \'_submit\'\n", python_globals, args, snip, "", am[124])}, ""), {key = "i1"}) }) end), t"\" method=\"", i(2, "get", {key = "i2"}), t"\" accept-charset=\"utf-8\">", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</form>"
	}),
	s({trig = "form.", descr = "(form.)", priority = -1000, trigEngine = te("w")}, {
		t"<form class=\"", i(1, "", {key = "i1"}), t"\" action=\"", i(2, "", {key = "i2"}), t"\" method=\"", i(3, "post", {key = "i3"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</form>"
	}),
	s({trig = "form#", descr = "(form#)", priority = -1000, trigEngine = te("w")}, {
		t"<form id=\"", i(1, "", {key = "i1"}), t"\" action=\"", i(2, "", {key = "i2"}), t"\" method=\"", i(3, "post", {key = "i3"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</form>"
	}),
	s({trig = "h1", descr = "(h1) \"HTML <h1>\"", priority = -50, trigEngine = te("w")}, {
		t"<h1>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h1>"
	}),
	s({trig = "h1.", descr = "(h1.)", priority = -1000, trigEngine = te("w")}, {
		t"<h1 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h1>"
	}),
	s({trig = "h1#", descr = "(h1#)", priority = -1000, trigEngine = te("w")}, {
		t"<h1 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h1>"
	}),
	s({trig = "h2", descr = "(h2) \"HTML <h2>\"", priority = -50, trigEngine = te("w")}, {
		t"<h2>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h2>"
	}),
	s({trig = "h2.", descr = "(h2.)", priority = -1000, trigEngine = te("w")}, {
		t"<h2 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h2>"
	}),
	s({trig = "h2#", descr = "(h2#)", priority = -1000, trigEngine = te("w")}, {
		t"<h2 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h2>"
	}),
	s({trig = "h3", descr = "(h3) \"HTML <h3>\"", priority = -50, trigEngine = te("w")}, {
		t"<h3>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h3>"
	}),
	s({trig = "h3.", descr = "(h3.)", priority = -1000, trigEngine = te("w")}, {
		t"<h3 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h3>"
	}),
	s({trig = "h3#", descr = "(h3#)", priority = -1000, trigEngine = te("w")}, {
		t"<h3 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h3>"
	}),
	s({trig = "h4", descr = "(h4) \"HTML <h4>\"", priority = -50, trigEngine = te("w")}, {
		t"<h4>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h4>"
	}),
	s({trig = "h4.", descr = "(h4.)", priority = -1000, trigEngine = te("w")}, {
		t"<h4 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h4>"
	}),
	s({trig = "h4#", descr = "(h4#)", priority = -1000, trigEngine = te("w")}, {
		t"<h4 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h4>"
	}),
	s({trig = "h5", descr = "(h5) \"HTML <h5>\"", priority = -50, trigEngine = te("w")}, {
		t"<h5>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h5>"
	}),
	s({trig = "h5.", descr = "(h5.)", priority = -1000, trigEngine = te("w")}, {
		t"<h5 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h5>"
	}),
	s({trig = "h5#", descr = "(h5#)", priority = -1000, trigEngine = te("w")}, {
		t"<h5 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h5>"
	}),
	s({trig = "h6", descr = "(h6) \"HTML <h6>\"", priority = -50, trigEngine = te("w")}, {
		t"<h6>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</h6>"
	}),
	s({trig = "h6.", descr = "(h6.)", priority = -1000, trigEngine = te("w")}, {
		t"<h6 class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h6>"
	}),
	s({trig = "h6#", descr = "(h6#)", priority = -1000, trigEngine = te("w")}, {
		t"<h6 id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</h6>"
	}),
	s({trig = "head", descr = "(head) \"HTML <head>\"", priority = -50, trigEngine = te("")}, {
		t"<head>", nl(),
		t"\t<meta charset=\"utf-8\">", nl(),
		t"\t<title>", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"html", 145}, "snip.rv = snip.basename or \"Page Title\"", python_globals, args, snip, "", am[145])}, "\t"), {key = "i1"}) }) end), t"</title>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</head>"
	}),
	s({trig = "header", descr = "(header) \"<header>\"", priority = -50, trigEngine = te("")}, {
		t"<header>", nl(),
		t"\t", i(1, "header content", {key = "i1"}), nl(),
		t"</header>"
	}),
	s({trig = "header.", descr = "(header.)", priority = -1000, trigEngine = te("w")}, {
		t"<header class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</header>"
	}),
	s({trig = "header#", descr = "(header#)", priority = -1000, trigEngine = te("w")}, {
		t"<header id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</header>"
	}),
	s({trig = "hgroup", descr = "(hgroup)", priority = -1000, trigEngine = te("w")}, {
		t"<hgroup>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</hgroup>"
	}),
	s({trig = "hgroup.", descr = "(hgroup.)", priority = -1000, trigEngine = te("w")}, {
		t"<hgroup class=\"", i(1, "", {key = "i1"}), t">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</hgroup>"
	}),
	s({trig = "hr", descr = "(hr) \"<hr>\"", priority = -50, trigEngine = te("")}, {
		t"<hr>"
	}),
	s({trig = "html", descr = "(html) \"HTML basic structure\"", priority = -50, trigEngine = te("b")}, {
		t"<!DOCTYPE html>", nl(),
		t"<html>", nl(),
		t"\t<head>", nl(),
		t"\t\t<meta charset=\"UTF-8\" />", nl(),
		t"\t\t<meta name=\"viewport\" content=\"width=device-width\" />", nl(),
		t"\t\t<title>", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"html", 152}, "snip.rv = snip.basename.replace(\'-\', \' \').capitalize()", python_globals, args, snip, "", am[152])}, "\t\t"), {key = "i1"}) }) end), t"</title>", nl(),
		t"\t</head>", nl(),
		t"\t<body>", nl(),
		t"\t\t", i(0, "body", {key = "i0"}), nl(),
		t"\t</body>", nl(),
		t"</html>"
	}),
	s({trig = "xhtml", descr = "(xhtml)", priority = -1000, trigEngine = te("w")}, {
		t"<html xmlns=\"http://www.w3.org/1999/xhtml\">", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"</html>"
	}),
	s({trig = "html5", descr = "(html5)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html>", nl(),
		t"<html>", nl(),
		t"\t<head>", nl(),
		t"\t\t<meta charset=\"utf-8\">", nl(),
		t"\t\t<meta name=\"viewport\" content=\"width=device-width\">", nl(),
		t"\t\t<title>", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(\'\', \'Page Title\'), \'^.\', \'\\u&\', \'\')")}, "\t\t"), {key = "i1"}) }) end), t"</title>", nl(),
		t"\t</head>", nl(),
		t"\t<body>", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t</body>", nl(),
		t"</html>"
	}),
	s({trig = "html5l", descr = "(html5l)", priority = -1000, trigEngine = te("w")}, {
		t"<!DOCTYPE html>", nl(),
		t"<html lang=\"", i(1, "en", {key = "i1"}), t"\">", nl(),
		t"\t<head>", nl(),
		t"\t\t<meta charset=\"utf-8\">", nl(),
		t"\t\t<meta name=\"viewport\" content=\"width=device-width\">", nl(),
		t"\t\t<title>", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(\'\', \'Page Title\'), \'^.\', \'\\u&\', \'\')")}, "\t\t"), {key = "i2"}) }) end), t"</title>", nl(),
		t"\t\t", i(3, "link", {key = "i3"}), nl(),
		t"\t</head>", nl(),
		t"\t<body>", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t</body>", nl(),
		t"</html>"
	}),
	s({trig = "i", descr = "(i) \"<i>\"", priority = -50, trigEngine = te("w")}, {
		t"<i>", i(1, "", {key = "i1"}), t"</i>"
	}),
	s({trig = "iframe", descr = "(iframe)", priority = -1000, trigEngine = te("w")}, {
		t"<iframe src=\"", i(1, "", {key = "i1"}), t"\" frameborder=\"0\"></iframe>"
	}),
	s({trig = "iframe.", descr = "(iframe.)", priority = -1000, trigEngine = te("w")}, {
		t"<iframe class=\"", i(1, "", {key = "i1"}), t"\" src=\"", i(2, "", {key = "i2"}), t"\" frameborder=\"0\"></iframe>"
	}),
	s({trig = "iframe#", descr = "(iframe#)", priority = -1000, trigEngine = te("w")}, {
		t"<iframe id=\"", i(1, "", {key = "i1"}), t"\" src=\"", i(2, "", {key = "i2"}), t"\" frameborder=\"0\"></iframe>"
	}),
	s({trig = "img", descr = "(img) \"<img>\"", priority = -50, trigEngine = te("")}, {
		t"<img src=\"", i(1, "", {key = "i1"}), t"\" alt=\"", i(2, "", {key = "i2"}), t"\">"
	}),
	s({trig = "img.", descr = "(img.)", priority = -1000, trigEngine = te("w")}, {
		t"<img class=\"", i(1, "", {key = "i1"}), t"\" src=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "img#", descr = "(img#)", priority = -1000, trigEngine = te("w")}, {
		t"<img id=\"", i(1, "", {key = "i1"}), t"\" src=\"", i(2, "", {key = "i2"}), t"\" alt=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input", descr = "(input) \"HTML <input>\"", priority = -50, trigEngine = te("w")}, c(1, {
		{
			t"<label for=\"", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|( )", "(?1:_:\\L$0)")}, ""), {key = "i2"}) }) end, {k"i1"}), t"\">", i(1, "", {key = "i1"}), t"</label><input type=\"", i(3, "text/submit/hidden/button", {key = "i3"}), t"\" name=\"", d(4, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"}), t"\" value=\"", i(5, "", {key = "i5"}), t"\"", d(6, function(args) return sn(nil, {t" id=\"", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i7"}), t"\""}) end, {}, {key = "i6"}), f(function(args, snip) return c_py({"html", 163}, "x(snip)", python_globals, args, snip, "", am[163]) end, ae(am[163])), t">"
		},
		{
			t"<input type=\"", i(1, "text/submit/hidden/button", {key = "i1"}), t"\" name=\"", i(2, "some_name", {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\"", d(4, function(args) return sn(nil, {t" id=\"", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i5"}), t"\""}) end, {}, {key = "i4"}), f(function(args, snip) return c_py({"html", 164}, "x(snip)", python_globals, args, snip, "", am[164]) end, ae(am[164])), t">"
		},
	})),
	s({trig = "input.", descr = "(input.)", priority = -1000, trigEngine = te("w")}, {
		t"<input class=\"", i(1, "", {key = "i1"}), t"\" type=\"", i(2, "text/submit/hidden/button/image", {key = "i2"}), t"\" name=\"", i(3, "", {key = "i3"}), t"\" id=\"", d(4, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i4"}), t"\" value=\"", i(5, "", {key = "i5"}), t"\">"
	}),
	s({trig = "input:text", descr = "(input:text)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"text\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:submit", descr = "(input:submit)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"submit\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:hidden", descr = "(input:hidden)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"hidden\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:button", descr = "(input:button)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"button\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:image", descr = "(input:image)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"image\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" src=\"", i(3, "", {key = "i3"}), t"\" alt=\"", i(4, "", {key = "i4"}), t"\">"
	}),
	s({trig = "input:checkbox", descr = "(input:checkbox)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"checkbox\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\">"
	}),
	s({trig = "input:radio", descr = "(input:radio)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"radio\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\">"
	}),
	s({trig = "input:color", descr = "(input:color)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"color\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:date", descr = "(input:date)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"date\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:datetime", descr = "(input:datetime)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"datetime\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:datetime-local", descr = "(input:datetime-local)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"datetime-local\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:email", descr = "(input:email)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"email\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:file", descr = "(input:file)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"file\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:month", descr = "(input:month)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"month\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:number", descr = "(input:number)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"number\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:password", descr = "(input:password)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"password\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:range", descr = "(input:range)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"range\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:reset", descr = "(input:reset)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"reset\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:search", descr = "(input:search)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"search\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:time", descr = "(input:time)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"time\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:url", descr = "(input:url)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"url\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "input:week", descr = "(input:week)", priority = -1000, trigEngine = te("w")}, {
		t"<input type=\"week\" name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" value=\"", i(3, "", {key = "i3"}), t"\">"
	}),
	s({trig = "ins", descr = "(ins) \"<ins>\"", priority = -50, trigEngine = te("w")}, {
		t"<ins cite=\"", i(2, "", {key = "i2"}), t"\" datetime=\"", d(3, function(args, snip) return sn(nil, { i(1, jt({c_shell("date \'+%Y-%m-%dT%H:%M:%S%:z\'")}, ""), {key = "i3"}) }) end), t"\">", i(1, "", {key = "i1"}), t"</ins>"
	}),
	s({trig = "kbd", descr = "(kbd) \"<kbd>\"", priority = -50, trigEngine = te("w")}, {
		t"<kbd>", i(1, "", {key = "i1"}), t"</kbd>"
	}),
	s({trig = "label", descr = "(label) \"<label>\"", priority = -50, trigEngine = te("")}, {
		t"<label>", i(1, "", {key = "i1"}), t"</label>"
	}),
	s({trig = "label:i", descr = "(label:i)", priority = -1000, trigEngine = te("w")}, {
		t"<label for=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</label>", nl(),
		t"<input type=\"", i(3, "text/submit/hidden/button", {key = "i3"}), t"\" name=\"", d(4, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"}), t"\" id=\"", d(5, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i5"}), t"\" value=\"", i(6, "", {key = "i6"}), t"\" />"
	}),
	s({trig = "label:s", descr = "(label:s)", priority = -1000, trigEngine = te("w")}, {
		t"<label for=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</label>", nl(),
		t"<select name=\"", d(3, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i3"}), t"\" id=\"", d(4, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"}), t"\">", nl(),
		t"\t<option value=\"", i(5, "", {key = "i5"}), t"\">", d(6, function(args) return sn(nil, {cp(5)}) end, {}, {key = "i0"}), t"</option>", nl(),
		t"</select>"
	}),
	s({trig = "legend", descr = "(legend) \"<legend>\"", priority = -50, trigEngine = te("")}, {
		t"<legend>", i(1, "", {key = "i1"}), t"</legend>"
	}),
	s({trig = "legend+", descr = "(legend+)", priority = -1000, trigEngine = te("w")}, {
		t"<legend><span>", i(0, "", {key = "i0"}), t"</span></legend>"
	}),
	s({trig = "li", descr = "(li) \"list item\"", priority = -50, trigEngine = te("w")}, {
		t"<li>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</li>"
	}),
	s({trig = "li.", descr = "(li.)", priority = -1000, trigEngine = te("w")}, {
		t"<li class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</li>"
	}),
	s({trig = "li+", descr = "(li+)", priority = -1000, trigEngine = te("w")}, {
		t"<li>", i(1, "", {key = "i1"}), t"</li>", nl(),
		t"li+"
	}),
	s({trig = "lia", descr = "(lia)", priority = -1000, trigEngine = te("w")}, {
		t"<li><a href=\"", i(0, "#", {key = "i0"}), t"\">", i(1, "", {key = "i1"}), t"</a></li>"
	}),
	s({trig = "lia+", descr = "(lia+)", priority = -1000, trigEngine = te("w")}, {
		t"<li><a href=\"", i(2, "#", {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</a></li>", nl(),
		t"lia+"
	}),
	s({trig = "link", descr = "(link) \"HTML <link>\"", priority = -50, trigEngine = te("w")}, {
		t"<link rel=\"", i(1, "stylesheet", {key = "i1"}), t"\" href=\"", i(2, "/css/master.css", {key = "i2"}), t"\" type=\"text/css\" media=\"", i(3, "screen", {key = "i3"}), t"\" title=\"", i(4, "no title", {key = "i4"}), t"\" charset=\"", i(5, "utf-8", {key = "i5"}), t"\"", f(function(args, snip) return c_py({"html", 200}, "x(snip)", python_globals, args, snip, "", am[200]) end, ae(am[200])), t">"
	}),
	s({trig = "link:atom", descr = "(link:atom)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"alternate\" href=\"", i(1, "atom.xml", {key = "i1"}), t"\" title=\"Atom\" type=\"application/atom+xml\">"
	}),
	s({trig = "link:s", descr = "(link:s)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"stylesheet\" href=\"", i(1, "style.css", {key = "i1"}), t"\">"
	}),
	s({trig = "link:css", descr = "(link:css)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"stylesheet\" href=\"", i(1, "style.css", {key = "i1"}), t"\" type=\"text/css\" media=\"", i(2, "all", {key = "i2"}), t"\">"
	}),
	s({trig = "link:favicon", descr = "(link:favicon)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"shortcut icon\" href=\"", i(1, "favicon.ico", {key = "i1"}), t"\" type=\"image/x-icon\">"
	}),
	s({trig = "link:rss", descr = "(link:rss)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"alternate\" href=\"", i(1, "rss.xml", {key = "i1"}), t"\" title=\"RSS\" type=\"application/atom+xml\">"
	}),
	s({trig = "link:touch", descr = "(link:touch)", priority = -1000, trigEngine = te("w")}, {
		t"<link rel=\"apple-touch-icon\" href=\"", i(1, "favicon.png", {key = "i1"}), t"\">"
	}),
	s({trig = "main", descr = "(main) \"<main>\"", priority = -50, trigEngine = te("")}, {
		t"<main>", nl(),
		t"\t", i(1, "main content", {key = "i1"}), nl(),
		t"</main>"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"<map name=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</map>"
	}),
	s({trig = "map.", descr = "(map.)", priority = -1000, trigEngine = te("w")}, {
		t"<map class=\"", i(1, "", {key = "i1"}), t"\" name=\"", i(2, "", {key = "i2"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</map>"
	}),
	s({trig = "map#", descr = "(map#)", priority = -1000, trigEngine = te("w")}, {
		t"<map name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</map>"
	}),
	s({trig = "map+", descr = "(map+)", priority = -1000, trigEngine = te("w")}, {
		t"<map name=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t<area shape=\"", i(2, "", {key = "i2"}), t"\" coords=\"", i(3, "", {key = "i3"}), t"\" href=\"", i(4, "", {key = "i4"}), t"\" alt=\"", i(5, "", {key = "i5"}), t"\" />", i(6, "", {key = "i6"}), nl(),
		t"</map>"
	}),
	s({trig = "mark", descr = "(mark) \"<mark>\"", priority = -50, trigEngine = te("")}, {
		t"<mark>", i(1, "", {key = "i1"}), t"</mark>"
	}),
	s({trig = "menu", descr = "(menu)", priority = -1000, trigEngine = te("w")}, {
		t"<menu>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</menu>"
	}),
	s({trig = "menu:c", descr = "(menu:c)", priority = -1000, trigEngine = te("w")}, {
		t"<menu type=\"context\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</menu>"
	}),
	s({trig = "menu:t", descr = "(menu:t)", priority = -1000, trigEngine = te("w")}, {
		t"<menu type=\"toolbar\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</menu>"
	}),
	s({trig = "meta", descr = "(meta) \"HTML <meta>\"", priority = -50, trigEngine = te("w")}, {
		t"<meta name=\"", i(1, "name", {key = "i1"}), t"\" content=\"", i(2, "content", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"html", 216}, "x(snip)", python_globals, args, snip, "", am[216]) end, ae(am[216])), t">"
	}),
	s({trig = "meta:s", descr = "(meta:s)", priority = -1000, trigEngine = te("w")}, {
		t"<meta ", i(0, "", {key = "i0"}), t">"
	}),
	s({trig = "meta:d", descr = "(meta:d)", priority = -1000, trigEngine = te("w")}, {
		t"<meta name=\"description\" content=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "meta:compat", descr = "(meta:compat)", priority = -1000, trigEngine = te("w")}, {
		t"<meta http-equiv=\"X-UA-Compatible\" content=\"IE=", i(1, "7,8,edge", {key = "i1"}), t"\">"
	}),
	s({trig = "meta:refresh", descr = "(meta:refresh)", priority = -1000, trigEngine = te("w")}, {
		t"<meta http-equiv=\"refresh\" content=\"3;url=", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "meta:utf5", descr = "(meta:utf5)", priority = -1000, trigEngine = te("w")}, {
		t"<meta charset=\"utf-8\">"
	}),
	s({trig = "meta:utf", descr = "(meta:utf)", priority = -1000, trigEngine = te("w")}, {
		t"<meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\">"
	}),
	s({trig = "meter", descr = "(meter) \"<meter>\"", priority = -50, trigEngine = te("")}, {
		t"<meter>", i(1, "", {key = "i1"}), t"</meter>"
	}),
	s({trig = "nav", descr = "(nav) \"<nav>\"", priority = -50, trigEngine = te("")}, {
		t"<nav>", nl(),
		t"\t", i(1, "navigation links", {key = "i1"}), nl(),
		t"</nav>"
	}),
	s({trig = "nav.", descr = "(nav.)", priority = -1000, trigEngine = te("w")}, {
		t"<nav class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</nav>"
	}),
	s({trig = "nav#", descr = "(nav#)", priority = -1000, trigEngine = te("w")}, {
		t"<nav id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</nav>"
	}),
	s({trig = "noscript", descr = "(noscript) \"<noscript>\"", priority = -50, trigEngine = te("")}, {
		t"<noscript>", i(1, "", {key = "i1"}), t"</noscript>"
	}),
	s({trig = "object", descr = "(object)", priority = -1000, trigEngine = te("w")}, {
		t"<object data=\"", i(1, "", {key = "i1"}), t"\" type=\"", i(2, "", {key = "i2"}), t"\">", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"</object>"
	}),
	s({trig = "movie", descr = "(movie)", priority = -1000, trigEngine = te("w")}, {
		t"<object width=\"", cp(2), t"\" height=\"", cp(3), t"\" classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\"", nl(),
		t"codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\">", nl(),
		t"\t<param name=\"src\" value=\"", cp(1), t"\">", nl(),
		t"\t<param name=\"controller\" value=\"", cp(4), t"\">", nl(),
		t"\t<param name=\"autoplay\" value=\"", cp(5), t"\">", nl(),
		t"\t<embed src=\"", i(1, "movie.mov", {key = "i1"}), t"\"", nl(),
		t"\t\twidth=\"", i(2, "320", {key = "i2"}), t"\" height=\"", i(3, "240", {key = "i3"}), t"\"", nl(),
		t"\t\tcontroller=\"", i(4, "true", {key = "i4"}), t"\" autoplay=\"", i(5, "true", {key = "i5"}), t"\"", nl(),
		t"\t\tscale=\"tofit\" cache=\"true\"", nl(),
		t"\t\tpluginspage=\"http://www.apple.com/quicktime/download/\">", nl(),
		t"</object>"
	}),
	s({trig = "ol", descr = "(ol) \"<ol>\"", priority = -50, trigEngine = te("")}, {
		t"<ol>", nl(),
		t"\t<li>", i(1, "", {key = "i1"}), t"</li>", nl(),
		t"</ol>"
	}),
	s({trig = "ol.", descr = "(ol.)", priority = -1000, trigEngine = te("w")}, {
		t"<ol class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</ol>"
	}),
	s({trig = "ol#", descr = "(ol#)", priority = -1000, trigEngine = te("w")}, {
		t"<ol id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</ol>"
	}),
	s({trig = "ol+", descr = "(ol+)", priority = -1000, trigEngine = te("w")}, {
		t"<ol>", nl(),
		t"\t<li>", i(1, "", {key = "i1"}), t"</li>", nl(),
		t"\tli+", i(0, "", {key = "i0"}), nl(),
		t"</ol>"
	}),
	s({trig = "opt", descr = "(opt)", priority = -1000, trigEngine = te("w")}, {
		t"<option value=\"", i(1, "", {key = "i1"}), t"\">", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), t"</option>"
	}),
	s({trig = "opt+", descr = "(opt+)", priority = -1000, trigEngine = te("w")}, {
		t"<option value=\"", i(1, "", {key = "i1"}), t"\">", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"</option>", nl(),
		t"opt+", i(0, "", {key = "i0"})
	}),
	s({trig = "optt", descr = "(optt)", priority = -1000, trigEngine = te("w")}, {
		t"<option>", i(0, "", {key = "i0"}), t"</option>"
	}),
	s({trig = "optgroup", descr = "(optgroup) \"<optgroup>\"", priority = -50, trigEngine = te("")}, {
		t"<optgroup label=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\topt", i(2, "", {key = "i2"}), nl(),
		t"</optgroup>"
	}),
	s({trig = "output", descr = "(output) \"<output>\"", priority = -50, trigEngine = te("")}, {
		t"<output for=\"", i(1, "", {key = "i1"}), t"\" name=\"", i(2, "", {key = "i2"}), t"\">", i(3, "", {key = "i3"}), t"</output>"
	}),
	s({trig = "p", descr = "(p) \"paragraph\"", priority = -50, trigEngine = te("w")}, {
		t"<p>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</p>"
	}),
	s({trig = "p.", descr = "(p.)", priority = -1000, trigEngine = te("w")}, {
		t"<p class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</p>"
	}),
	s({trig = "p#", descr = "(p#)", priority = -1000, trigEngine = te("w")}, {
		t"<p id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</p>"
	}),
	s({trig = "param", descr = "(param)", priority = -1000, trigEngine = te("w")}, {
		t"<param name=\"", i(1, "", {key = "i1"}), t"\" value=\"", i(2, "", {key = "i2"}), t"\">"
	}),
	s({trig = "pre", descr = "(pre) \"<pre>\"", priority = -50, trigEngine = te("")}, {
		t"<pre>", i(1, "", {key = "i1"}), t"</pre>"
	}),
	s({trig = "progress", descr = "(progress) \"<progress>\"", priority = -50, trigEngine = te("")}, {
		t"<progress>", i(1, "", {key = "i1"}), t"</progress>"
	}),
	s({trig = "q", descr = "(q) \"<q>\"", priority = -50, trigEngine = te("w")}, {
		t"<q>", i(1, "", {key = "i1"}), t"</q>"
	}),
	s({trig = "rp", descr = "(rp)", priority = -1000, trigEngine = te("w")}, {
		t"<rp>", i(0, "", {key = "i0"}), t"</rp>"
	}),
	s({trig = "rt", descr = "(rt)", priority = -1000, trigEngine = te("w")}, {
		t"<rt>", i(0, "", {key = "i0"}), t"</rt>"
	}),
	s({trig = "ruby", descr = "(ruby)", priority = -1000, trigEngine = te("w")}, {
		t"<ruby>", nl(),
		t"\t<rp><rt>", i(0, "", {key = "i0"}), t"</rt></rp>", nl(),
		t"</ruby>"
	}),
	s({trig = "s", descr = "(s) \"<s>\"", priority = -50, trigEngine = te("w")}, {
		t"<s>", i(1, "", {key = "i1"}), t"</s>"
	}),
	s({trig = "samp", descr = "(samp) \"<samp>\"", priority = -50, trigEngine = te("w")}, {
		t"<samp>", i(1, "", {key = "i1"}), t"</samp>"
	}),
	s({trig = "script", descr = "(script) \"HTML <script>\"", priority = -50, trigEngine = te("w")}, {
		t"<script charset=\"utf-8\">", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</script>"
	}),
	s({trig = "scripts", descr = "(scripts)", priority = -1000, trigEngine = te("w")}, {
		t"<script src=\"", i(0, "", {key = "i0"}), t".js\"></script>"
	}),
	s({trig = "scriptt", descr = "(scriptt)", priority = -1000, trigEngine = te("w")}, {
		t"<script type=\"", i(1, "", {key = "i1"}), t"\" id=\"", i(2, "", {key = "i2"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</script>"
	}),
	s({trig = "scriptsrc", descr = "(scriptsrc) \"HTML <script src...>\"", priority = -50, trigEngine = te("w")}, {
		t"<script src=\"", i(1, "", {key = "i1"}), t"\" charset=\"", i(2, "utf-8", {key = "i3"}), t"\"></script>"
	}),
	s({trig = "section", descr = "(section)", priority = -1000, trigEngine = te("w")}, {
		t"<section>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</section>"
	}),
	s({trig = "section.", descr = "(section.)", priority = -1000, trigEngine = te("w")}, {
		t"<section class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</section>"
	}),
	s({trig = "section#", descr = "(section#)", priority = -1000, trigEngine = te("w")}, {
		t"<section id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</section>"
	}),
	s({trig = "select", descr = "(select) \"Select Box\"", priority = -50, trigEngine = te("w")}, {
		t"<select name=\"", i(1, "some_name", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\"", d(3, function(args) return sn(nil, {i(1, " multiple", {key = "i4"}), d(2, function(args) return sn(nil, {t" size=\"", i(1, "1", {key = "i6"}), t"\""}) end, {}, {key = "i5"})}) end, {}, {key = "i3"}), t">", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</select>"
	}),
	s({trig = "select.", descr = "(select.)", priority = -1000, trigEngine = te("w")}, {
		t"<select name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\" class=\"", i(3, "", {key = "i3"}), t">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</select>"
	}),
	s({trig = "select+", descr = "(select+)", priority = -1000, trigEngine = te("w")}, {
		t"<select name=\"", i(1, "", {key = "i1"}), t"\" id=\"", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\">", nl(),
		t"\t<option value=\"", i(3, "", {key = "i3"}), t"\">", d(4, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i4"}), t"</option>", nl(),
		t"\topt+", i(0, "", {key = "i0"}), nl(),
		t"</select>"
	}),
	s({trig = "small", descr = "(small) \"<small>\"", priority = -50, trigEngine = te("w")}, {
		t"<small>", i(1, "", {key = "i1"}), t"</small>"
	}),
	s({trig = "source", descr = "(source)", priority = -1000, trigEngine = te("w")}, {
		t"<source src=\"", i(1, "", {key = "i1"}), t"\" type=\"", i(2, "", {key = "i2"}), t"\" media=\"", i(0, "", {key = "i0"}), t"\">"
	}),
	s({trig = "span", descr = "(span) \"<span>\"", priority = -50, trigEngine = te("w")}, {
		t"<span>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</span>"
	}),
	s({trig = "span.", descr = "(span.) \"<span> with class\"", priority = -50, trigEngine = te("w")}, {
		t"<span", f(function(args, snip) return c_py({"html", 264}, "snip.rv=\' class=\"\' if t[1] else \"\"", python_globals, args, snip, "", am[264]) end, ae(am[264])), i(1, "name", {key = "i1"}), f(function(args, snip) return c_py({"html", 264}, "snip.rv = \'\"\' if t[1] else \"\"", python_globals, args, snip, "", am[264]) end, ae(am[264])), t">", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</span>"
	}),
	s({trig = "span#", descr = "(span#) \"<span> with ID & class\"", priority = -50, trigEngine = te("w")}, {
		t"<span", f(function(args, snip) return c_py({"html", 265}, "snip.rv=\' id=\"\' if t[1] else \"\"", python_globals, args, snip, "", am[265]) end, ae(am[265])), i(1, "name", {key = "i1"}), f(function(args, snip) return c_py({"html", 265}, "snip.rv = \'\"\' if t[1] else \"\"", python_globals, args, snip, "", am[265]) end, ae(am[265])), f(function(args, snip) return c_py({"html", 265}, "snip.rv=\' class=\"\' if t[2] else \"\"", python_globals, args, snip, "", am[265]) end, ae(am[265])), i(2, "name", {key = "i2"}), f(function(args, snip) return c_py({"html", 265}, "snip.rv = \'\"\' if t[2] else \"\"", python_globals, args, snip, "", am[265]) end, ae(am[265])), t">", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</span>"
	}),
	s({trig = "strong", descr = "(strong) \"<strong>\"", priority = -50, trigEngine = te("w")}, {
		t"<strong>", i(1, "", {key = "i1"}), t"</strong>"
	}),
	s({trig = "style", descr = "(style) \"HTML <style>\"", priority = -50, trigEngine = te("w")}, {
		t"<style type=\"text/css\" media=\"screen\">", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</style>"
	}),
	s({trig = "sub", descr = "(sub) \"<sub>\"", priority = -50, trigEngine = te("w")}, {
		t"<sub>", i(1, "", {key = "i1"}), t"</sub>"
	}),
	s({trig = "summary", descr = "(summary)", priority = -1000, trigEngine = te("w")}, {
		t"<summary>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</summary>"
	}),
	s({trig = "sup", descr = "(sup) \"<sup>\"", priority = -50, trigEngine = te("w")}, {
		t"<sup>", i(1, "", {key = "i1"}), t"</sup>"
	}),
	s({trig = "table", descr = "(table) \"HTML <table>\"", priority = -50, trigEngine = te("w")}, {
		t"<table>", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</table>"
	}),
	s({trig = "table.", descr = "(table.)", priority = -1000, trigEngine = te("w")}, {
		t"<table class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</table>"
	}),
	s({trig = "table#", descr = "(table#)", priority = -1000, trigEngine = te("w")}, {
		t"<table id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</table>"
	}),
	s({trig = "tbody", descr = "(tbody) \"<tbody>\"", priority = -50, trigEngine = te("")}, {
		t"<tbody>", i(1, "", {key = "i1"}), t"</tbody>"
	}),
	s({trig = "td", descr = "(td) \"table cell\"", priority = -50, trigEngine = te("w")}, {
		t"<td>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</td>"
	}),
	s({trig = "td.", descr = "(td.)", priority = -1000, trigEngine = te("w")}, {
		t"<td class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</td>"
	}),
	s({trig = "td#", descr = "(td#)", priority = -1000, trigEngine = te("w")}, {
		t"<td id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</td>"
	}),
	s({trig = "td+", descr = "(td+)", priority = -1000, trigEngine = te("w")}, {
		t"<td>", i(1, "", {key = "i1"}), t"</td>", nl(),
		t"td+", i(0, "", {key = "i0"})
	}),
	s({trig = "textarea", descr = "(textarea) \"HTML <textarea>\"", priority = -50, trigEngine = te("w")}, {
		t"<textarea name=\"", i(1, "Name", {key = "i1"}), t"\" rows=\"", i(2, "8", {key = "i2"}), t"\" cols=\"", i(3, "40", {key = "i3"}), t"\">", i(0, "", {key = "i0"}), t"</textarea>"
	}),
	s({trig = "tfoot", descr = "(tfoot) \"<tfoot>\"", priority = -50, trigEngine = te("")}, {
		t"<tfoot>", i(1, "", {key = "i1"}), t"</tfoot>"
	}),
	s({trig = "th", descr = "(th) \"table header\"", priority = -50, trigEngine = te("w")}, {
		t"<th>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</th>"
	}),
	s({trig = "th.", descr = "(th.)", priority = -1000, trigEngine = te("w")}, {
		t"<th class=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</th>"
	}),
	s({trig = "th#", descr = "(th#)", priority = -1000, trigEngine = te("w")}, {
		t"<th id=\"", i(1, "", {key = "i1"}), t"\">", i(0, "", {key = "i0"}), t"</th>"
	}),
	s({trig = "th+", descr = "(th+)", priority = -1000, trigEngine = te("w")}, {
		t"<th>", i(1, "", {key = "i1"}), t"</th>", nl(),
		t"th+", i(0, "", {key = "i0"})
	}),
	s({trig = "thead", descr = "(thead) \"<thead>\"", priority = -50, trigEngine = te("")}, {
		t"<thead>", i(1, "", {key = "i1"}), t"</thead>"
	}),
	s({trig = "time", descr = "(time) \"<time>\"", priority = -50, trigEngine = te("w")}, {
		t"<time datetime=\"", i(2, "", {key = "i2"}), t"\">", i(1, "", {key = "i1"}), t"</time>"
	}),
	s({trig = "title", descr = "(title) \"HTML <title>\"", priority = -50, trigEngine = te("w")}, {
		t"<title>", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"html", 287}, "snip.rv = snip.basename or \"Page Title\"", python_globals, args, snip, "", am[287])}, ""), {key = "i1"}) }) end), t"</title>"
	}),
	s({trig = "tr", descr = "(tr) \"table row\"", priority = -50, trigEngine = te("w")}, {
		t"<tr>", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"</tr>"
	}),
	s({trig = "tr+", descr = "(tr+)", priority = -1000, trigEngine = te("w")}, {
		t"<tr>", nl(),
		t"\t<td>", i(1, "", {key = "i1"}), t"</td>", nl(),
		t"\ttd+", i(0, "", {key = "i0"}), nl(),
		t"</tr>"
	}),
	s({trig = "track", descr = "(track)", priority = -1000, trigEngine = te("w")}, {
		t"<track src=\"", i(1, "", {key = "i1"}), t"\" srclang=\"", i(2, "", {key = "i2"}), t"\" label=\"", i(3, "", {key = "i3"}), t"\" default=\"", i(4, "default", {key = "i4"}), t">", i(5, "", {key = "i5"})
	}),
	s({trig = "ul", descr = "(ul) \"unordered list\"", priority = -50, trigEngine = te("w")}, {
		t"<ul>", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</ul>"
	}),
	s({trig = "ul.", descr = "(ul.)", priority = -1000, trigEngine = te("w")}, {
		t"<ul class=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</ul>"
	}),
	s({trig = "ul#", descr = "(ul#)", priority = -1000, trigEngine = te("w")}, {
		t"<ul id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</ul>"
	}),
	s({trig = "ul+", descr = "(ul+)", priority = -1000, trigEngine = te("w")}, {
		t"<ul>", nl(),
		t"\t<li>", i(1, "", {key = "i1"}), t"</li>", nl(),
		t"\tli+", i(0, "", {key = "i0"}), nl(),
		t"</ul>"
	}),
	s({trig = "var", descr = "(var) \"<var>\"", priority = -50, trigEngine = te("w")}, {
		t"<var>", i(1, "", {key = "i1"}), t"</var>"
	}),
	s({trig = "video", descr = "(video)", priority = -1000, trigEngine = te("w")}, {
		t"<video src=\"", i(1, "", {key = "i1"}), t"\" height=\"", i(2, "", {key = "i2"}), t"\" width=\"", i(3, "", {key = "i3"}), t"\" preload=\"", i(4, "none", {key = "i4"}), t"\" autoplay=\"", i(5, "autoplay", {key = "i5"}), t"\">", i(6, "", {key = "i6"}), t"</video>"
	}),
	s({trig = "video.", descr = "(video.)", priority = -1000, trigEngine = te("w")}, {
		t"<video class=\"", i(1, "", {key = "i1"}), t"\" src=\"", i(2, "", {key = "i2"}), t"\" height=\"", i(3, "", {key = "i3"}), t"\" width=\"", i(4, "", {key = "i4"}), t"\" preload=\"", i(5, "none", {key = "i5"}), t"\" autoplay=\"", i(6, "autoplay", {key = "i6"}), t"\">", i(7, "", {key = "i7"}), t"</video>"
	}),
	s({trig = "wbr", descr = "(wbr) \"<wbr>\"", priority = -50, trigEngine = te("w")}, {
		t"<wbr>", i(1, "", {key = "i1"}), t"</wbr>"
	}),
	s({trig = "viewport", descr = "(viewport) \"Responsive viewport meta\"", priority = -50, trigEngine = te("w")}, {
		t"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
	}),
	s({trig = "doctype", descr = "(doctype) \"HTML - 5.0 (doctype)\"", priority = -50, trigEngine = te("b")}, {
		t"<!DOCTYPE html>", nl()
	}),
	s({trig = "escape", descr = "(escape) \"Escape (escape)\"", priority = -50, trigEngine = te("")}, {
		t"&#x238B;"
	}),
	s({trig = "access", descr = "(access) \"accesskey global attribute\"", priority = -50, trigEngine = te("")}, {
		t"accesskey=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "class", descr = "(class) \"class global attribute\"", priority = -50, trigEngine = te("")}, {
		t"class=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "fig", descr = "(fig) \"<figure>\"", priority = -50, trigEngine = te("")}, {
		t"<figure>", nl(),
		i(1, "", {key = "i1"}), nl(),
		t"<figcaption>", i(2, "", {key = "i2"}), t"</figcaption>", nl(),
		t"</figure>"
	}),
	s({trig = "htmll", descr = "(htmll) \"HTML basic structure with the lang attribute\"", priority = -50, trigEngine = te("b")}, {
		t"<!DOCTYPE html>", nl(),
		t"<html lang=\"", i(1, "es", {key = "i1"}), t"\">", nl(),
		t"\t<head>", nl(),
		t"\t\t<meta charset=\"UTF-8\" />", nl(),
		t"\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />", nl(),
		t"\t\t<title>", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"html", 305}, "snip.rv = snip.basename.replace(\'-\', \' \').capitalize()", python_globals, args, snip, "", am[305])}, "\t\t"), {key = "i2"}) }) end), t"</title>", nl(),
		t"\t</head>", nl(),
		t"\t<body>", nl(),
		t"\t\t", i(0, "body", {key = "i0"}), nl(),
		t"\t</body>", nl(),
		t"</html>"
	}),
	s({trig = "id", descr = "(id) \"id global attribute\"", priority = -50, trigEngine = te("")}, {
		t"id=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "mailto", descr = "(mailto) \"HTML <a mailto: >\"", priority = -50, trigEngine = te("w")}, {
		t"<a href=\"mailto:", i(1, "joe@example.com", {key = "i1"}), t"?subject=", i(2, "feedback", {key = "i2"}), t"\">", i(3, "email me", {key = "i3"}), t"</a>"
	}),
	s({trig = "tel", descr = "(tel) \"HTML <a tel: >\"", priority = -50, trigEngine = te("w")}, {
		t"<a href=\"tel:+", i(1, "XX1234567890", {key = "i1"}), t"\">", i(2, "call me", {key = "i2"}), t"</a>"
	}),
	s({trig = "picture", descr = "(picture) \"<picture>\"", priority = -50, trigEngine = te("")}, {
		t"<picture>", nl(),
		t"\t", i(1, "image sources", {key = "i1"}), nl(),
		t"</picture>"
	}),
	s({trig = "template", descr = "(template) \"<template>\"", priority = -50, trigEngine = te("")}, {
		t"<template id=\"", i(1, "", {key = "i1"}), t"\">", nl(),
		i(2, "", {key = "i2"}), nl(),
		t"</template>"
	}),
})
