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
	[[from vimsnippets import complete

FIELD_TYPES = [
	'double',
	'float',
	'int32',
	'int64',
	'uint32',
	'uint64',
	'sint32',
	'sint64',
	'fixed32',
	'fixed64',
	'sfixed32',
	'sfixed64',
	'bool',
	'string',
	'bytes']]]
}


ls.add_snippets("proto", {
	s({trig = "mess", descr = "(mess) \"Proto message\"", priority = -50, trigEngine = te("b")}, {
		t"// ", d(2, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this message."}, ""), {key = "i2"}) }) end), nl(),
		t"message ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\t// Next available id: 1", nl(),
		t"}"
	}),
	s({trig = "reqf", descr = "(reqf) \"Required field\"", priority = -50, trigEngine = te("b")}, {
		t"// ", d(4, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this field."}, ""), {key = "i4"}) }) end), nl(),
		t"optional ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"proto", 2}, "snip.rv = complete(t[1], FIELD_TYPES)", python_globals, args, snip, "", {1}) end, {k"i1"}), t" ", i(2, "name", {key = "i2"}), t" = ", i(3, "1", {key = "i3"}), t";  // Required"
	}),
	s({trig = "optf", descr = "(optf) \"Optional field\"", priority = -50, trigEngine = te("b")}, {
		t"// ", d(4, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this field."}, ""), {key = "i4"}) }) end), nl(),
		t"optional ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"proto", 3}, "snip.rv = complete(t[1], FIELD_TYPES)", python_globals, args, snip, "", {1}) end, {k"i1"}), t" ", i(2, "name", {key = "i2"}), t" = ", i(3, "1", {key = "i3"}), t";"
	}),
	s({trig = "repf", descr = "(repf) \"Repeated field\"", priority = -50, trigEngine = te("b")}, {
		t"// ", d(4, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this field."}, ""), {key = "i4"}) }) end), nl(),
		t"repeated ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"proto", 4}, "snip.rv = complete(t[1], FIELD_TYPES)", python_globals, args, snip, "", {1}) end, {k"i1"}), t" ", i(2, "name", {key = "i2"}), t" = ", i(3, "1", {key = "i3"}), t";"
	}),
	s({trig = "enum", descr = "(enum) \"Enumeration\"", priority = -50, trigEngine = te("b")}, {
		t"// ", d(2, function(args, snip) return sn(nil, { i(1, jt({"TODO(", c_shell("whoami"), "): Describe this enum."}, ""), {key = "i2"}) }) end), nl(),
		t"enum ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"}"
	}),
})
