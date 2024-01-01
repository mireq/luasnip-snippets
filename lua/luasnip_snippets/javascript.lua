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
	{{1, 1}},
	{},
	{},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 3}, {3, 10}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{},
	{{0, 0}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}},
	{},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{},
	{},
	{},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 3}, {3, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 2}, {2, 3}, {3, 4}, {4, 5}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 10}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
}

local python_globals = {
	[[# Capitalize the first letter without affecting the rest of the letters
def capitalize_first(word):
	if(word):
		word = word[0].upper() + word[1:]
	return word]]
, 	[[from javascript_snippets import (
	semi, space_before_function_paren, keyword_spacing
)]]
}


ls.add_snippets("javascript", {
	s({trig = "ir", descr = "(ir) \"import React\"", priority = 0, trigEngine = te("")}, {
		t"import React from \"react\""
	}),
	s({trig = "irc", descr = "(irc) \"import React and Component\"", priority = 0, trigEngine = te("")}, {
		t"import React, { Component } from \"react\""
	}),
	s({trig = "irh", descr = "(irh) import React hooks", priority = -1000, trigEngine = te("w")}, {
		t"import { use", i(1, "", {key = "i1"}), t" } from \'react\';", nl()
	}),
	s({trig = "ird", descr = "(ird) import ReactDOM", priority = -1000, trigEngine = te("w")}, {
		t"import ReactDOM from \'react-dom\';", nl()
	}),
	s({trig = "irp", descr = "(irp) import PropTypes", priority = -1000, trigEngine = te("w")}, {
		t"import PropTypes from \'prop-types\';", nl()
	}),
	s({trig = "cdm", descr = "(cdm) componentDidMount", priority = -1000, trigEngine = te("w")}, {
		t"componentDidMount() {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "cdup", descr = "(cdup) componentDidUpdate", priority = -1000, trigEngine = te("w")}, {
		t"componentDidUpdate(prevProps, prevState) {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "cwm", descr = "(cwm) componentWillMount", priority = -1000, trigEngine = te("w")}, {
		t"componentWillMount() {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "cwr", descr = "(cwr) componentWillReceiveProps", priority = -1000, trigEngine = te("w")}, {
		t"componentWillReceiveProps(nextProps) {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "cwun", descr = "(cwun) componentWillUnmount", priority = -1000, trigEngine = te("w")}, {
		t"componentWillUnmount() {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "cwu", descr = "(cwu) componentWillUpdate", priority = -1000, trigEngine = te("w")}, {
		t"componentWillUpdate(nextProps, nextState) {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"};", nl()
	}),
	s({trig = "scu", descr = "(scu) shouldComponentUpdate", priority = -1000, trigEngine = te("w")}, {
		t"shouldComponentUpdate(nextProps, nextState) {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "spt", descr = "(spt) static propTypes", priority = -1000, trigEngine = te("w")}, {
		t"static propTypes = {", nl(),
		t"\t", i(1, "", {key = "i1"}), t": PropTypes.", i(2, "", {key = "i2"}), nl(),
		t"};", nl()
	}),
	s({trig = "pt", descr = "(pt) propTypes", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t".propTypes = {", nl(),
		t"\t", i(2, "", {key = "i2"}), t": PropTypes.", cp(2), nl(),
		t"};", nl()
	}),
	s({trig = "sdp", descr = "(sdp) static defaultProps", priority = -1000, trigEngine = te("w")}, {
		t"static defaultProps = {", nl(),
		t"\t", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), t"\t", nl(),
		t"};", nl()
	}),
	s({trig = "dp", descr = "(dp) defaultProps", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t".defaultProps = {", nl(),
		t"\t", i(2, "", {key = "i2"}), t": ", i(3, "", {key = "i3"}), nl(),
		t"};", nl()
	}),
	s({trig = "pp", descr = "(pp) props", priority = -1000, trigEngine = te("w")}, {
		t"props.", i(1, "", {key = "i1"}), t";", nl()
	}),
	s({trig = "tp", descr = "(tp) this props", priority = -1000, trigEngine = te("w")}, {
		t"this.props.", i(1, "", {key = "i1"}), t";", nl()
	}),
	s({trig = "st", descr = "(st)", priority = -1000, trigEngine = te("w")}, {
		t"state = {", nl(),
		t"\t", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), t",", nl(),
		t"};", nl()
	}),
	s({trig = "sst", descr = "(sst)", priority = -1000, trigEngine = te("w")}, {
		t"this.setState({", nl(),
		t"\t", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), nl(),
		t"});", nl()
	}),
	s({trig = "tst", descr = "(tst)", priority = -1000, trigEngine = te("w")}, {
		t"this.state.", i(1, "", {key = "i1"}), t";", nl()
	}),
	s({trig = "raf", descr = "(raf)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "ComponentName", {key = "i1"}), t" = (", i(2, "props", {key = "i2"}), t") => {", nl(),
		t"\t", i(3, "state", {key = "i3"}), nl(),
		nl(),
		t"\treturn (", nl(),
		t"\t\t<>", nl(),
		t"\t\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\t</>", nl(),
		t"\t);", nl(),
		t"};", nl()
	}),
	s({trig = "rcla", descr = "(rcla)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "ClassName", {key = "i1"}), t" extends Component {", nl(),
		t"\trender() {", nl(),
		t"\t\treturn (", nl(),
		t"\t\t\t<>", nl(),
		t"\t\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t\t</>", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "ercla", descr = "(ercla)", priority = -1000, trigEngine = te("w")}, {
		t"export default class ", i(1, "ClassName", {key = "i1"}), t" extends Component {", nl(),
		t"\trender() {", nl(),
		t"\t\treturn (", nl(),
		t"\t\t\t<>", nl(),
		t"\t\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t\t</>", nl(),
		t"\t\t);", nl(),
		t"\t};", nl(),
		t"};", nl()
	}),
	s({trig = "ctor", descr = "(ctor)", priority = -1000, trigEngine = te("w")}, {
		t"constructor() {", nl(),
		t"\tsuper();", nl(),
		nl(),
		t"\t", i(1, "state", {key = "i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "ren", descr = "(ren)", priority = -1000, trigEngine = te("w")}, {
		t"render() {", nl(),
		t"\treturn (", nl(),
		t"\t\t<>", nl(),
		t"\t\t\t", i(1, "", {key = "i2"}), nl(),
		t"\t\t</>", nl(),
		t"\t);", nl(),
		t"}", nl()
	}),
	s({trig = "fup", descr = "(fup)", priority = -1000, trigEngine = te("w")}, {
		t"forceUpdate(", i(1, "callback", {key = "i1"}), t");", nl()
	}),
	s({trig = "uses", descr = "(uses) useState", priority = -1000, trigEngine = te("w")}, {
		t"const [", i(1, "state", {key = "i1"}), t", set", i(2, "", {key = "i2"}), t"] = useState(", i(3, "initialState", {key = "i3"}), t");", nl()
	}),
	s({trig = "usee", descr = "(usee) useEffect", priority = -1000, trigEngine = te("w")}, {
		t"useEffect(() => {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"});", nl()
	}),
	s({trig = "userd", descr = "(userd) useReducer", priority = -1000, trigEngine = te("w")}, {
		t"const [", i(1, "state", {key = "i1"}), t", ", i(2, "dispatch", {key = "i2"}), t"] = useReducer(", i(3, "reducer", {key = "i3"}), t");", nl()
	}),
	s({trig = "userf", descr = "(userf) useRef", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "refContainer", {key = "i1"}), t" = useRef(", i(2, "initialValue", {key = "i2"}), t");", nl()
	}),
	s({trig = "usect", descr = "(usect) useContext", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "value", {key = "i1"}), t" = useContext(", i(2, "MyContext", {key = "i2"}), t");", nl()
	}),
	s({trig = "usecb", descr = "(usecb) useCallback", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "memoizedCallback", {key = "i1"}), t" = useCallback(", nl(),
		t"() => {", nl(),
		t"\t", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"},", nl(),
		t"[", cp(3), t"]", nl(),
		t");", nl()
	}),
	s({trig = "usem", descr = "(usem) useMemo", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "memoizedCallback", {key = "i1"}), t" = useMemo(() => ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t"), [", cp(3), t"]);", nl()
	}),
	s({trig = "usei", descr = "(usei) useImperativeHandle", priority = -1000, trigEngine = te("w")}, {
		t"useImperativeHandle(", i(1, "ref", {key = "i1"}), t", ", i(2, "createHandle", {key = "i2"}), t");", nl()
	}),
	s({trig = "used", descr = "(used) useDebugValue", priority = -1000, trigEngine = te("w")}, {
		t"useDebugValue(", i(1, "value", {key = "i1"}), t");", nl()
	}),
	s({trig = "rdr", descr = "(rdr) ReactDOM.render", priority = -1000, trigEngine = te("w")}, {
		t"ReactDOM.render(", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), t");", nl()
	}),
	s({trig = "rdh", descr = "(rdh) ReactDOM.hydrate", priority = -1000, trigEngine = te("w")}, {
		t"ReactDOM.hydrate(", i(1, "element", {key = "i1"}), t", ", i(2, "container", {key = "i2"}), t"[, ", i(3, "callback", {key = "i3"}), t"]);", nl()
	}),
	s({trig = "rdcp", descr = "(rdcp) ReactDOM.createPortal", priority = -1000, trigEngine = te("w")}, {
		t"ReactDOM.createPortal(", i(1, "child", {key = "i1"}), t", ", i(2, "container", {key = "i2"}), t");"
	}),
	s({trig = "ist", descr = "(ist)", priority = -1000, trigEngine = te("w")}, {
		t"import { createStore } from \'redux\';"
	}),
	s({trig = "con", descr = "(con)", priority = -1000, trigEngine = te("w")}, {
		t"connect(", i(1, "mapStateToProps", {key = "i1"}), t", ", i(2, "mapDispatchToProps", {key = "i2"}), t")(<", i(3, "VISUAL", {key = "i3"}), t"/>);"
	}),
	s({trig = "act", descr = "(act)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "actionName", {key = "i1"}), t" = (", i(2, "arg", {key = "i2"}), t") => {", nl(),
		t"\treturn {", nl(),
		t"\t\ttype: ", i(3, "VISUAL", {key = "i3"}), t",", nl(),
		t"\t\t", cp(2), nl(),
		t"\t};", nl(),
		t"};"
	}),
	s({trig = "rdc", descr = "(rdc)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "reducerName", {key = "i1"}), t" = (state={}, action) => {", nl(),
		t"\tswitch(action.type) {", nl(),
		t"\t\tcase ", i(1, "action", {key = "i1"}), t":", nl(),
		t"\t\t\treturn {", nl(),
		t"\t\t\t\t...state,", nl(),
		t"\t\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t\t};", nl(),
		t"\t\tdefault:", nl(),
		t"\t\t\treturn state;", nl(),
		t"\t};", nl(),
		t"};"
	}),
	s({trig = "mstp", descr = "(mstp)", priority = -1000, trigEngine = te("w")}, {
		t"const mapStateToProps = (state) => {", nl(),
		t"\treturn {", nl(),
		t"\t\t", i(1, "propName", {key = "i1"}), t": state.", cp(1), t",", nl(),
		t"\t};", nl(),
		t"};"
	}),
	s({trig = "mdtp", descr = "(mdtp)", priority = -1000, trigEngine = te("w")}, {
		t"const mapDispatchToProps = (dispatch) => {", nl(),
		t"\treturn {", nl(),
		t"\t\t", i(1, "propName", {key = "i1"}), t": () => {", nl(),
		t"\t\t\tdispatch(", i(2, "actionName", {key = "i2"}), t"());", nl(),
		t"\t\t},", nl(),
		t"\t};", nl(),
		t"};"
	}),
	s({trig = "add", descr = "(add)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".add(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "addClass", descr = "(addClass)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".addClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "after", descr = "(after)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".after(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "ajax", descr = "(ajax)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajax({", nl(),
		t"\turl: \'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\ttype: \'", i(2, "POST", {key = "i2"}), t"\',", nl(),
		t"\tdataType: \'", i(3, "xml/html/script/json", {key = "i3"}), t"\',", nl(),
		t"\tdata: $.param( $(\'", i(4, "Element or Expression", {key = "i4"}), t"\') ),", nl(),
		t"\tcomplete: function (jqXHR, textStatus) {", nl(),
		t"\t\t", i(5, "// callback", {key = "i5"}), nl(),
		t"\t},", nl(),
		t"\tsuccess: function (data, textStatus, jqXHR) {", nl(),
		t"\t\t", i(6, "// success callback", {key = "i6"}), nl(),
		t"\t},", nl(),
		t"\terror: function (jqXHR, textStatus, errorThrown) {", nl(),
		t"\t\t", i(0, "// error callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"});"
	}),
	s({trig = "ajaxcomplete", descr = "(ajaxcomplete)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxComplete(function (", i(1, "e", {key = "i1"}), t", xhr, settings) {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "ajaxerror", descr = "(ajaxerror)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxError(function (", i(1, "e", {key = "i1"}), t", xhr, settings, thrownError) {", nl(),
		t"\t", i(2, "// error callback", {key = "i2"}), nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxget", descr = "(ajaxget)", priority = -1000, trigEngine = te("w")}, {
		t"$.get(\'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\tfunction (data, textStatus, jqXHR) {", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t");"
	}),
	s({trig = "ajaxpost", descr = "(ajaxpost)", priority = -1000, trigEngine = te("w")}, {
		t"$.post(\'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\tfunction (data, textStatus, jqXHR) {", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t");"
	}),
	s({trig = "ajaxprefilter", descr = "(ajaxprefilter)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxPrefilter(function (", i(1, "options", {key = "i1"}), t", ", i(2, "originalOptions", {key = "i2"}), t", jqXHR) {", nl(),
		t"\t", i(0, " // Modify options, control originalOptions, store jqXHR, etc", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "ajaxsend", descr = "(ajaxsend)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxSend(function (", i(1, "request, settings", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "// error callback", {key = "i2"}), nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxsetup", descr = "(ajaxsetup)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxSetup({", nl(),
		t"\turl: \"", i(1, "mydomain.com/url", {key = "i1"}), t"\",", nl(),
		t"\ttype: \"", i(2, "POST", {key = "i2"}), t"\",", nl(),
		t"\tdataType: \"", i(3, "xml/html/script/json", {key = "i3"}), t"\",", nl(),
		t"\tdata: $.param( $(\"", i(4, "Element or Expression", {key = "i4"}), t"\") ),", nl(),
		t"\tcomplete: function (jqXHR, textStatus) {", nl(),
		t"\t\t", i(5, "// callback", {key = "i5"}), nl(),
		t"\t},", nl(),
		t"\tsuccess: function (data, textStatus, jqXHR) {", nl(),
		t"\t\t", i(6, "// success callback", {key = "i6"}), nl(),
		t"\t},", nl(),
		t"\terror: function (jqXHR, textStatus, errorThrown) {", nl(),
		t"\t\t", i(0, "// error callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"});"
	}),
	s({trig = "ajaxstart", descr = "(ajaxstart)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxStart(function () {", nl(),
		t"\t", i(1, "// handler for when an AJAX call is started and no other AJAX calls are in progress", {key = "i1"}), t";", nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxstop", descr = "(ajaxstop)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxStop(function () {", nl(),
		t"\t", i(1, "// handler for when all AJAX calls have been completed", {key = "i1"}), t";", nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxsuccess", descr = "(ajaxsuccess)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxSuccess(function (", i(1, "e", {key = "i1"}), t", xhr, settings) {", nl(),
		t"\t", i(2, "// handler for when any AJAX call is successfully completed", {key = "i2"}), t";", nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "andself", descr = "(andself)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".andSelf()"
	}),
	s({trig = "animate", descr = "(animate)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".animate({", i(2, "param1: value1, param2: value2", {key = "i2"}), t"}, ", i(3, "speed", {key = "i3"}), t")"
	}),
	s({trig = "append", descr = "(append)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".append(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "appendTo", descr = "(appendTo)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".appendTo(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "attr", descr = "(attr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".attr(\'", i(2, "attribute", {key = "i2"}), t"\', \'", i(3, "value", {key = "i3"}), t"\')"
	}),
	s({trig = "attrm", descr = "(attrm)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".attr({\'", i(2, "attr1", {key = "i2"}), t"\': \'", i(3, "value1", {key = "i3"}), t"\', \'", i(4, "attr2", {key = "i4"}), t"\': \'", i(5, "value2", {key = "i5"}), t"\'})"
	}),
	s({trig = "before", descr = "(before)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".before(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "bind", descr = "(bind)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".bind(\'", i(2, "event name", {key = "i2"}), t"\', function (", i(3, "e", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "blur", descr = "(blur)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".blur(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "C", descr = "(C)", priority = -1000, trigEngine = te("w")}, {
		t"$.Callbacks()"
	}),
	s({trig = "Cadd", descr = "(Cadd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".add(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Cdis", descr = "(Cdis)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".disable()"
	}),
	s({trig = "Cempty", descr = "(Cempty)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".empty()"
	}),
	s({trig = "Cfire", descr = "(Cfire)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fire(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Cfired", descr = "(Cfired)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fired()"
	}),
	s({trig = "Cfirew", descr = "(Cfirew)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fireWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Chas", descr = "(Chas)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".has(", i(2, "callback", {key = "i2"}), t")"
	}),
	s({trig = "Clock", descr = "(Clock)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".lock()"
	}),
	s({trig = "Clocked", descr = "(Clocked)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".locked()"
	}),
	s({trig = "Crem", descr = "(Crem)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".remove(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "change", descr = "(change)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".change(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "children", descr = "(children)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".children(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "clearq", descr = "(clearq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".clearQueue(", i(2, "\'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "click", descr = "(click)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".click(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "clone", descr = "(clone)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".clone()"
	}),
	s({trig = "contains", descr = "(contains)", priority = -1000, trigEngine = te("w")}, {
		t"$.contains(", i(1, "container", {key = "i1"}), t", ", i(0, "contents", {key = "i0"}), t");"
	}),
	s({trig = "css", descr = "(css)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".css(\'", i(2, "attribute", {key = "i2"}), t"\', \'", i(3, "value", {key = "i3"}), t"\')"
	}),
	s({trig = "csshooks", descr = "(csshooks)", priority = -1000, trigEngine = te("w")}, {
		t"$.cssHooks[\'", i(1, "CSS prop", {key = "i1"}), t"\'] = {", nl(),
		t"\tget: function (elem, computed, extra) {", nl(),
		t"\t\t", i(2, " // handle getting the CSS property", {key = "i2"}), nl(),
		t"\t},", nl(),
		t"\tset: function (elem, value) {", nl(),
		t"\t\t", i(0, " // handle setting the CSS value", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"};"
	}),
	s({trig = "cssm", descr = "(cssm)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".css({", i(2, "attribute1", {key = "i2"}), t": \'", i(3, "value1", {key = "i3"}), t"\', ", i(4, "attribute2", {key = "i4"}), t": \'", i(5, "value2", {key = "i5"}), t"\'})"
	}),
	s({trig = "D", descr = "(D)", priority = -1000, trigEngine = te("w")}, {
		t"$.Deferred()"
	}),
	s({trig = "Dalways", descr = "(Dalways)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".always(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Ddone", descr = "(Ddone)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".done(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Dfail", descr = "(Dfail)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".fail(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Disrej", descr = "(Disrej)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".isRejected()"
	}),
	s({trig = "Disres", descr = "(Disres)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".isResolved()"
	}),
	s({trig = "Dnotify", descr = "(Dnotify)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".notify(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Dnotifyw", descr = "(Dnotifyw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".notifyWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dpipe", descr = "(Dpipe)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".then(", i(2, "doneFilter", {key = "i2"}), t", ", i(3, "failFilter", {key = "i3"}), t", ", i(4, "progressFilter", {key = "i4"}), t")"
	}),
	s({trig = "Dprog", descr = "(Dprog)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".progress(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Dprom", descr = "(Dprom)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".promise(", i(2, "target", {key = "i2"}), t")"
	}),
	s({trig = "Drej", descr = "(Drej)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".reject(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Drejw", descr = "(Drejw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".rejectWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dres", descr = "(Dres)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".resolve(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Dresw", descr = "(Dresw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".resolveWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dstate", descr = "(Dstate)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".state()"
	}),
	s({trig = "Dthen", descr = "(Dthen)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".then(", i(2, "doneCallbacks", {key = "i2"}), t", ", i(3, "failCallbacks", {key = "i3"}), t", ", i(4, "progressCallbacks", {key = "i4"}), t")"
	}),
	s({trig = "Dwhen", descr = "(Dwhen)", priority = -1000, trigEngine = te("w")}, {
		t"$.when(", i(1, "deferreds", {key = "i1"}), t")"
	}),
	s({trig = "data", descr = "(data)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".data(", i(2, "obj", {key = "i2"}), t")"
	}),
	s({trig = "dataa", descr = "(dataa)", priority = -1000, trigEngine = te("w")}, {
		t"$.data(\'", i(1, "selector expression", {key = "i1"}), t"\', \'", i(2, "key", {key = "i2"}), t"\'", i(3, ", \'value\'", {key = "i3"}), t")"
	}),
	s({trig = "dblclick", descr = "(dblclick)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".dblclick(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "delay", descr = "(delay)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".delay(\'", i(2, "slow/400/fast", {key = "i2"}), t"\'", i(3, ", \'queue name\'", {key = "i3"}), t")"
	}),
	s({trig = "dele", descr = "(dele)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".delegate(\'", i(2, "selector expression", {key = "i2"}), t"\', \'", i(3, "event name", {key = "i3"}), t"\', function (", i(4, "e", {key = "i4"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "deq", descr = "(deq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".dequeue(", i(2, "\'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "deqq", descr = "(deqq)", priority = -1000, trigEngine = te("w")}, {
		t"$.dequeue(\'", i(1, "selector expression", {key = "i1"}), t"\'", i(2, ", \'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "detach", descr = "(detach)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".detach(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "die", descr = "(die)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".die(", i(2, "event", {key = "i2"}), t", ", i(3, "handler", {key = "i3"}), t")"
	}),
	s({trig = "each", descr = "(each)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".each(function (index) {", nl(),
		t"\t", i(0, "this.innerHTML = this + \" is the element, \" + index + \" is the position\";", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"$(\'<", i(1, "", {key = "i1"}), t"/>\'", i(2, ", {}", {key = "i2"}), t")"
	}),
	s({trig = "eltrim", descr = "(eltrim)", priority = -1000, trigEngine = te("w")}, {
		t"$.trim(\'", i(1, "string", {key = "i1"}), t"\')"
	}),
	s({trig = "empty", descr = "(empty)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".empty()"
	}),
	s({trig = "end", descr = "(end)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".end()"
	}),
	s({trig = "eq", descr = "(eq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".eq(", i(2, "element index", {key = "i2"}), t")"
	}),
	s({trig = "error", descr = "(error)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".error(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "eventsmap", descr = "(eventsmap)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t:f", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "extend", descr = "(extend)", priority = -1000, trigEngine = te("w")}, {
		t"$.extend(", i(1, "true, ", {key = "i1"}), i(2, "target", {key = "i2"}), t", ", i(3, "obj", {key = "i3"}), t")"
	}),
	s({trig = "fadein", descr = "(fadein)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeIn(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "fadeinc", descr = "(fadeinc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeIn(\'slow/400/fast\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "fadeout", descr = "(fadeout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeOut(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "fadeoutc", descr = "(fadeoutc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeOut(\'slow/400/fast\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "fadeto", descr = "(fadeto)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeTo(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', ", i(3, "0.5", {key = "i3"}), t")"
	}),
	s({trig = "fadetoc", descr = "(fadetoc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeTo(\'slow/400/fast\', ", i(2, "0.5", {key = "i2"}), t", function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".filter(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "filtert", descr = "(filtert)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".filter(function (", i(2, "index", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"})"
	}),
	s({trig = "find", descr = "(find)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".find(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "focus", descr = "(focus)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focus(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "focusin", descr = "(focusin)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focusIn(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "focusout", descr = "(focusout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focusOut(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "get", descr = "(get) \"Get Elements\"", priority = -50, trigEngine = te("")}, {
		t"getElement", tr(1, "(T)|(C)|.*", "(?1:s)(?2:s)"), t"By", i(1, "T", {key = "i1"}), tr(1, "(T)|(I)|(C).*", "(?1:agName)(?2:d)(?3:lassName)"), t"(\'", i(2, "", {key = "i2"}), t"\')"
	}),
	s({trig = "getjson", descr = "(getjson)", priority = -1000, trigEngine = te("w")}, {
		t"$.getJSON(\'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\tfunction (data, textStatus, jqXHR) {", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t");"
	}),
	s({trig = "getscript", descr = "(getscript)", priority = -1000, trigEngine = te("w")}, {
		t"$.getScript(\'", i(1, "mydomain.com/url", {key = "i1"}), t"\', function (script, textStatus, jqXHR) {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "grep", descr = "(grep)", priority = -1000, trigEngine = te("w")}, {
		t"$.grep(", i(1, "array", {key = "i1"}), t", function (item, index) {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}", i(0, ", true", {key = "i0"}), t");"
	}),
	s({trig = "hasc", descr = "(hasc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hasClass(\'", i(2, "className", {key = "i2"}), t"\')"
	}),
	s({trig = "hasd", descr = "(hasd)", priority = -1000, trigEngine = te("w")}, {
		t"$.hasData(\'", i(0, "selector expression", {key = "i0"}), t"\');"
	}),
	s({trig = "height", descr = "(height)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".height(", i(2, "integer", {key = "i2"}), t")"
	}),
	s({trig = "hide", descr = "(hide)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hide(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "hidec", descr = "(hidec)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hide(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "hover", descr = "(hover)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hover(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "// event handler", {key = "i3"}), nl(),
		t"}, function (", cp(2), t") {", nl(),
		t"\t", i(4, "// event handler", {key = "i4"}), nl(),
		t"});"
	}),
	s({trig = "html", descr = "(html)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".html(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "inarr", descr = "(inarr)", priority = -1000, trigEngine = te("w")}, {
		t"$.inArray(", i(1, "value", {key = "i1"}), t", ", i(0, "array", {key = "i0"}), t");"
	}),
	s({trig = "insa", descr = "(insa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".insertAfter(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "insb", descr = "(insb)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".insertBefore(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".is(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "isarr", descr = "(isarr)", priority = -1000, trigEngine = te("w")}, {
		t"$.isArray(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isempty", descr = "(isempty)", priority = -1000, trigEngine = te("w")}, {
		t"$.isEmptyObject(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isfunc", descr = "(isfunc)", priority = -1000, trigEngine = te("w")}, {
		t"$.isFunction(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isnum", descr = "(isnum)", priority = -1000, trigEngine = te("w")}, {
		t"$.isNumeric(", i(1, "value", {key = "i1"}), t")"
	}),
	s({trig = "isobj", descr = "(isobj)", priority = -1000, trigEngine = te("w")}, {
		t"$.isPlainObject(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "iswin", descr = "(iswin)", priority = -1000, trigEngine = te("w")}, {
		t"$.isWindow(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isxml", descr = "(isxml)", priority = -1000, trigEngine = te("w")}, {
		t"$.isXMLDoc(", i(1, "node", {key = "i1"}), t")"
	}),
	s({trig = "jj", descr = "(jj)", priority = -1000, trigEngine = te("w")}, {
		t"$(\'", i(1, "selector", {key = "i1"}), t"\')"
	}),
	s({trig = "kdown", descr = "(kdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keydown(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "kpress", descr = "(kpress)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keypress(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "kup", descr = "(kup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keyup(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "last", descr = "(last)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".last(\'", i(1, "selector expression", {key = "i1"}), t"\')"
	}),
	s({trig = "live", descr = "(live)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".live(\'", i(2, "events", {key = "i2"}), t"\', function (", i(3, "e", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "load", descr = "(load)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".load(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "loadf", descr = "(loadf)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".load(\'", i(2, "mydomain.com/url", {key = "i2"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\tfunction (responseText, textStatus, xhr) {", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"});"
	}),
	s({trig = "makearray", descr = "(makearray)", priority = -1000, trigEngine = te("w")}, {
		t"$.makeArray(", i(0, "obj", {key = "i0"}), t");"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".map(function (", i(2, "index", {key = "i2"}), t", ", i(3, "element", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mapp", descr = "(mapp)", priority = -1000, trigEngine = te("w")}, {
		t"$.map(", i(1, "arrayOrObject", {key = "i1"}), t", function (", i(2, "value", {key = "i2"}), t", ", i(3, "indexOrKey", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "merge", descr = "(merge)", priority = -1000, trigEngine = te("w")}, {
		t"$.merge(", i(1, "target", {key = "i1"}), t", ", i(0, "original", {key = "i0"}), t");"
	}),
	s({trig = "mdown", descr = "(mdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mousedown(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "menter", descr = "(menter)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseenter(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mleave", descr = "(mleave)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseleave(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mmove", descr = "(mmove)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mousemove(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mout", descr = "(mout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseout(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mover", descr = "(mover)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseover(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "mup", descr = "(mup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseup(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "next", descr = "(next)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".next(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "nexta", descr = "(nexta)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".nextAll(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "nextu", descr = "(nextu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".nextUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "not", descr = "(not)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".not(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "off", descr = "(off)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".off(\'", i(2, "events", {key = "i2"}), t"\', \'", i(3, "selector expression", {key = "i3"}), t"\'", i(4, ", handler", {key = "i4"}), t")"
	}),
	s({trig = "offset", descr = "(offset)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".offset()"
	}),
	s({trig = "offsetp", descr = "(offsetp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".offsetParent()"
	}),
	s({trig = "on", descr = "(on)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			i(1, "obj", {key = "i1"}), t".on(\'", i(2, "events", {key = "i2"}), t"\', \'", i(3, "selector expression", {key = "i3"}), t"\', function (", i(4, "e", {key = "i4"}), t") {", nl(),
			t"\t", i(5, "// event handler", {key = "i0"}), nl(),
			t"});"
		},
		{
			t"on(\'", i(1, "event_name", {key = "i1"}), t"\', function(", i(2, "stream", {key = "i2"}), t") {", nl(),
			t"  ", i(3, "", {key = "i3"}), nl(),
			t"});"
		},
	})),
	s({trig = "one", descr = "(one)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".one(\'", i(2, "event name", {key = "i2"}), t"\', function (", i(3, "e", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "outerh", descr = "(outerh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".outerHeight()"
	}),
	s({trig = "outerw", descr = "(outerw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".outerWidth()"
	}),
	s({trig = "param", descr = "(param)", priority = -1000, trigEngine = te("w")}, {
		t"$.param(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "parent", descr = "(parent)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parent(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "parents", descr = "(parents)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parents(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "parentsu", descr = "(parentsu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parentsUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "parsejson", descr = "(parsejson)", priority = -1000, trigEngine = te("w")}, {
		t"$.parseJSON(", i(1, "data", {key = "i1"}), t")"
	}),
	s({trig = "parsexml", descr = "(parsexml)", priority = -1000, trigEngine = te("w")}, {
		t"$.parseXML(", i(1, "data", {key = "i1"}), t")"
	}),
	s({trig = "pos", descr = "(pos)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".position()"
	}),
	s({trig = "prepend", descr = "(prepend)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prepend(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "prependto", descr = "(prependto)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prependTo(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "prev", descr = "(prev)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prev(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "preva", descr = "(preva)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prevAll(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "prevu", descr = "(prevu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prevUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "promise", descr = "(promise)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".promise(", i(2, "\'fx\'", {key = "i2"}), t", ", i(3, "target", {key = "i3"}), t")"
	}),
	s({trig = "prop", descr = "(prop)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			i(1, "obj", {key = "i1"}), t".prop(\'", i(2, "property name", {key = "i2"}), t"\')"
		},
		{
			t"Object.defineProperty(", nl(),
			t"\t", i(1, "object", {key = "i1"}), t",", nl(),
			t"\t\'", i(2, "property", {key = "i2"}), t"\',", nl(),
			t"\t{", nl(),
			t"\t\tget : function ", cp(1), t"_", cp(2), t"_getter() {", nl(),
			t"\t\t\t// getter code", nl(),
			t"\t\t},", nl(),
			t"\t\tset : function ", cp(1), t"_", cp(2), t"_setter(value) {", nl(),
			t"\t\t\t// setter code", nl(),
			t"\t\t},", nl(),
			t"\t\tvalue        : ", i(3, "value", {key = "i3"}), t",", nl(),
			t"\t\twriteable    : ", i(4, "boolean", {key = "i4"}), t",", nl(),
			t"\t\tenumerable   : ", i(5, "boolean", {key = "i5"}), t",", nl(),
			t"\t\tconfigurable : ", i(6, "boolean", {key = "i0"}), nl(),
			t"\t}", nl(),
			t");"
		},
	})),
	s({trig = "proxy", descr = "(proxy)", priority = -1000, trigEngine = te("w")}, {
		t"$.proxy(", i(1, "function", {key = "i1"}), t", ", i(2, "this", {key = "i2"}), t")"
	}),
	s({trig = "pushstack", descr = "(pushstack)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".pushStack(", i(2, "elements", {key = "i2"}), t")"
	}),
	s({trig = "queue", descr = "(queue)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".queue(", i(2, "name", {key = "i2"}), i(3, ", newQueue", {key = "i3"}), t")"
	}),
	s({trig = "queuee", descr = "(queuee)", priority = -1000, trigEngine = te("w")}, {
		t"$.queue(", i(1, "element", {key = "i1"}), i(2, ", name", {key = "i2"}), i(3, ", newQueue", {key = "i3"}), t")"
	}),
	s({trig = "ready", descr = "(ready)", priority = -1000, trigEngine = te("w")}, {
		t"$(function () {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "rem", descr = "(rem)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".remove()"
	}),
	s({trig = "rema", descr = "(rema)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeAttr(\'", i(2, "attribute name", {key = "i2"}), t"\')"
	}),
	s({trig = "remc", descr = "(remc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "remd", descr = "(remd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeData(\'", i(2, "key name", {key = "i2"}), t"\')"
	}),
	s({trig = "remdd", descr = "(remdd)", priority = -1000, trigEngine = te("w")}, {
		t"$.removeData(", i(1, "element", {key = "i1"}), i(2, ", \'key name", {key = "i2"}), t"\')"
	}),
	s({trig = "remp", descr = "(remp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeProp(\'", i(2, "property name", {key = "i2"}), t"\')"
	}),
	s({trig = "repa", descr = "(repa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".replaceAll(", i(2, "target", {key = "i2"}), t")"
	}),
	s({trig = "repw", descr = "(repw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".replaceWith(", i(2, "content", {key = "i2"}), t")"
	}),
	s({trig = "reset", descr = "(reset)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".reset(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "resize", descr = "(resize)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".resize(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "scroll", descr = "(scroll)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scroll(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "scrolll", descr = "(scrolll)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scrollLeft(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "scrollt", descr = "(scrollt)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scrollTop(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "sdown", descr = "(sdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideDown(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "sdownc", descr = "(sdownc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideDown(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "select", descr = "(select)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".select(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "serialize", descr = "(serialize)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".serialize()"
	}),
	s({trig = "serializea", descr = "(serializea)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".serializeArray()"
	}),
	s({trig = "show", descr = "(show)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".show(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "showc", descr = "(showc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".show(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "sib", descr = "(sib)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".siblings(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "size", descr = "(size)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".size()"
	}),
	s({trig = "slice", descr = "(slice)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slice(", i(2, "start", {key = "i2"}), i(3, ", end", {key = "i3"}), t")"
	}),
	s({trig = "stoggle", descr = "(stoggle)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideToggle(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "stop", descr = "(stop)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".stop(\'", i(2, "queue", {key = "i2"}), t"\', ", i(3, "false", {key = "i3"}), t", ", i(4, "false", {key = "i4"}), t")"
	}),
	s({trig = "submit", descr = "(submit)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".submit(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "sup", descr = "(sup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideUp(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "supc", descr = "(supc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideUp(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', function () {", nl(),
		t"\t", i(0, "// callback", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "text", descr = "(text)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".text(", i(2, "\'some text\'", {key = "i2"}), t")"
	}),
	s({trig = "this", descr = "(this)", priority = -1000, trigEngine = te("w")}, {
		t"$(this)"
	}),
	s({trig = "toarr", descr = "(toarr)", priority = -1000, trigEngine = te("w")}, {
		i(0, "obj", {key = "i0"}), t".toArray()"
	}),
	s({trig = "tog", descr = "(tog)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggle(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "// event handler", {key = "i3"}), nl(),
		t"}, function (", cp(2), t") {", nl(),
		t"\t", i(4, "// event handler", {key = "i4"}), nl(),
		t"});", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "togclass", descr = "(togclass)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggleClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "togsh", descr = "(togsh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggle(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "trig", descr = "(trig)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".trigger(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "trigh", descr = "(trigh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".triggerHandler(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "$trim", descr = "($trim)", priority = -1000, trigEngine = te("w")}, {
		t"$.trim(", i(1, "str", {key = "i1"}), t")"
	}),
	s({trig = "$type", descr = "($type)", priority = -1000, trigEngine = te("w")}, {
		t"$.type(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "unbind", descr = "(unbind)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unbind(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "undele", descr = "(undele)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".undelegate(", i(2, "selector expression", {key = "i2"}), t", ", i(3, "event", {key = "i3"}), t", ", i(4, "handler", {key = "i4"}), t")"
	}),
	s({trig = "uniq", descr = "(uniq)", priority = -1000, trigEngine = te("w")}, {
		t"$.unique(", i(1, "array", {key = "i1"}), t")"
	}),
	s({trig = "unload", descr = "(unload)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unload(function (", i(2, "e", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// event handler", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "unwrap", descr = "(unwrap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unwrap()"
	}),
	s({trig = "val", descr = "(val)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".val(\'", i(2, "text", {key = "i2"}), t"\')"
	}),
	s({trig = "width", descr = "(width)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".width(", i(2, "integer", {key = "i2"}), t")"
	}),
	s({trig = "wrap", descr = "(wrap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".wrap(\'", i(2, "&lt;div class=\"extra-wrapper\"&gt;&lt;/div&gt;", {key = "i2"}), t"\')"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"define([\"", i(1, "#dependencies1", {key = "i1"}), t"\"], function (", i(2, "#dependencies2", {key = "i2"}), t") {", nl(),
		t"\treturn ", i(0, "TARGET", {key = "i0"}), t";", nl(),
		t"});", nl()
	}),
	s({trig = "defn", descr = "(defn)", priority = -1000, trigEngine = te("w")}, {
		t"define(\"", i(1, "#name", {key = "i1"}), t"\", [\"", i(2, "#dependencies1", {key = "i2"}), t"\"], function (", i(3, "#dependencies2", {key = "i3"}), t") {", nl(),
		t"\treturn ", i(0, "TARGET", {key = "i0"}), t";", nl(),
		t"});", nl()
	}),
	s({trig = "reqjs", descr = "(reqjs)", priority = -1000, trigEngine = te("w")}, {
		t"require([\"", i(1, "#dependencies1", {key = "i1"}), t"\"], function (", i(2, "#dependencies2", {key = "i2"}), t") {", nl(),
		t"\treturn ", i(0, "TARGET", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "proto", descr = "(proto) \"Prototype (proto)\"", priority = -50, trigEngine = te("")}, {
		i(1, "class_name", {key = "i1"}), t".prototype.", i(2, "method_name", {key = "i2"}), t" = function", f(function(args, snip) return c_py({"javascript", 259}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[259]) end, ae(am[259])), t"(", i(3, "first_argument", {key = "i3"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", f(function(args, snip) return c_py({"javascript", 259}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[259]) end, ae(am[259])), nl()
	}),
	s({trig = "fun", descr = "(fun) \"function (named)\"", priority = -50, trigEngine = te("b")}, {
		t"function ", i(1, "function_name", {key = "i1"}), f(function(args, snip) return c_py({"javascript", 260}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[260]) end, ae(am[260])), t"(", i(2, "argument", {key = "i2"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "asf", descr = "(asf) \"async function\"", priority = -1000, trigEngine = te("w")}, {
		t"async function ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "anf", descr = "(anf) \"function (anonymous)\"", priority = -50, trigEngine = te("i")}, {
		t"function", f(function(args, snip) return c_py({"javascript", 262}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[262]) end, ae(am[262])), t"(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "vaf", descr = "(vaf)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "function_name", {key = "i1"}), t" = function(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"};"
	}),
	s({trig = "vf", descr = "(vf) \"function (assigned to var)\"", priority = -50, trigEngine = te("")}, {
		i(1, "var ", {key = "i1"}), i(2, "function_name", {key = "i2"}), t" = function ", cp(2), f(function(args, snip) return c_py({"javascript", 264}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[264]) end, ae(am[264])), t"(", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", f(function(args, snip) return c_py({"javascript", 264}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[264]) end, ae(am[264]))
	}),
	s({trig = "(f", descr = "((f)", priority = -1000, trigEngine = te("w")}, {
		t"(function(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}(", i(2, "", {key = "i2"}), t"));"
	}),
	s({trig = ";fe", descr = "(;fe) \"Minify safe iife\"", priority = -50, trigEngine = te("")}, {
		t";(function", f(function(args, snip) return c_py({"javascript", 266}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[266]) end, ae(am[266])), t"(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}(", i(2, "", {key = "i2"}), t"))"
	}),
	s({trig = "sdf", descr = "(sdf)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "function_name", {key = "i1"}), t" = function (", i(2, "argument", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		nl(),
		t"\t", cp(1), t" = function (", cp(2), t") {", nl(),
		t"\t\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t};", nl(),
		t"};"
	}),
	s({trig = "if", descr = "(if) \"if (condition) { ... }\"", priority = -50, trigEngine = te("")}, {
		t"if", f(function(args, snip) return c_py({"javascript", 268}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[268]) end, ae(am[268])), t"(", i(1, "true", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if (condition) { ... } else { ... }\"", priority = -50, trigEngine = te("")}, {
		t"if", f(function(args, snip) return c_py({"javascript", 269}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[269]) end, ae(am[269])), t"(", i(1, "true", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", f(function(args, snip) return c_py({"javascript", 269}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[269]) end, ae(am[269])), t"else", f(function(args, snip) return c_py({"javascript", 269}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[269]) end, ae(am[269])), t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ter", descr = "(ter) Ternary: `condition ? true : false`", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t": ", i(0, "", {key = "i0"})
	}),
	s({trig = "switch", descr = "(switch)", priority = -50, trigEngine = te("")}, {
		t"switch", f(function(args, snip) return c_py({"javascript", 271}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[271]) end, ae(am[271])), t"(", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "expression", {key = "i1"}), t") {", nl(),
		t"\tcase \'", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(3, "case", {key = "i3"}), t"\':", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\tbreak", f(function(args, snip) return c_py({"javascript", 271}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[271]) end, ae(am[271])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) \"case \'xyz\': ... break\"", priority = -50, trigEngine = te("")}, {
		t"case", f(function(args, snip) return c_py({"javascript", 272}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[272]) end, ae(am[272])), t"\'", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(1, "case", {key = "i1"}), t"\':", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"\tbreak", f(function(args, snip) return c_py({"javascript", 272}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[272]) end, ae(am[272]))
	}),
	s({trig = "try", descr = "(try) \"try { ... } catch(e) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch (", i(1, "e", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "/* handle error */", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf) \"try { ... } catch(e) { ... } finally { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch (", i(1, "e", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "/* handle error */", {key = "i2"}), nl(),
		t"} finally {", nl(),
		t"\t", i(3, "/* be executed regardless of the try / catch result*/", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "terr", descr = "(terr)", priority = -1000, trigEngine = te("w")}, {
		t"throw new Error(\'", i(1, "error message", {key = "i1"}), t"\')"
	}),
	s({trig = "ret", descr = "(ret) \"Return statement\"", priority = -50, trigEngine = te("")}, {
		t"return ", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"javascript", 276}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[276]) end, ae(am[276]))
	}),
	s({trig = "for", descr = "(for) \"for (...) {...}\"", priority = -1000, trigEngine = te("w")}, {
		t"for (let ", i(1, "i", {key = "i1"}), t" = 0, ", i(2, "len", {key = "i2"}), t" = ", i(3, "Things.length", {key = "i3"}), t"; ", cp(1), t" < ", cp(2), t"; ", cp(1), t"++) {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr) \"reversed for (...) {...}\"", priority = -1000, trigEngine = te("w")}, {
		t"for (let ", i(2, "i", {key = "i2"}), t" = ", i(1, "Things.length", {key = "i1"}), t" - 1; ", cp(2), t" >= 0; ", cp(2), t"--) {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) \"(condition) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "true", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "wht", descr = "(wht) \"(true) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"while (true) {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do) \"do { ... } while (condition)\"", priority = -50, trigEngine = te("")}, {
		t"do", f(function(args, snip) return c_py({"javascript", 281}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[281]) end, ae(am[281])), t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", f(function(args, snip) return c_py({"javascript", 281}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[281]) end, ae(am[281])), t"while", f(function(args, snip) return c_py({"javascript", 281}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[281]) end, ae(am[281])), t"(", i(1, "/* condition */", {key = "i1"}), t")", f(function(args, snip) return c_py({"javascript", 281}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[281]) end, ae(am[281]))
	}),
	s({trig = "fori", descr = "(fori)", priority = -1000, trigEngine = te("w")}, {
		t"for (let ", i(1, "prop", {key = "i1"}), t" in ", i(2, "object", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args) return sn(nil, {cp(2), t"[", cp(1), t"]"}) end, {}, {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = ":f", descr = "(:f) \"Object Method\"", priority = -50, trigEngine = te("")}, {
		i(1, "method_name", {key = "i1"}), t": function", f(function(args, snip) return c_py({"javascript", 283}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[283]) end, ae(am[283])), t"(", i(2, "attribute", {key = "i3"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", i(3, ",", {key = "i10"})
	}),
	s({trig = "has", descr = "(has)", priority = -1000, trigEngine = te("w")}, {
		t"hasOwnProperty(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "sing", descr = "(sing)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "Singleton", {key = "i1"}), t" (", i(2, "argument", {key = "i2"}), t") {", nl(),
		t"\t// the cached instance", nl(),
		t"\tvar instance;", nl(),
		nl(),
		t"\t// rewrite the constructor", nl(),
		t"\t", cp(1), t" = function ", cp(1), t"(", cp(2), t") {", nl(),
		t"\t\treturn instance;", nl(),
		t"\t};", nl(),
		nl(),
		t"\t// carry over the prototype properties", nl(),
		t"\t", cp(1), t".prototype = this;", nl(),
		nl(),
		t"\t// the instance", nl(),
		t"\tinstance = new ", cp(1), t"();", nl(),
		nl(),
		t"\t// reset the constructor pointer", nl(),
		t"\tinstance.constructor = ", cp(1), t";", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\treturn instance;", nl(),
		t"}"
	}),
	s({trig = "obj", descr = "(obj)", priority = -1000, trigEngine = te("w")}, {
		t"function object(o) {", nl(),
		t"\tfunction F() {}", nl(),
		t"\tF.prototype = o;", nl(),
		t"\treturn new F();", nl(),
		t"}"
	}),
	s({trig = "props", descr = "(props)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "my_object", {key = "i1"}), t" = Object.defineProperties(", nl(),
		t"\t", i(2, "new Object()", {key = "i2"}), t",", nl(),
		t"\t{", nl(),
		t"\t\t", i(3, "property", {key = "i3"}), t" : {", nl(),
		t"\t\t\tget : function ", cp(1), t"_", cp(3), t"_getter() {", nl(),
		t"\t\t\t\t// getter code", nl(),
		t"\t\t\t},", nl(),
		t"\t\t\tset : function ", cp(1), t"_", cp(3), t"_setter(value) {", nl(),
		t"\t\t\t\t// setter code", nl(),
		t"\t\t\t},", nl(),
		t"\t\t\tvalue        : ", i(4, "value", {key = "i4"}), t",", nl(),
		t"\t\t\twriteable    : ", i(5, "boolean", {key = "i5"}), t",", nl(),
		t"\t\t\tenumerable   : ", i(6, "boolean", {key = "i6"}), t",", nl(),
		t"\t\t\tconfigurable : ", i(0, "boolean", {key = "i0"}), nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t");"
	}),
	s({trig = "/**", descr = "(/**)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(0, "description", {key = "i0"}), nl(),
		t" *", nl(),
		t" */"
	}),
	s({trig = "@par", descr = "(@par)", priority = -1000, trigEngine = te("w")}, {
		t"@param {", i(1, "type", {key = "i1"}), t"} ", i(2, "name", {key = "i2"}), t" ", i(0, "description", {key = "i0"})
	}),
	s({trig = "@ret", descr = "(@ret)", priority = -1000, trigEngine = te("w")}, {
		t"@return {", i(1, "type", {key = "i1"}), t"} ", i(0, "description", {key = "i0"})
	}),
	s({trig = "jsonp", descr = "(jsonp)", priority = -1000, trigEngine = te("w")}, {
		t"JSON.parse(", i(0, "jstr", {key = "i0"}), t");"
	}),
	s({trig = "jsons", descr = "(jsons)", priority = -1000, trigEngine = te("w")}, {
		t"JSON.stringify(", i(0, "object", {key = "i0"}), t");"
	}),
	s({trig = "gett", descr = "(gett)", priority = -1000, trigEngine = te("w")}, {
		t"getElementBy", i(1, "Id", {key = "i1"}), t"(\'", i(0, "", {key = "i0"}), t"\')"
	}),
	s({trig = "by.", descr = "(by.)", priority = -1000, trigEngine = te("w")}, {
		i(1, "document", {key = "i1"}), t".getElementsByClassName(\'", i(0, "class", {key = "i0"}), t"\')"
	}),
	s({trig = "by#", descr = "(by#)", priority = -1000, trigEngine = te("w")}, {
		i(1, "document", {key = "i1"}), t".getElementById(\'", i(0, "element ID", {key = "i0"}), t"\')"
	}),
	s({trig = "qs", descr = "(qs)", priority = -1000, trigEngine = te("w")}, {
		i(1, "document", {key = "i1"}), t".querySelector(\'", i(0, "CSS selector", {key = "i0"}), t"\')"
	}),
	s({trig = "qsa", descr = "(qsa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "document", {key = "i1"}), t".querySelectorAll(\'", i(0, "CSS selector", {key = "i0"}), t"\')"
	}),
	s({trig = "de", descr = "(de)", priority = -50, trigEngine = te("")}, {
		t"debugger", f(function(args, snip) return c_py({"javascript", 298}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[298]) end, ae(am[298]))
	}),
	s({trig = "cl", descr = "(cl) \"console.log\"", priority = -50, trigEngine = te("")}, {
		t"console.log(", i(0, "", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 299}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[299]) end, ae(am[299]))
	}),
	s({trig = "cd", descr = "(cd) \"console.debug\"", priority = -50, trigEngine = te("")}, {
		t"console.debug(", i(0, "", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 300}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[300]) end, ae(am[300]))
	}),
	s({trig = "ce", descr = "(ce) \"console.error\"", priority = -50, trigEngine = te("")}, {
		t"console.error(", i(0, "", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 301}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[301]) end, ae(am[301]))
	}),
	s({trig = "cw", descr = "(cw) \"console.warn\"", priority = -50, trigEngine = te("")}, {
		t"console.warn(", i(0, "", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 302}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[302]) end, ae(am[302]))
	}),
	s({trig = "ci", descr = "(ci) \"console.info\"", priority = -50, trigEngine = te("")}, {
		t"console.info(", i(0, "", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 303}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[303]) end, ae(am[303]))
	}),
	s({trig = "ct", descr = "(ct) \"console.trace\"", priority = -50, trigEngine = te("")}, {
		t"console.trace(", i(0, "label", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 304}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[304]) end, ae(am[304]))
	}),
	s({trig = "ctime", descr = "(ctime) \"console.time ... console.timeEnd\"", priority = -50, trigEngine = te("")}, {
		t"console.time(\"", i(1, "label", {key = "i1"}), t"\")", f(function(args, snip) return c_py({"javascript", 305}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[305]) end, ae(am[305])), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		t"console.timeEnd(\"", cp(1), t"\")", f(function(args, snip) return c_py({"javascript", 305}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[305]) end, ae(am[305]))
	}),
	s({trig = "ctimestamp", descr = "(ctimestamp) \"console.timeStamp\"", priority = -50, trigEngine = te("")}, {
		t"console.timeStamp(\"", i(1, "label", {key = "i1"}), t"\")", f(function(args, snip) return c_py({"javascript", 306}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[306]) end, ae(am[306]))
	}),
	s({trig = "ca", descr = "(ca) \"console.assert\"", priority = -50, trigEngine = te("")}, {
		t"console.assert(", i(1, "expression", {key = "i1"}), t", ", i(0, "obj", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 307}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[307]) end, ae(am[307]))
	}),
	s({trig = "cclear", descr = "(cclear) \"console.clear\"", priority = -50, trigEngine = te("")}, {
		t"console.clear()", f(function(args, snip) return c_py({"javascript", 308}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[308]) end, ae(am[308]))
	}),
	s({trig = "cdir", descr = "(cdir) \"console.dir\"", priority = -50, trigEngine = te("")}, {
		t"console.dir(", i(0, "obj", {key = "i0"}), t")", f(function(args, snip) return c_py({"javascript", 309}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[309]) end, ae(am[309]))
	}),
	s({trig = "cdirx", descr = "(cdirx) \"console.dirxml\"", priority = -50, trigEngine = te("")}, {
		t"console.dirxml(", i(1, "object", {key = "i1"}), t")", f(function(args, snip) return c_py({"javascript", 310}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[310]) end, ae(am[310]))
	}),
	s({trig = "cgroup", descr = "(cgroup) \"console.group\"", priority = -50, trigEngine = te("")}, {
		t"console.group(\"", i(1, "label", {key = "i1"}), t"\")", f(function(args, snip) return c_py({"javascript", 311}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[311]) end, ae(am[311])), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		t"console.groupEnd()", f(function(args, snip) return c_py({"javascript", 311}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[311]) end, ae(am[311]))
	}),
	s({trig = "cgroupc", descr = "(cgroupc) \"console.groupCollapsed\"", priority = -50, trigEngine = te("")}, {
		t"console.groupCollapsed(\"", i(1, "label", {key = "i1"}), t"\")", f(function(args, snip) return c_py({"javascript", 312}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[312]) end, ae(am[312])), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		t"console.groupEnd()", f(function(args, snip) return c_py({"javascript", 312}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[312]) end, ae(am[312]))
	}),
	s({trig = "cprof", descr = "(cprof) \"console.profile\"", priority = -50, trigEngine = te("")}, {
		t"console.profile(\"", i(1, "label", {key = "i1"}), t"\")", f(function(args, snip) return c_py({"javascript", 313}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[313]) end, ae(am[313])), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		t"console.profileEnd()", f(function(args, snip) return c_py({"javascript", 313}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[313]) end, ae(am[313]))
	}),
	s({trig = "ctable", descr = "(ctable) \"console.table\"", priority = -50, trigEngine = te("")}, {
		t"console.table(", d(1, function(args) return sn(nil, {t"\"", i(2, "value", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t")", f(function(args, snip) return c_py({"javascript", 314}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[314]) end, ae(am[314]))
	}),
	s({trig = "clstr", descr = "(clstr) \"console.log stringified\"", priority = -50, trigEngine = te("")}, {
		t"console.log(JSON.stringify(", i(0, "", {key = "i0"}), t", null, 2))", f(function(args, snip) return c_py({"javascript", 315}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[315]) end, ae(am[315]))
	}),
	s({trig = "us", descr = "(us)", priority = -50, trigEngine = te("")}, {
		t"\'use strict\'", f(function(args, snip) return c_py({"javascript", 316}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[316]) end, ae(am[316]))
	}),
	s({trig = "timeout", descr = "(timeout) \"setTimeout function\"", priority = -50, trigEngine = te("")}, {
		t"setTimeout(function", f(function(args, snip) return c_py({"javascript", 317}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[317]) end, ae(am[317])), t"() {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", d(2, function(args) return sn(nil, {t".bind(", i(3, "this", {key = "i3"}), t")"}) end, {}, {key = "i2"}), t", ", i(1, "10", {key = "i1"}), t")", f(function(args, snip) return c_py({"javascript", 317}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[317]) end, ae(am[317]))
	}),
	s({trig = "const", descr = "(const)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "constn", descr = "(constn)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "", {key = "i1"}), t" = new ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "im", descr = "(im) \"import xyz from \'xyz\'\"", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "", {key = "i1"}), t" from \'", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\';"
	}),
	s({trig = "imas", descr = "(imas) \"import * as xyz from \'xyz\'\"", priority = -1000, trigEngine = te("w")}, {
		t"import * as ", i(1, "", {key = "i1"}), t" from \'", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"\';"
	}),
	s({trig = "imm", descr = "(imm) \"import { member } from \'xyz\'\"", priority = -1000, trigEngine = te("w")}, {
		t"import { ", i(1, "", {key = "i1"}), t" } from \'", i(2, "", {key = "i2"}), t"\';"
	}),
	s({trig = "cla", descr = "(cla)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "clax", descr = "(clax)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends ", i(2, "", {key = "i2"}), t" {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "clac", descr = "(clac)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\tconstructor(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "foro", descr = "(foro) \"for (const prop of object}) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"for (const ", i(1, "prop", {key = "i1"}), t" of ", i(2, "object", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "forl", descr = "(forl) \"for (let prop of object}) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"for (let ", i(1, "prop", {key = "i1"}), t" of ", i(2, "object", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fun*", descr = "(fun*)", priority = -1000, trigEngine = te("w")}, {
		t"function* ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "c=>", descr = "(c=>)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "function_name", {key = "i1"}), t" = (", i(2, "", {key = "i2"}), t") => {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ca=>", descr = "(ca=>)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "function_name", {key = "i1"}), t" = async (", i(2, "", {key = "i2"}), t") => {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "caf", descr = "(caf)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "function_name", {key = "i1"}), t" = (", i(2, "", {key = "i2"}), t") => {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "casf", descr = "(casf)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "function_name", {key = "i1"}), t" = async (", i(2, "", {key = "i2"}), t") => {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "=>", descr = "(=>)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "", {key = "i1"}), t") => {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "af", descr = "(af) \"() =>\"", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "", {key = "i1"}), t") => ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "afb", descr = "(afb) \"() => {}\"", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "", {key = "i1"}), t") => {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "sym", descr = "(sym)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "", {key = "i1"}), t" = Symbol(\'", i(0, "", {key = "i0"}), t"\');"
	}),
	s({trig = "ed", descr = "(ed)", priority = -1000, trigEngine = te("w")}, {
		t"export default ", i(0, "", {key = "i0"})
	}),
	s({trig = "${", descr = "(${)", priority = -1000, trigEngine = te("w")}, {
		t"${", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "as", descr = "(as) \"async\"", priority = -1000, trigEngine = te("w")}, {
		t"async ", i(0, "", {key = "i0"})
	}),
	s({trig = "aw", descr = "(aw) \"await\"", priority = -1000, trigEngine = te("w")}, {
		t"await ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env node"
	}),
	s({trig = "ex", descr = "(ex)", priority = -1000, trigEngine = te("w")}, {
		t"module.exports = ", i(1, "", {key = "i1"}), t";"
	}),
	s({trig = "re", descr = "(re)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "", {key = "i1"}), t" = require(\'", i(2, "module_name", {key = "i2"}), t"\');"
	}),
	s({trig = "emit", descr = "(emit)", priority = -1000, trigEngine = te("w")}, {
		t"emit(\'", i(1, "event_name", {key = "i1"}), t"\', ", i(2, "args", {key = "i2"}), t");"
	}),
	s({trig = "once", descr = "(once)", priority = -1000, trigEngine = te("w")}, {
		t"once(\'", i(1, "event_name", {key = "i1"}), t"\', function(", i(2, "stream", {key = "i2"}), t") {", nl(),
		t"  ", i(3, "", {key = "i3"}), nl(),
		t"});"
	}),
	s({trig = "http", descr = "(http)", priority = -1000, trigEngine = te("w")}, {
		t"http.createServer(", i(1, "handler", {key = "i1"}), t").listen(", i(2, "port_number", {key = "i2"}), t");"
	}),
	s({trig = "net", descr = "(net)", priority = -1000, trigEngine = te("w")}, {
		t"net.createServer(function(", i(1, "socket", {key = "i1"}), t"){", nl(),
		t"\t", cp(1), t".on(\'data\', function(\'data\'){", nl(),
		t"\t  ", i(2, "", {key = "i2"}), nl(),
		t"\t]});", nl(),
		t"\t", cp(1), t".on(\'end\', function(){", nl(),
		t"\t  ", i(3, "", {key = "i3"}), nl(),
		t"\t});", nl(),
		t"}).listen(", i(4, "8124", {key = "i4"}), t");"
	}),
	s({trig = "pipe", descr = "(pipe)", priority = -1000, trigEngine = te("w")}, {
		t"pipe(", i(1, "stream", {key = "i1"}), t")", i(2, "", {key = "i2"})
	}),
	s({trig = "eget", descr = "(eget)", priority = -1000, trigEngine = te("w")}, {
		i(1, "app", {key = "i1"}), t".get(\'", i(2, "route", {key = "i2"}), t"\', ", i(3, "handler", {key = "i3"}), t");"
	}),
	s({trig = "epost", descr = "(epost)", priority = -1000, trigEngine = te("w")}, {
		i(1, "app", {key = "i1"}), t".post(\'", i(2, "route", {key = "i2"}), t"\', ", i(3, "handler", {key = "i3"}), t");"
	}),
	s({trig = "eput", descr = "(eput)", priority = -1000, trigEngine = te("w")}, {
		i(1, "app", {key = "i1"}), t".put(\'", i(2, "route", {key = "i2"}), t"\', ", i(3, "handler", {key = "i3"}), t");"
	}),
	s({trig = "edel", descr = "(edel)", priority = -1000, trigEngine = te("w")}, {
		i(1, "app", {key = "i1"}), t".delete(\'", i(2, "route", {key = "i2"}), t"\', ", i(3, "handler", {key = "i3"}), t");"
	}),
	s({trig = "stdin", descr = "(stdin)", priority = -1000, trigEngine = te("w")}, {
		t"process.stdin"
	}),
	s({trig = "stdout", descr = "(stdout)", priority = -1000, trigEngine = te("w")}, {
		t"process.stdout"
	}),
	s({trig = "stderr", descr = "(stderr)", priority = -1000, trigEngine = te("w")}, {
		t"process.stderr"
	}),
	s({trig = "rfc", descr = "(rfc) \"react functional component\"", priority = 0, trigEngine = te("b")}, {
		t"import React, {useState} from \"react\"", nl(),
		nl(),
		t"function ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"javascript", 357}, "snip.rv = snip.basename", python_globals, args, snip, "", am[357])}, ""), {key = "i1"}) }) end), t"(", i(2, "", {key = "i2"}), t"){", nl(),
		t"\treturn(", nl(),
		t"\t\t<div>", nl(),
		t"\t\t\t", i(3, "<p>Body</p>", {key = "i3"}), nl(),
		t"\t\t</div>", nl(),
		t"\t\t)", nl(),
		t"}", nl(),
		nl(),
		t"export default ", i(4, "", {key = "i4"}), f(function(args, snip) return c_py({"javascript", 357}, "snip.rv = snip.basename", python_globals, args, snip, "", am[357]) end, ae(am[357]))
	}),
	s({trig = "useS", descr = "(useS) \"useState Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const [", i(1, "", {key = "i1"}), t", set", f(function(args, snip) return c_py({"javascript", 358}, "snip.rv=capitalize_first(t[1])", python_globals, args, snip, "", am[358]) end, ae(am[358])), t"] = useState(", d(2, function(args) return sn(nil, {t"\"", i(3, "", {key = "i4"}), t"\""}) end, {}, {key = "i3"}), t")"
	}),
	s({trig = "useE", descr = "(useE) \"useEffect Hook\"", priority = 0, trigEngine = te("b")}, {
		t"useEffect(() => {", nl(),
		t"\t", d(1, function(args) return sn(nil, {i(0, "", {key = "i0"})}) end, {}, {key = "i1"}), nl(),
		t"\t\t}", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "useC", descr = "(useC) \"useContext Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "context", {key = "i1"}), t" = useContext(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "useRe", descr = "(useRe) \"useReducer Hook\"", priority = 0, trigEngine = te("b")}, {
		t"const [", i(2, "state", {key = "i3"}), t", ", i(3, "dispatch", {key = "i4"}), t"] = useReducer(", i(4, "reducer", {key = "i5"}), t", ", i(1, "initial_value", {key = "i2"}), t")"
	}),
	s({trig = "useCB", descr = "(useCB) \"useCallback(fn, inputs)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "callback", {key = "i1"}), t" = useCallback((", i(2, "", {key = "i2"}), t")) => ", d(3, function(args) return sn(nil, {t"{", nl(),
i(4, "", {key = "i4"}), t"\t${4}", nl()}) end, {}, {key = "i3"}), t", [", i(5, "", {key = "i5"}), t"])"
	}),
	s({trig = "useM", descr = "(useM) \"useMemo(fn, inputs)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "memorized", {key = "i1"}), t" = useMemo(() => ", d(2, function(args) return sn(nil, {t"{", nl(),
i(3, "", {key = "i3"}), t"\t${3}", nl()}) end, {}, {key = "i2"}), t", [", i(4, "", {key = "i4"}), t"])"
	}),
	s({trig = "useR", descr = "(useR) \"useRef(defaultValue)\"", priority = 0, trigEngine = te("b")}, {
		t"const ", i(1, "ref", {key = "i1"}), t" = useRef(", i(2, "null", {key = "i2"}), t")"
	}),
	s({trig = "pr", descr = "(pr) \"Print\"", priority = 0, trigEngine = te("i")}, {
		t"console.log(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "\'\':f", descr = "(\'\':f) \"object method string\"", priority = -50, trigEngine = te("")}, {
		t"\'", d(1, function(args) return sn(nil, {i(2, "#thing", {key = "i2"}), t":", i(3, "click", {key = "i3"})}) end, {}, {key = "i1"}), t"\': function", f(function(args, snip) return c_py({"javascript", 366}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[366]) end, ae(am[366])), t"(element) {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", i(4, ",", {key = "i10"})
	}),
	s({trig = ":,", descr = "(:,) \"Object Value JS\"", priority = -50, trigEngine = te("")}, {
		i(1, "value_name", {key = "i1"}), t": ", i(0, "value", {key = "i0"}), t","
	}),
	s({trig = ":", descr = "(:) \"Object key key: \'value\'\"", priority = -50, trigEngine = te("")}, {
		i(1, "key", {key = "i1"}), t": ", d(2, function(args) return sn(nil, {t"\"", i(3, "value", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), i(4, ", ", {key = "i4"})
	}),
	s({trig = "iife", descr = "(iife) \"Immediately-Invoked Function Expression (iife)\"", priority = -50, trigEngine = te("")}, {
		t"(function", f(function(args, snip) return c_py({"javascript", 369}, "snip.rv = space_before_function_paren(snip)", python_globals, args, snip, "", am[369]) end, ae(am[369])), t"(", i(1, "window", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}(", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t"))", f(function(args, snip) return c_py({"javascript", 369}, "snip.rv = semi(snip)", python_globals, args, snip, "", am[369]) end, ae(am[369]))
	}),
	s({trig = "fi", descr = "(fi) \"for prop in obj using hasOwnProperty\"", priority = -50, trigEngine = te("b")}, {
		t"for", f(function(args, snip) return c_py({"javascript", 370}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[370]) end, ae(am[370])), t"(", i(1, "prop", {key = "i1"}), t" in ", i(2, "obj", {key = "i2"}), t"){", nl(),
		t"\tif", f(function(args, snip) return c_py({"javascript", 370}, "snip.rv = keyword_spacing(snip)", python_globals, args, snip, "", am[370]) end, ae(am[370])), t"(", cp(2), t".hasOwnProperty(", cp(1), t")) {", nl(),
		t"\t\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "imp", descr = "(imp) \"import\"", priority = -50, trigEngine = te("")}, {
		t"import ", i(2, "", {key = "i2"}), t" from ", i(1, "", {key = "i1"})
	}),
})
