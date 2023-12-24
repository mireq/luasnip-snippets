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
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
}
ls.add_snippets("slim", {
	s({trig = "pry", descr = "(pry)", priority = -1000, trigEngine = te("w")}, {
		t"- binding.pry"
	}),
	s({trig = "renp", descr = "(renp)", priority = -1000, trigEngine = te("w")}, {
		t"= render partial: \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "fieldset", descr = "(fieldset)", priority = -1000, trigEngine = te("w")}, {
		t"fieldset", nl(),
		t"\tlegend ", i(1, "", {key = "i1"})
	}),
	s({trig = "css", descr = "(css)", priority = -1000, trigEngine = te("w")}, {
		t"link rel=\"stylesheet\" href=\"", i(1, "style.css", {key = "i1"}), t"\" type=\"text/css\" media=\"", i(2, "all", {key = "i2"}), t"\""
	}),
	s({trig = "script", descr = "(script)", priority = -1000, trigEngine = te("w")}, {
		t"script src=\"", i(1, "script.js", {key = "i1"}), t"\" type=\"text/javascript\""
	}),
	s({trig = "nbs", descr = "(nbs)", priority = -1000, trigEngine = te("w")}, {
		t"&nbsp;"
	}),
	s({trig = "left", descr = "(left)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2190;"
	}),
	s({trig = "right", descr = "(right)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2192;"
	}),
	s({trig = "up", descr = "(up)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2191;"
	}),
	s({trig = "down", descr = "(down)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2193;"
	}),
	s({trig = "return", descr = "(return)", priority = -1000, trigEngine = te("w")}, {
		t"&#x21A9;"
	}),
	s({trig = "backtab", descr = "(backtab)", priority = -1000, trigEngine = te("w")}, {
		t"&#x21E4;"
	}),
	s({trig = "tab", descr = "(tab)", priority = -1000, trigEngine = te("w")}, {
		t"&#x21E5;"
	}),
	s({trig = "shift", descr = "(shift)", priority = -1000, trigEngine = te("w")}, {
		t"&#x21E7;"
	}),
	s({trig = "ctrl", descr = "(ctrl)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2303;"
	}),
	s({trig = "enter", descr = "(enter)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2305;"
	}),
	s({trig = "cmd", descr = "(cmd)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2318;"
	}),
	s({trig = "option", descr = "(option)", priority = -1000, trigEngine = te("w")}, {
		t"&#x2325;"
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
})
