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
	1,
	1,
	1,
	0,
}

local python_globals = {
	[[def sec_title(snip, t):
	file_start = snip.fn.split('.')[0]
	sec_name = t[1].strip("1234567890. ").lower().replace(' ', '-')
	return ("*%s-%s*" % (file_start, sec_name)).rjust(78-len(t[1]))]]
}


ls.add_snippets("help", {
	s({trig = "sec", descr = "(sec) \"Section marker\"", priority = -50, trigEngine = te("b")}, {
		t"==============================================================================", nl(),
		i(1, "SECTION", {key = "i1"}), f(function(args, snip) return c_py({"help", 1}, "snip.rv = sec_title(snip, t)", python_globals, args, snip, "", am[1]) end, ae(am[1])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ssec", descr = "(ssec) \"Sub section marker\"", priority = -50, trigEngine = te("b")}, {
		i(1, "Subsection", {key = "i1"}), f(function(args, snip) return c_py({"help", 2}, "snip.rv = sec_title(snip, t)\nsnip += \"-\"*len(t[1])", python_globals, args, snip, "", am[2]) end, ae(am[2])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sssec", descr = "(sssec) \"Subsub Section marker\"", priority = -50, trigEngine = te("b")}, {
		i(1, "SubSubsection", {key = "i1"}), t":", f(function(args, snip) return c_py({"help", 3}, "snip.rv = sec_title(snip, t)", python_globals, args, snip, "", am[3]) end, ae(am[3])), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "modeline", descr = "(modeline) \"Vim help modeline\"", priority = -50, trigEngine = te("")}, {
		t" ", f(function(args, snip) return c_viml("\'vim\'") end, {}), t":tw=78:ts=8:ft=help:norl:"
	}),
})
