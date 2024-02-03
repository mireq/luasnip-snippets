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
}

local python_globals = {
	[[def newsoa():
	import datetime
	now = datetime.datetime.now()
	# return standard SOA formatted serial for today
	return now.strftime("%Y%m%d00")]]
}


ls.add_snippets("bindzone", {
	s({trig = "zone", descr = "(zone) \"Bootstrap a new Bind zonefile\"", priority = -50, trigEngine = te("b")}, {
		t"$TTL 86400", nl(),
		t"@\t  IN SOA   ", i(1, "example.net", {key = "i1"}), t".\t ", d(2, function(args) return sn(nil, {t"hostmaster.", cp(1)}) end, {}, {key = "i2"}), t".(", nl(),
		t"\t\t\t\t\t\t", f(function(args, snip) return c_py({"bindzone", 1}, "snip.rv = newsoa()", python_globals, args, snip, "", am[1]) end, ae(am[1])), t";\t serial", nl(),
		t"\t\t\t\t\t\t21600;\t\t\trefresh every 6 hours", nl(),
		t"\t\t\t\t\t\t3600;\t\t\tretry after one hour", nl(),
		t"\t\t\t\t\t\t604800;\t\t\texpire after a week", nl(),
		t"\t\t\t\t\t\t86400 );\t\tminimum TTL of 1 day", nl(),
		nl(),
		t"\t\t\t\tIN\t\tNS\t\t\t\tns01.", cp(1), t".", nl(),
		t"\t\t\t\tIN\t\tMX\t\t10\t\tmail.", cp(1), t".", nl(),
		nl(),
		t"ns01.", cp(1), t"\t\t\tIN\t\tA", nl(),
		t"mail.", cp(1), t"\t\t\tIN\t\tA"
	}),
	s({trig = "A", descr = "(A) \"Insert A Record\"", priority = -50, trigEngine = te("b")}, {
		i(1, "hostname", {key = "i1"}), t"\tIN\t\tA\t", i(2, "ip", {key = "i2"})
	}),
})
