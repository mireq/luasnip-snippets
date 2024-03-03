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
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


local python_globals = {
	[[# Capitalize the first letter without affecting the rest of the letters
def capitalize_first(word):
	if(word):
		word = word[0].upper() + word[1:]
	return word]]
}


ls.add_snippets("javascript_react", {
	s({trig = "rfc", descr = "(rfc) \"react functional component\"", priority = 0, trigEngine = te("b")}, {
		t"import React, {useState} from \"react\"", nl(),
		nl(),
		t"function ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"javascript_react", 1}, "snip.rv = snip.basename", python_globals, args, snip, "", {})}, ""), {key = "i1"}) }) end), t"(", i(2, "", {key = "i2"}), t"){", nl(),
		t"\treturn(", nl(),
		t"\t\t<div>", nl(),
		t"\t\t\t", i(3, "<p>Body</p>", {key = "i3"}), nl(),
		t"\t\t</div>", nl(),
		t"\t\t)", nl(),
		t"}", nl(),
		nl(),
		t"export default ", i(4, "", {key = "i4"}), f(function(args, snip) return c_py({"javascript_react", 1}, "snip.rv = snip.basename", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "useS", descr = "(useS) \"useState Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const [", i(1, "", {key = "i1"}), t", set", f(function(args, snip) return c_py({"javascript_react", 2}, "snip.rv=capitalize_first(t[1])", python_globals, args, snip, "", {1}) end, {k"i1"}), t"] = useState(", c(2, {{t"\"", i(1, "", {key = "i4"}), t"\""}, {i(1, jt({"\"", "", "\""}))}}, {key = "i3"}), t")"
	}),
	s({trig = "useE", descr = "(useE) \"useEffect Hook\"", priority = 0, trigEngine = te("b")}, {
		t"useEffect(() => {", nl(),
		t"\t", c(1, {{i(1, "", {key = "i0"})}, {i(1, jt({""}))}}, {key = "i1"}), nl(),
		t"\t\t}", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "useC", descr = "(useC) \"useContext Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "context", {key = "i1"}), t" = useContext(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "useRe", descr = "(useRe) \"useReducer Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const [", i(2, "state", {key = "i3"}), t", ", i(3, "dispatch", {key = "i4"}), t"] = useReducer(", i(4, "reducer", {key = "i5"}), t", ", i(1, "initial_value", {key = "i2"}), t")"
	}),
	s({trig = "useCB", descr = "(useCB) \"useCallback(fn, inputs)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "callback", {key = "i1"}), t" = useCallback((", i(2, "", {key = "i2"}), t")) => ", c(3, {{t"{", nl(),
		i(1, "", {key = "i4"}), t"\t${4}", nl()}, {i(1, jt({"{", "\n", "", "\t${4}", "\n"}))}}, {key = "i3"}), t", [", i(4, "", {key = "i5"}), t"])"
	}),
	s({trig = "useM", descr = "(useM) \"useMemo(fn, inputs)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "memorized", {key = "i1"}), t" = useMemo(() => ", c(2, {{t"{", nl(),
		i(1, "", {key = "i3"}), t"\t${3}", nl()}, {i(1, jt({"{", "\n", "", "\t${3}", "\n"}))}}, {key = "i2"}), t", [", i(3, "", {key = "i4"}), t"])"
	}),
	s({trig = "useR", descr = "(useR) \"useRef(defaultValue)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "ref", {key = "i1"}), t" = useRef(", i(2, "null", {key = "i2"}), t")"
	}),
	s({trig = "ir", descr = "(ir) \"import React\"", priority = 0, trigEngine = te("")}, {
		t"import React from \"react\""
	}),
	s({trig = "irc", descr = "(irc) \"import React and Component\"", priority = 0, trigEngine = te("")}, {
		t"import React, { Component } from \"react\""
	}),
})
