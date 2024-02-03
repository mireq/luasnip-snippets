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
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4},
}
ls.add_snippets("apache", {
	s({trig = "dir", descr = "(dir)", priority = -1000, trigEngine = te("w")}, {
		t"<Directory ", i(1, "/", {key = "i1"}), t">", nl(),
		t"\tDirectoryIndex ", i(0, "index.html", {key = "i0"}), nl(),
		t"\tOrder Deny,Allow", nl(),
		t"\tDeny from All", nl(),
		t"</Directory>"
	}),
	s({trig = "filesmatch", descr = "(filesmatch)", priority = -1000, trigEngine = te("w")}, {
		t"<FilesMatch \"", i(1, "regex", {key = "i1"}), t"\">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</FilesMatch>"
	}),
	s({trig = "ifmodule", descr = "(ifmodule)", priority = -1000, trigEngine = te("w")}, {
		t"<IfModule ", i(1, "mod_example.c", {key = "i1"}), t">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</IfModule>"
	}),
	s({trig = "limitexcept", descr = "(limitexcept)", priority = -1000, trigEngine = te("w")}, {
		t"<LimitExcept ", i(1, "POST GET", {key = "i1"}), t">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</LimitExcept>"
	}),
	s({trig = "proxy", descr = "(proxy)", priority = -1000, trigEngine = te("w")}, {
		t"<Proxy ", i(1, "*", {key = "i1"}), t">", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"</Proxy>"
	}),
	s({trig = "virtualhost", descr = "(virtualhost)", priority = -1000, trigEngine = te("w")}, {
		t"<VirtualHost ", i(1, "*", {key = "i1"}), t":", i(2, "80", {key = "i2"}), t">", nl(),
		t"\tServerAdmin ", i(3, "webmaster@example.com", {key = "i3"}), nl(),
		t"\tDocumentRoot ", i(4, "/www/example.com", {key = "i4"}), nl(),
		t"\tServerName ", i(0, "www.example.com", {key = "i0"}), nl(),
		t"</VirtualHost>"
	}),
})
