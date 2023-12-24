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
	1,
	1,
	2,
	2,
	3,
	3,
	2,
	2,
	2,
	2,
}
ls.add_snippets("javascript-angular", {
	s({trig = "iti", descr = "(iti) \"it (js, inject)\"", priority = -50, trigEngine = te("b")}, {
		t"it(\'", i(1, "description", {key = "i1"}), t"\', inject(function(", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}));"
	}),
	s({trig = "befi", descr = "(befi) \"before each (js, inject)\"", priority = -50, trigEngine = te("b")}, {
		t"beforeEach(inject(function(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}));"
	}),
	s({trig = "aconf", descr = "(aconf) \"angular config\"", priority = -50, trigEngine = te("i")}, {
		t"config(function(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "acont", descr = "(acont) \"angular controller\"", priority = -50, trigEngine = te("i")}, {
		t"controller(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
	s({trig = "aconts", descr = "(aconts) \"angular controller with scope\"", priority = -50, trigEngine = te("i")}, {
		t"controller(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "\'$scope\', ", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
	s({trig = "adir", descr = "(adir) \"angular directive\"", priority = -50, trigEngine = te("i")}, {
		t"directive(\'", i(1, "", {key = "i1"}), t"\', [", i(2, "", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\treturn {", nl(),
		t"\t\trestrict: \'", i(3, "EA", {key = "i3"}), t"\',", nl(),
		t"\t\tlink: function(scope, element, attrs) {", nl(),
		t"\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t}", nl(),
		t"\t};", nl(),
		t"}]);"
	}),
	s({trig = "adirs", descr = "(adirs) \"angular directive with scope\"", priority = -50, trigEngine = te("i")}, {
		t"directive(\'", i(1, "", {key = "i1"}), t"\', [", i(2, "\'$scope\', ", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\treturn {", nl(),
		t"\t\trestrict: \'", i(3, "EA", {key = "i3"}), t"\',", nl(),
		t"\t\tlink: function(scope, element, attrs) {", nl(),
		t"\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t}", nl(),
		t"\t};", nl(),
		t"}]);"
	}),
	s({trig = "afact", descr = "(afact) \"angular factory\"", priority = -50, trigEngine = te("i")}, {
		t"factory(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
	s({trig = "afacts", descr = "(afacts) \"angular factory with scope\"", priority = -50, trigEngine = te("i")}, {
		t"factory(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "\'$scope\', ", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
	s({trig = "aserv", descr = "(aserv) \"angular service\"", priority = -50, trigEngine = te("i")}, {
		t"service(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
	s({trig = "aservs", descr = "(aservs) \"angular service\"", priority = -50, trigEngine = te("i")}, {
		t"service(\'", i(1, "name", {key = "i1"}), t"\', [", i(2, "\'$scope\', ", {key = "i2"}), t"function(", tr(2, "(\'|\")([A-Z_$]+)?\\1?((, ?)$)?", "$2(?3::$4)"), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}]);"
	}),
})
