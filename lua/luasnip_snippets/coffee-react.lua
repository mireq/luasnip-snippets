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
	2,
	3,
	4,
	3,
	3,
	3,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
}
ls.add_snippets("coffee-react", {
	s({trig = "createClass", descr = "(createClass) \"React define Class\"", priority = -49, trigEngine = te("b")}, {
		i(1, "classname", {key = "i1"}), t"Class = React.createClass", nl(),
		t"\tdisplayName: \"", cp(1), t"\"", nl(),
		t"\trender: ->", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		cp(1), t" = React.createFactory(", cp(1), t")"
	}),
	s({trig = "PropTypes", descr = "(PropTypes) \"React define propTypes\"", priority = -49, trigEngine = te("b")}, {
		t"propTypes: ->", nl(),
		t"\t", i(1, "myVar", {key = "i1"}), t": React.PropTypes.", i(2, "type", {key = "i2"}), i(3, ".isRequired", {key = "i3"})
	}),
	s({trig = "propType", descr = "(propType) \"React propType (key/value)\"", priority = -49, trigEngine = te("b")}, {
		i(1, "myVar", {key = "i1"}), t": React.PropTypes.", i(2, "type", {key = "i2"}), i(3, ".isRequired", {key = "i3"}), nl(),
		i(4, "", {key = "i4"})
	}),
	s({trig = "setState", descr = "(setState) \"React setState\"", priority = -49, trigEngine = te("b")}, {
		t"@setState", nl(),
		t"\t", i(1, "myvar", {key = "i1"}), t": ", i(2, "myvalue", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "getInitialState", descr = "(getInitialState) \"React define getInitialState\"", priority = -49, trigEngine = te("b")}, {
		t"getInitialState: ->", nl(),
		t"\t", i(1, "myvar", {key = "i1"}), t": ", i(2, "myvalue", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "getDefaultProps", descr = "(getDefaultProps) \"React define getDefaultProps\"", priority = -49, trigEngine = te("b")}, {
		t"getDefaultProps: ->", nl(),
		t"\t", i(1, "myvar", {key = "i1"}), t": ", i(2, "myvalue", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "componentWillMount", descr = "(componentWillMount) \"React define componentWillMount\"", priority = -49, trigEngine = te("b")}, {
		t"componentWillMount: ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "componentDidMount", descr = "(componentDidMount) \"React define componentDidMount\"", priority = -49, trigEngine = te("b")}, {
		t"componentDidMount: ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "componentWillReceiveProps", descr = "(componentWillReceiveProps) \"React define componentWillReceiveProps\"", priority = -49, trigEngine = te("b")}, {
		t"componentWillReceiveProps: (nextProps) ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "shouldComponentUpdate", descr = "(shouldComponentUpdate) \"React define shouldComponentUpdate\"", priority = -49, trigEngine = te("b")}, {
		t"shouldComponentUpdate: (nextProps, nextState) ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "componentWillUpdate", descr = "(componentWillUpdate) \"React define componentWillUpdate\"", priority = -49, trigEngine = te("b")}, {
		t"componentWillUpdate: (nextProps, nextState) ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "componentDidUpdate", descr = "(componentDidUpdate) \"React define componentDidUpdate\"", priority = -49, trigEngine = te("b")}, {
		t"componentDidUpdate: (prevProps, prevState) ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "componentWillUnmount", descr = "(componentWillUnmount) \"React define componentWillUnmount\"", priority = -49, trigEngine = te("b")}, {
		t"componentWillUnmount: ->", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
})
