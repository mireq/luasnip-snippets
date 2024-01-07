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
	{0},
	{0},
	{0},
	{},
	{0, 1, 2},
	{1},
	{1},
	{},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1},
	{0, 1, 2},
	{1},
	{},
	{0, 1},
	{0, 1, 2},
	{1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{0, 1},
	{},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{1, 2},
	{1, 2},
	{0, 1, 2, 3},
	{1},
	{0, 1, 2},
	{0},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{1, 2, 3},
	{1, 2},
	{1},
	{1},
	{0, 1},
	{1},
	{0, 1, 2},
	{},
	{},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0},
	{0},
	{},
	{},
	{0},
	{0},
	{0},
	{0},
	{},
	{},
	{0},
	{0},
	{0},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{1, 2, 3},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0},
	{0, 1},
	{0},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0},
}

local python_globals = {
	[[
def write_instance_vars(arglist, snip):
	args = str(arglist).split(',')
	for arg in args:
		name = arg.strip().replace(':', ' ').split(' ', 1)[0]
		if name:
			snip += '  @{} = {}'.format(name, name)
		else:
			snip += ''
]]
}


ls.add_snippets("ruby", {
	s({trig = "enc", descr = "(enc)", priority = -1000, trigEngine = te("w")}, {
		t"# encoding: utf-8"
	}),
	s({trig = "frozen", descr = "(frozen)", priority = -1000, trigEngine = te("w")}, {
		t"# frozen_string_literal: true"
	}),
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env ruby\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env ruby", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "=b", descr = "(=b)", priority = -1000, trigEngine = te("w")}, {
		t"=begin rdoc", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"=end"
	}),
	s({trig = "y", descr = "(y)", priority = -1000, trigEngine = te("w")}, {
		t":yields: ", i(0, "arguments", {key = "i0"})
	}),
	s({trig = "rb", descr = "(rb)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env ruby -wKU"
	}),
	s({trig = "beg", descr = "(beg)", priority = -1000, trigEngine = te("w")}, {
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"rescue ", i(1, "StandardError", {key = "i1"}), t" => ", i(2, "e", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "req", descr = "(req) require", priority = -1000, trigEngine = te("w")}, {
		t"require \'", i(1, "", {key = "i1"}), t"\'"
	}),
	s({trig = "reqr", descr = "(reqr)", priority = -1000, trigEngine = te("w")}, {
		t"require_relative \'", i(1, "", {key = "i1"}), t"\'"
	}),
	s({trig = "#", descr = "(#)", priority = -1000, trigEngine = te("w")}, {
		t"# =>"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "object", {key = "i1"}), nl(),
		t"when ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"when ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "method_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defm", descr = "(defm)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "method", {key = "i1"}), nl(),
		t"\t@", cp(1), t" ||= ", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "deft", descr = "(deft)", priority = -1000, trigEngine = te("w")}, {
		t"def test_", i(1, "case_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "descendants", descr = "(descendants)", priority = -1000, trigEngine = te("w")}, {
		t"class Class", nl(),
		t"\tdef descendants", nl(),
		t"\t\tObjectSpace.each_object(::Class).select { |klass| klass < self }", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elsif ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "ifee", descr = "(ifee)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"elsif ", i(3, "", {key = "i3"}), nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "unlesse", descr = "(unlesse)", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "unlesee", descr = "(unlesee)", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"elsif ", i(3, "", {key = "i3"}), nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "e", {key = "i1"}), t" in ", i(2, "c", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "until", descr = "(until) \"until <expression> ... end\"", priority = -50, trigEngine = te("")}, {
		t"until ", i(1, "expression", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "cla", descr = "(cla) class .. end", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "clai", descr = "(clai) class .. initialize .. end", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
		t"\tdef initialize(", i(2, "args", {key = "i2"}), t")", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "cla<", descr = "(cla<) class .. < ParentClass .. initialize .. end", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" < ", i(2, "ParentClass", {key = "i2"}), nl(),
		t"\tdef initialize(", i(3, "args", {key = "i3"}), t")", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "blankslate", descr = "(blankslate) class BlankSlate .. initialize .. end", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(0, "BlankSlate", {key = "i0"}), nl(),
		t"\tinstance_methods.each { |meth| undef_method(meth) unless meth =~ /\\A__/ }", nl(),
		t"end"
	}),
	s({trig = "claself", descr = "(claself) class << self .. end", priority = -1000, trigEngine = te("w")}, {
		t"class << ", i(1, "self", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "cla-", descr = "(cla-)", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" < DelegateClass(", i(2, "ParentClass", {key = "i2"}), t")", nl(),
		t"\tdef initialize(", i(3, "args", {key = "i3"}), t")", nl(),
		t"\t\tsuper(", i(4, "del_obj", {key = "i4"}), t")", nl(),
		nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "mod", descr = "(mod) module .. end", priority = -1000, trigEngine = te("w")}, {
		t"module ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "r", descr = "(r)", priority = -1000, trigEngine = te("w")}, {
		t"attr_reader :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "w", descr = "(w)", priority = -1000, trigEngine = te("w")}, {
		t"attr_writer :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "rw", descr = "(rw)", priority = -1000, trigEngine = te("w")}, {
		t"attr_accessor :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "atp", descr = "(atp)", priority = -1000, trigEngine = te("w")}, {
		t"attr_protected :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "ata", descr = "(ata)", priority = -1000, trigEngine = te("w")}, {
		t"attr_accessible :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "ana", descr = "(ana)", priority = -1000, trigEngine = te("w")}, {
		t"accepts_nested_attributes_for :", i(0, "association", {key = "i0"})
	}),
	s({trig = "ivc", descr = "(ivc)", priority = -1000, trigEngine = te("w")}, {
		t"@", i(1, "variable_name", {key = "i1"}), t" ||= ", i(0, "cached_value", {key = "i0"})
	}),
	s({trig = "Enum", descr = "(Enum)", priority = -1000, trigEngine = te("w")}, {
		t"include Enumerable", nl(),
		nl(),
		t"def each(&block)", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "Comp", descr = "(Comp)", priority = -1000, trigEngine = te("w")}, {
		t"include Comparable", nl(),
		nl(),
		t"def <=>(other)", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "Forw-", descr = "(Forw-)", priority = -1000, trigEngine = te("w")}, {
		t"extend Forwardable"
	}),
	s({trig = "defs", descr = "(defs)", priority = -1000, trigEngine = te("w")}, {
		t"def self.", i(1, "class_method_name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "definit", descr = "(definit)", priority = -1000, trigEngine = te("w")}, {
		t"def initialize(", i(1, "args", {key = "i1"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defmm", descr = "(defmm)", priority = -1000, trigEngine = te("w")}, {
		t"def method_missing(meth, *args, &blk)", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defd", descr = "(defd)", priority = -1000, trigEngine = te("w")}, {
		t"def_delegator :", i(1, "@del_obj", {key = "i1"}), t", :", i(2, "del_meth", {key = "i2"}), t", :", i(0, "new_name", {key = "i0"})
	}),
	s({trig = "defds", descr = "(defds)", priority = -1000, trigEngine = te("w")}, {
		t"def_delegators :", i(1, "@del_obj", {key = "i1"}), t", :", i(0, "del_methods", {key = "i0"})
	}),
	s({trig = "am", descr = "(am)", priority = -1000, trigEngine = te("w")}, {
		t"alias_method :", i(1, "new_name", {key = "i1"}), t", :", i(0, "old_name", {key = "i0"})
	}),
	s({trig = "app", descr = "(app)", priority = -1000, trigEngine = te("w")}, {
		t"if __FILE__ == $PROGRAM_NAME", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "usai", descr = "(usai)", priority = -1000, trigEngine = te("w")}, {
		t"if ARGV.", i(1, "", {key = "i1"}), nl(),
		t"\tabort \"Usage: #{$PROGRAM_NAME} ", i(2, "ARGS_GO_HERE", {key = "i2"}), t"\"", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "usau", descr = "(usau)", priority = -1000, trigEngine = te("w")}, {
		t"unless ARGV.", i(1, "", {key = "i1"}), nl(),
		t"\tabort \"Usage: #{$PROGRAM_NAME} ", i(2, "ARGS_GO_HERE", {key = "i2"}), t"\"", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "array", descr = "(array)", priority = -1000, trigEngine = te("w")}, {
		t"Array.new(", i(1, "10", {key = "i1"}), t") { |", i(2, "i", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "hash", descr = "(hash)", priority = -1000, trigEngine = te("w")}, {
		t"Hash.new { |", i(1, "hash", {key = "i1"}), t", ", i(2, "key", {key = "i2"}), t"| ", cp(1), t"[", cp(2), t"] = ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "file", descr = "(file) File.read()", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"File.foreach(", i(1, "\'path/to/file\'", {key = "i1"}), t") { |", i(2, "line", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
		},
		{
			t"File.read(", i(1, "\'path/to/file\'", {key = "i1"}), t")"
		},
	})),
	s({trig = "Dir", descr = "(Dir) Dir[\"..\"]", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"Dir.glob(", i(1, "\'dir/glob/*\'", {key = "i1"}), t") { |", i(2, "file", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
		},
		{
			t"Dir[", i(1, "\'glob/**/*.rb\'", {key = "i1"}), t"]"
		},
	})),
	s({trig = "dir", descr = "(dir)", priority = -1000, trigEngine = te("w")}, {
		t"Filename.dirname(__FILE__)"
	}),
	s({trig = "deli", descr = "(deli)", priority = -1000, trigEngine = te("w")}, {
		t"delete_if { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "fil", descr = "(fil)", priority = -1000, trigEngine = te("w")}, {
		t"fill(", i(1, "range", {key = "i1"}), t") { |", i(2, "i", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "flao", descr = "(flao)", priority = -1000, trigEngine = te("w")}, {
		t"reduce(Array.new) { |", i(1, "arr", {key = "i1"}), t", ", i(2, "a", {key = "i2"}), t"| ", cp(1), t".push(*", cp(2), t") }"
	}),
	s({trig = "zip", descr = "(zip)", priority = -1000, trigEngine = te("w")}, {
		t"zip(", i(1, "enums", {key = "i1"}), t") { |", i(2, "row", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "dow", descr = "(dow)", priority = -1000, trigEngine = te("w")}, {
		t"downto(", i(1, "0", {key = "i1"}), t") { |", i(2, "n", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ste", descr = "(ste)", priority = -1000, trigEngine = te("w")}, {
		t"step(", i(1, "2", {key = "i1"}), t") { |", i(2, "n", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "tim", descr = "(tim)", priority = -1000, trigEngine = te("w")}, {
		t"times { |", i(1, "n", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "upt", descr = "(upt)", priority = -1000, trigEngine = te("w")}, {
		t"upto(", i(1, "1.0/0.0", {key = "i1"}), t") { |", i(2, "n", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "loo", descr = "(loo)", priority = -1000, trigEngine = te("w")}, {
		t"loop { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ea", descr = "(ea)", priority = -1000, trigEngine = te("w")}, {
		t"each { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ead", descr = "(ead)", priority = -1000, trigEngine = te("w")}, {
		t"each do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eab", descr = "(eab)", priority = -1000, trigEngine = te("w")}, {
		t"each_byte { |", i(1, "byte", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eac-", descr = "(eac-) each_cons(..) { |group| .. }", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"each_char { |", i(1, "chr", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
		},
		{
			t"each_cons(", i(1, "2", {key = "i1"}), t") { |", i(2, "group", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
		},
	})),
	s({trig = "eai", descr = "(eai)", priority = -1000, trigEngine = te("w")}, {
		t"each_index { |", i(1, "i", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eaid", descr = "(eaid)", priority = -1000, trigEngine = te("w")}, {
		t"each_index do |", i(1, "i", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eak", descr = "(eak)", priority = -1000, trigEngine = te("w")}, {
		t"each_key { |", i(1, "key", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eakd", descr = "(eakd)", priority = -1000, trigEngine = te("w")}, {
		t"each_key do |", i(1, "key", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eal", descr = "(eal)", priority = -1000, trigEngine = te("w")}, {
		t"each_line { |", i(1, "line", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eald", descr = "(eald)", priority = -1000, trigEngine = te("w")}, {
		t"each_line do |", i(1, "line", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eap", descr = "(eap)", priority = -1000, trigEngine = te("w")}, {
		t"each_pair { |", i(1, "name", {key = "i1"}), t", ", i(2, "val", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eapd", descr = "(eapd)", priority = -1000, trigEngine = te("w")}, {
		t"each_pair do |", i(1, "name", {key = "i1"}), t", ", i(2, "val", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eas-", descr = "(eas-)", priority = -1000, trigEngine = te("w")}, {
		t"each_slice(", i(1, "2", {key = "i1"}), t") { |", i(2, "group", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "easd-", descr = "(easd-)", priority = -1000, trigEngine = te("w")}, {
		t"each_slice(", i(1, "2", {key = "i1"}), t") do |", i(2, "group", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eav", descr = "(eav)", priority = -1000, trigEngine = te("w")}, {
		t"each_value { |", i(1, "val", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eavd", descr = "(eavd)", priority = -1000, trigEngine = te("w")}, {
		t"each_value do |", i(1, "val", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eawi", descr = "(eawi)", priority = -1000, trigEngine = te("w")}, {
		t"each_with_index { |", i(1, "e", {key = "i1"}), t", ", i(2, "i", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eawid", descr = "(eawid)", priority = -1000, trigEngine = te("w")}, {
		t"each_with_index do |", i(1, "e", {key = "i1"}), t", ", i(2, "i", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "eawo", descr = "(eawo)", priority = -1000, trigEngine = te("w")}, {
		t"each_with_object(", i(1, "init", {key = "i1"}), t") { |", i(2, "e", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "eawod", descr = "(eawod)", priority = -1000, trigEngine = te("w")}, {
		t"each_with_object(", i(1, "init", {key = "i1"}), t") do |", i(2, "e", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "reve", descr = "(reve)", priority = -1000, trigEngine = te("w")}, {
		t"reverse_each { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "reved", descr = "(reved)", priority = -1000, trigEngine = te("w")}, {
		t"reverse_each do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "inj", descr = "(inj)", priority = -1000, trigEngine = te("w")}, {
		t"inject(", i(1, "init", {key = "i1"}), t") { |", i(2, "mem", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "injd", descr = "(injd)", priority = -1000, trigEngine = te("w")}, {
		t"inject(", i(1, "init", {key = "i1"}), t") do |", i(2, "mem", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "red", descr = "(red)", priority = -1000, trigEngine = te("w")}, {
		t"reduce(", i(1, "init", {key = "i1"}), t") { |", i(2, "mem", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "redd", descr = "(redd)", priority = -1000, trigEngine = te("w")}, {
		t"reduce(", i(1, "init", {key = "i1"}), t") do |", i(2, "mem", {key = "i2"}), t", ", i(3, "var", {key = "i3"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"map { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "mapd", descr = "(mapd)", priority = -1000, trigEngine = te("w")}, {
		t"map do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mapwi-", descr = "(mapwi-)", priority = -1000, trigEngine = te("w")}, {
		t"enum_with_index.map { |", i(1, "e", {key = "i1"}), t", ", i(2, "i", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "sor", descr = "(sor)", priority = -1000, trigEngine = te("w")}, {
		t"sort { |a, b| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "sorb", descr = "(sorb)", priority = -1000, trigEngine = te("w")}, {
		t"sort_by { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ran", descr = "(ran)", priority = -1000, trigEngine = te("w")}, {
		t"sort_by { rand }"
	}),
	s({trig = "all", descr = "(all)", priority = -1000, trigEngine = te("w")}, {
		t"all? { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "any", descr = "(any)", priority = -1000, trigEngine = te("w")}, {
		t"any? { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"classify { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "col", descr = "(col)", priority = -1000, trigEngine = te("w")}, {
		t"collect { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "cold", descr = "(cold)", priority = -1000, trigEngine = te("w")}, {
		t"collect do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "det", descr = "(det)", priority = -1000, trigEngine = te("w")}, {
		t"detect { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "detd", descr = "(detd)", priority = -1000, trigEngine = te("w")}, {
		t"detect do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "fet", descr = "(fet)", priority = -1000, trigEngine = te("w")}, {
		t"fetch(", i(1, "name", {key = "i1"}), t") { |", i(2, "key", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "fin", descr = "(fin)", priority = -1000, trigEngine = te("w")}, {
		t"find { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "find", descr = "(find)", priority = -1000, trigEngine = te("w")}, {
		t"find do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "fina", descr = "(fina)", priority = -1000, trigEngine = te("w")}, {
		t"find_all { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "finad", descr = "(finad)", priority = -1000, trigEngine = te("w")}, {
		t"find_all do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "gre", descr = "(gre)", priority = -1000, trigEngine = te("w")}, {
		t"grep(", i(1, "/pattern/", {key = "i1"}), t") { |", i(2, "match", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "grepv", descr = "(grepv)", priority = -1000, trigEngine = te("w")}, {
		t"select { |", i(1, "line", {key = "i1"}), t"| ", cp(1), t" !~ ", i(2, "/pattern/", {key = "i2"}), t" }", i(0, "", {key = "i0"})
	}),
	s({trig = "sub", descr = "(sub)", priority = -1000, trigEngine = te("w")}, {
		i(1, "g", {key = "i1"}), t"sub(", i(2, "/pattern/", {key = "i2"}), t") { |", i(3, "match", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "sca", descr = "(sca)", priority = -1000, trigEngine = te("w")}, {
		t"scan(", i(1, "/pattern/", {key = "i1"}), t") { |", i(2, "match", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "scad", descr = "(scad)", priority = -1000, trigEngine = te("w")}, {
		t"scan(", i(1, "/pattern/", {key = "i1"}), t") do |", i(2, "match", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "max", descr = "(max)", priority = -1000, trigEngine = te("w")}, {
		t"max { |a, b| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "min", descr = "(min)", priority = -1000, trigEngine = te("w")}, {
		t"min { |a, b| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "par", descr = "(par)", priority = -1000, trigEngine = te("w")}, {
		t"partition { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "pard", descr = "(pard)", priority = -1000, trigEngine = te("w")}, {
		t"partition do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rej", descr = "(rej)", priority = -1000, trigEngine = te("w")}, {
		t"reject { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "rejd", descr = "(rejd)", priority = -1000, trigEngine = te("w")}, {
		t"reject do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "sel", descr = "(sel)", priority = -1000, trigEngine = te("w")}, {
		t"select { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "seld", descr = "(seld)", priority = -1000, trigEngine = te("w")}, {
		t"select do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "lam", descr = "(lam)", priority = -1000, trigEngine = te("w")}, {
		t"lambda { |", i(1, "args", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "->", descr = "(->)", priority = -1000, trigEngine = te("w")}, {
		t"-> { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "->a", descr = "(->a)", priority = -1000, trigEngine = te("w")}, {
		t"->(", i(1, "args", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "dov", descr = "(dov)", priority = -1000, trigEngine = te("w")}, {
		t"do |", i(1, "v", {key = "i1"}), t"|", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = ":", descr = "(:)", priority = -1000, trigEngine = te("w")}, {
		i(1, "key", {key = "i1"}), t": ", i(2, "\'value\'", {key = "i2"})
	}),
	s({trig = "ope", descr = "(ope)", priority = -1000, trigEngine = te("w")}, {
		t"open(\'", i(1, "path/or/url/or/pipe", {key = "i1"}), t"\', \'", i(2, "w", {key = "i2"}), t"\') { |", i(3, "io", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "fpath", descr = "(fpath)", priority = -1000, trigEngine = te("w")}, {
		t"File.join(File.dirname(__FILE__), *[\'", i(1, "rel path here", {key = "i1"}), t"\'])"
	}),
	s({trig = "unif", descr = "(unif)", priority = -1000, trigEngine = te("w")}, {
		t"ARGF.each_line", i(1, "", {key = "i1"}), t" do |", i(2, "line", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "optp", descr = "(optp)", priority = -1000, trigEngine = te("w")}, {
		t"require \'optparse\'", nl(),
		nl(),
		t"options = { ", i(0, "default: \'args\'", {key = "i0"}), t" }", nl(),
		nl(),
		t"ARGV.options do |opts|", nl(),
		t"\topts.banner = \"Usage: #{File.basename($PROGRAM_NAME)}\"", nl(),
		t"end"
	}),
	s({trig = "opt", descr = "(opt)", priority = -1000, trigEngine = te("w")}, {
		t"opts.on(\'-", i(1, "o", {key = "i1"}), t"\', \'--", i(2, "long-option-name", {key = "i2"}), t"\', ", i(3, "String", {key = "i3"}), t", \'", i(4, "Option description.", {key = "i4"}), t"\') do |", i(5, "opt", {key = "i5"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "tc", descr = "(tc)", priority = -1000, trigEngine = te("w")}, {
		t"require \'test/unit\'", nl(),
		nl(),
		t"require \'", i(1, "library_file_name", {key = "i1"}), t"\'", nl(),
		nl(),
		t"class Test", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t" < Test::Unit::TestCase", nl(),
		t"\tdef test_", i(3, "case_name", {key = "i3"}), nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "ts", descr = "(ts)", priority = -1000, trigEngine = te("w")}, {
		t"require \'test/unit\'", nl(),
		nl(),
		t"require \'tc_", i(1, "test_case_file", {key = "i1"}), t"\'", nl(),
		t"require \'tc_", i(2, "test_case_file", {key = "i2"}), t"\'"
	}),
	s({trig = "as", descr = "(as)", priority = -1000, trigEngine = te("w")}, {
		t"assert ", i(1, "test", {key = "i1"}), t", \'", i(2, "Failure message.", {key = "i2"}), t"\'"
	}),
	s({trig = "ase", descr = "(ase)", priority = -1000, trigEngine = te("w")}, {
		t"assert_equal ", i(1, "expected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "asne", descr = "(asne)", priority = -1000, trigEngine = te("w")}, {
		t"assert_not_equal ", i(1, "unexpected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "asid", descr = "(asid)", priority = -1000, trigEngine = te("w")}, {
		t"assert_in_delta ", i(1, "expected_float", {key = "i1"}), t", ", i(2, "actual_float", {key = "i2"}), t", ", i(3, "2**-20", {key = "i3"})
	}),
	s({trig = "asi", descr = "(asi)", priority = -1000, trigEngine = te("w")}, {
		t"assert_includes ", i(1, "collection", {key = "i1"}), t", ", i(2, "object", {key = "i2"})
	}),
	s({trig = "asio", descr = "(asio)", priority = -1000, trigEngine = te("w")}, {
		t"assert_instance_of ", i(1, "ExpectedClass", {key = "i1"}), t", ", i(2, "actual_instance", {key = "i2"})
	}),
	s({trig = "asko", descr = "(asko)", priority = -1000, trigEngine = te("w")}, {
		t"assert_kind_of ", i(1, "ExpectedKind", {key = "i1"}), t", ", i(2, "actual_instance", {key = "i2"})
	}),
	s({trig = "asn", descr = "(asn)", priority = -1000, trigEngine = te("w")}, {
		t"assert_nil ", i(1, "instance", {key = "i1"})
	}),
	s({trig = "asnn", descr = "(asnn)", priority = -1000, trigEngine = te("w")}, {
		t"assert_not_nil ", i(1, "instance", {key = "i1"})
	}),
	s({trig = "asm", descr = "(asm)", priority = -1000, trigEngine = te("w")}, {
		t"assert_match(/", i(1, "expected_pattern", {key = "i1"}), t"/, ", i(2, "actual_string", {key = "i2"}), t")"
	}),
	s({trig = "asnm", descr = "(asnm)", priority = -1000, trigEngine = te("w")}, {
		t"assert_no_match(/", i(1, "unexpected_pattern", {key = "i1"}), t"/, ", i(2, "actual_string", {key = "i2"}), t")"
	}),
	s({trig = "aso", descr = "(aso)", priority = -1000, trigEngine = te("w")}, {
		t"assert_operator ", i(1, "left", {key = "i1"}), t", :", i(2, "operator", {key = "i2"}), t", ", i(3, "right", {key = "i3"})
	}),
	s({trig = "asr", descr = "(asr)", priority = -1000, trigEngine = te("w")}, {
		t"assert_raises(", i(1, "StandardError", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "asrd", descr = "(asrd)", priority = -1000, trigEngine = te("w")}, {
		t"assert_raises ", i(1, "StandardError", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "asnr", descr = "(asnr)", priority = -1000, trigEngine = te("w")}, {
		t"assert_nothing_raised(", i(1, "StandardError", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "asnrd", descr = "(asnrd)", priority = -1000, trigEngine = te("w")}, {
		t"assert_nothing_raised ", i(1, "StandardError", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "asrt", descr = "(asrt)", priority = -1000, trigEngine = te("w")}, {
		t"assert_respond_to ", i(1, "object", {key = "i1"}), t", :", i(2, "method", {key = "i2"})
	}),
	s({trig = "ass", descr = "(ass) assert_same(..)", priority = -1000, trigEngine = te("w")}, {
		t"assert_same ", i(1, "expected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "asss", descr = "(asss) assert_send(..)", priority = -1000, trigEngine = te("w")}, {
		t"assert_send [", i(1, "object", {key = "i1"}), t", :", i(2, "message", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t"]"
	}),
	s({trig = "asns", descr = "(asns)", priority = -1000, trigEngine = te("w")}, {
		t"assert_not_same ", i(1, "unexpected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "ast", descr = "(ast)", priority = -1000, trigEngine = te("w")}, {
		t"assert_throws :", i(1, "expected", {key = "i1"}), t", -> { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "astd", descr = "(astd)", priority = -1000, trigEngine = te("w")}, {
		t"assert_throws :", i(1, "expected", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "asnt", descr = "(asnt)", priority = -1000, trigEngine = te("w")}, {
		t"assert_nothing_thrown { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "asntd", descr = "(asntd)", priority = -1000, trigEngine = te("w")}, {
		t"assert_nothing_thrown do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "fl", descr = "(fl)", priority = -1000, trigEngine = te("w")}, {
		t"flunk \'", i(1, "Failure message.", {key = "i1"}), t"\'"
	}),
	s({trig = "rf", descr = "(rf)", priority = -1000, trigEngine = te("w")}, {
		t"refute ", i(1, "test", {key = "i1"}), t", \'", i(2, "Failure message.", {key = "i2"}), t"\'"
	}),
	s({trig = "rfe", descr = "(rfe)", priority = -1000, trigEngine = te("w")}, {
		t"refute_equal ", i(1, "unexpected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "rfko", descr = "(rfko)", priority = -1000, trigEngine = te("w")}, {
		t"refute_kind_of ", i(1, "UnexpectedKind", {key = "i1"}), t", ", i(2, "actual_instance", {key = "i2"})
	}),
	s({trig = "rfn", descr = "(rfn)", priority = -1000, trigEngine = te("w")}, {
		t"refute_nil ", i(1, "instance", {key = "i1"})
	}),
	s({trig = "rfo", descr = "(rfo)", priority = -1000, trigEngine = te("w")}, {
		t"refute_operator ", i(1, "left", {key = "i1"}), t", :", i(2, "operator", {key = "i2"}), t", ", i(3, "right", {key = "i3"})
	}),
	s({trig = "rfi", descr = "(rfi)", priority = -1000, trigEngine = te("w")}, {
		t"refute_includes ", i(1, "collection", {key = "i1"}), t", ", i(2, "object", {key = "i2"})
	}),
	s({trig = "rfid", descr = "(rfid)", priority = -1000, trigEngine = te("w")}, {
		t"refute_in_delta ", i(1, "unexpected_float", {key = "i1"}), t", ", i(2, "actual_float", {key = "i2"}), t", ", i(3, "2**-20", {key = "i3"})
	}),
	s({trig = "rfio", descr = "(rfio)", priority = -1000, trigEngine = te("w")}, {
		t"refute_instance_of ", i(1, "UnexpectedClass", {key = "i1"}), t", ", i(2, "actual_instance", {key = "i2"})
	}),
	s({trig = "rfs", descr = "(rfs)", priority = -1000, trigEngine = te("w")}, {
		t"refute_same ", i(1, "unexpected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"})
	}),
	s({trig = "bm-", descr = "(bm-)", priority = -1000, trigEngine = te("w")}, {
		t"TESTS = ", i(1, "10_000", {key = "i1"}), nl(),
		t"Benchmark.bmbm do |results|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rep", descr = "(rep)", priority = -1000, trigEngine = te("w")}, {
		t"results.report(\'", i(1, "name", {key = "i1"}), t":\') { TESTS.times { ", i(0, "", {key = "i0"}), t" } }"
	}),
	s({trig = "Md", descr = "(Md)", priority = -1000, trigEngine = te("w")}, {
		t"File.open(\'", i(1, "path/to/file.dump", {key = "i1"}), t"\', \'wb\') { |", i(2, "file", {key = "i2"}), t"| Marshal.dump(", i(3, "obj", {key = "i3"}), t", ", cp(2), t") }"
	}),
	s({trig = "Ml", descr = "(Ml)", priority = -1000, trigEngine = te("w")}, {
		t"File.open(\'", i(1, "path/to/file.dump", {key = "i1"}), t"\', \'rb\') { |", i(2, "file", {key = "i2"}), t"| Marshal.load(", cp(2), t") }"
	}),
	s({trig = "deec", descr = "(deec)", priority = -1000, trigEngine = te("w")}, {
		t"Marshal.load(Marshal.dump(", i(1, "obj_to_copy", {key = "i1"}), t"))"
	}),
	s({trig = "Pn-", descr = "(Pn-)", priority = -1000, trigEngine = te("w")}, {
		t"PStore.new(\'", i(1, "file_name.pstore", {key = "i1"}), t"\')"
	}),
	s({trig = "tra", descr = "(tra)", priority = -1000, trigEngine = te("w")}, {
		t"transaction(", i(1, "true", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "xml-", descr = "(xml-)", priority = -1000, trigEngine = te("w")}, {
		t"REXML::Document.new(File.read(\'", i(1, "path/to/file", {key = "i1"}), t"\'))"
	}),
	s({trig = "xpa", descr = "(xpa)", priority = -1000, trigEngine = te("w")}, {
		t"elements.each(\'", i(1, "//Xpath", {key = "i1"}), t"\') do |", i(2, "node", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "clafn", descr = "(clafn)", priority = -1000, trigEngine = te("w")}, {
		t"split(\'::\').inject(Object) { |par, const| par.const_get(const) }"
	}),
	s({trig = "sinc", descr = "(sinc)", priority = -1000, trigEngine = te("w")}, {
		t"class << self; self end"
	}),
	s({trig = "nam", descr = "(nam)", priority = -1000, trigEngine = te("w")}, {
		t"namespace :", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "tas", descr = "(tas)", priority = -1000, trigEngine = te("w")}, {
		t"desc \'", i(1, "Task description", {key = "i1"}), t"\'", nl(),
		t"task ", i(2, "task_name: [:dependent, :tasks]", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "b", descr = "(b)", priority = -1000, trigEngine = te("w")}, {
		t"{ |", i(1, "var", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "begin", descr = "(begin) \"begin ... rescue ... end\"", priority = -50, trigEngine = te("")}, {
		t"begin", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"rescue", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "debug", descr = "(debug)", priority = -1000, trigEngine = te("w")}, {
		t"require \'byebug\'; byebug"
	}),
	s({trig = "dbg", descr = "(dbg)", priority = -1000, trigEngine = te("w")}, {
		t"require \'debug\'; debugger"
	}),
	s({trig = "debug19", descr = "(debug19)", priority = -1000, trigEngine = te("w")}, {
		t"require \'debugger\'; debugger"
	}),
	s({trig = "debug18", descr = "(debug18)", priority = -1000, trigEngine = te("w")}, {
		t"require \'ruby-debug\'; debugger"
	}),
	s({trig = "pry", descr = "(pry)", priority = -1000, trigEngine = te("w")}, {
		t"require \'pry\'; binding.pry"
	}),
	s({trig = "strf", descr = "(strf)", priority = -1000, trigEngine = te("w")}, {
		t"strftime(\'", i(1, "%Y-%m-%d %H:%M:%S %z", {key = "i1"}), t"\')", i(0, "", {key = "i0"})
	}),
	s({trig = "mb", descr = "(mb)", priority = -1000, trigEngine = te("w")}, {
		t"must_be ", i(0, "", {key = "i0"})
	}),
	s({trig = "wb", descr = "(wb)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be ", i(0, "", {key = "i0"})
	}),
	s({trig = "mbe", descr = "(mbe)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_empty"
	}),
	s({trig = "wbe", descr = "(wbe)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_empty"
	}),
	s({trig = "mbio", descr = "(mbio)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_instance_of ", i(0, "Class", {key = "i0"})
	}),
	s({trig = "wbio", descr = "(wbio)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_instance_of ", i(0, "Class", {key = "i0"})
	}),
	s({trig = "mbko", descr = "(mbko)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_kind_of ", i(0, "Class", {key = "i0"})
	}),
	s({trig = "wbko", descr = "(wbko)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_kind_of ", i(0, "Class", {key = "i0"})
	}),
	s({trig = "mbn", descr = "(mbn)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_nil"
	}),
	s({trig = "wbn", descr = "(wbn)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_nil"
	}),
	s({trig = "mbsa", descr = "(mbsa)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_same_as ", i(0, "other", {key = "i0"})
	}),
	s({trig = "wbsa", descr = "(wbsa)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_same_as ", i(0, "other", {key = "i0"})
	}),
	s({trig = "mbsi", descr = "(mbsi)", priority = -1000, trigEngine = te("w")}, {
		t"-> { ", i(0, "", {key = "i0"}), t" }.must_be_silent"
	}),
	s({trig = "mbwd", descr = "(mbwd)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_within_delta ", i(1, "0.1", {key = "i1"}), t", ", i(2, "0.1", {key = "i2"})
	}),
	s({trig = "wbwd", descr = "(wbwd)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_within_delta ", i(1, "0.1", {key = "i1"}), t", ", i(2, "0.1", {key = "i2"})
	}),
	s({trig = "mbwe", descr = "(mbwe)", priority = -1000, trigEngine = te("w")}, {
		t"must_be_within_epsilon ", i(1, "0.1", {key = "i1"}), t", ", i(2, "0.1", {key = "i2"})
	}),
	s({trig = "wbwe", descr = "(wbwe)", priority = -1000, trigEngine = te("w")}, {
		t"wont_be_within_epsilon ", i(1, "0.1", {key = "i1"}), t", ", i(2, "0.1", {key = "i2"})
	}),
	s({trig = "me", descr = "(me)", priority = -1000, trigEngine = te("w")}, {
		t"must_equal ", i(0, "other", {key = "i0"})
	}),
	s({trig = "we", descr = "(we)", priority = -1000, trigEngine = te("w")}, {
		t"wont_equal ", i(0, "other", {key = "i0"})
	}),
	s({trig = "mi", descr = "(mi)", priority = -1000, trigEngine = te("w")}, {
		t"must_include ", i(0, "what", {key = "i0"})
	}),
	s({trig = "wi", descr = "(wi)", priority = -1000, trigEngine = te("w")}, {
		t"wont_include ", i(0, "what", {key = "i0"})
	}),
	s({trig = "mm", descr = "(mm)", priority = -1000, trigEngine = te("w")}, {
		t"must_match /", i(0, "regex", {key = "i0"}), t"/"
	}),
	s({trig = "wm", descr = "(wm)", priority = -1000, trigEngine = te("w")}, {
		t"wont_match /", i(0, "regex", {key = "i0"}), t"/"
	}),
	s({trig = "mout", descr = "(mout)", priority = -1000, trigEngine = te("w")}, {
		t"-> { ", i(1, "", {key = "i1"}), t" }.must_output \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "mra", descr = "(mra)", priority = -1000, trigEngine = te("w")}, {
		t"-> { ", i(1, "", {key = "i1"}), t" }.must_raise ", i(0, "StandardError", {key = "i0"})
	}),
	s({trig = "mrt", descr = "(mrt)", priority = -1000, trigEngine = te("w")}, {
		t"must_respond_to :", i(0, "method", {key = "i0"})
	}),
	s({trig = "wrt", descr = "(wrt)", priority = -1000, trigEngine = te("w")}, {
		t"wont_respond_to :", i(0, "method", {key = "i0"})
	}),
	s({trig = "msend", descr = "(msend)", priority = -1000, trigEngine = te("w")}, {
		t"must_send [ ", i(1, "what", {key = "i1"}), t", :", i(2, "method", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t" ]"
	}),
	s({trig = "mthrow", descr = "(mthrow)", priority = -1000, trigEngine = te("w")}, {
		t"-> { throw :", i(1, "error", {key = "i1"}), t" }.must_throw :", i(2, "error", {key = "i2"})
	}),
	s({trig = "desc", descr = "(desc)", priority = -1000, trigEngine = te("w")}, {
		t"describe ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(vim_snippets#Filename(), \'_spec$\', \'\', \'\'), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rdesc", descr = "(rdesc)", priority = -1000, trigEngine = te("w")}, {
		t"RSpec.describe ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(vim_snippets#Filename(), \'_spec$\', \'\', \'\'), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "descm", descr = "(descm)", priority = -1000, trigEngine = te("w")}, {
		t"describe \'", i(1, "#method", {key = "i1"}), t"\' do", nl(),
		t"\t", i(0, "pending \'Not implemented\'", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "cont", descr = "(cont)", priority = -1000, trigEngine = te("w")}, {
		t"context \'", i(1, "message", {key = "i1"}), t"\' do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "bef", descr = "(bef)", priority = -1000, trigEngine = te("w")}, {
		t"before :", i(1, "each", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "aft", descr = "(aft)", priority = -1000, trigEngine = te("w")}, {
		t"after :", i(1, "each", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let(:", i(1, "object", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "let!", descr = "(let!)", priority = -1000, trigEngine = te("w")}, {
		t"let!(:", i(1, "object", {key = "i1"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "subj", descr = "(subj)", priority = -1000, trigEngine = te("w")}, {
		t"subject { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "s.", descr = "(s.)", priority = -1000, trigEngine = te("w")}, {
		t"subject.", i(0, "method", {key = "i0"})
	}),
	s({trig = "spec", descr = "(spec)", priority = -1000, trigEngine = te("w")}, {
		t"specify { subject.", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "object", {key = "i1"}), t").to ", i(0, "", {key = "i0"})
	}),
	s({trig = "expb", descr = "(expb)", priority = -1000, trigEngine = te("w")}, {
		t"expect { ", i(1, "object", {key = "i1"}), t" }.to ", i(0, "", {key = "i0"})
	}),
	s({trig = "experr", descr = "(experr)", priority = -1000, trigEngine = te("w")}, {
		t"expect { ", i(1, "object", {key = "i1"}), t" }.to raise_error ", i(2, "StandardError", {key = "i2"}), t", /", i(0, "message_regex", {key = "i0"}), t"/"
	}),
	s({trig = "allow", descr = "(allow)", priority = -1000, trigEngine = te("w")}, {
		t"allow(", i(1, "object", {key = "i1"}), t").to ", i(0, "", {key = "i0"})
	}),
	s({trig = "shared", descr = "(shared)", priority = -1000, trigEngine = te("w")}, {
		t"shared_examples ", i(0, "\'shared examples name\'", {key = "i0"})
	}),
	s({trig = "ibl", descr = "(ibl)", priority = -1000, trigEngine = te("w")}, {
		t"it_behaves_like ", i(0, "\'shared examples name\'", {key = "i0"})
	}),
	s({trig = "it", descr = "(it)", priority = -1000, trigEngine = te("w")}, {
		t"it \'", i(1, "spec_name", {key = "i1"}), t"\' do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "its", descr = "(its)", priority = -1000, trigEngine = te("w")}, {
		t"its(:", i(1, "method", {key = "i1"}), t") { should ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		t"it { should ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isn", descr = "(isn)", priority = -1000, trigEngine = te("w")}, {
		t"it { should_not ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "iexp", descr = "(iexp)", priority = -1000, trigEngine = te("w")}, {
		t"it { expect(", i(1, "object", {key = "i1"}), t").", i(2, "", {key = "i2"}), t" ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "iexpb", descr = "(iexpb)", priority = -1000, trigEngine = te("w")}, {
		t"it { expect { ", i(1, "object", {key = "i1"}), t" }.", i(2, "", {key = "i2"}), t" ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "iiexp", descr = "(iiexp)", priority = -1000, trigEngine = te("w")}, {
		t"it { is_expected.to ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "iiexpn", descr = "(iiexpn)", priority = -1000, trigEngine = te("w")}, {
		t"it { is_expected.not_to ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "agg", descr = "(agg)", priority = -1000, trigEngine = te("w")}, {
		t"aggregate_failures \'", i(1, "message", {key = "i1"}), t"\' do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "^# ?[uU][tT][fF]-?8", descr = "(^# ?[uU][tT][fF]-?8) \"# encoding: UTF-8\"", priority = -50, trigEngine = te("r")}, {
		t"# encoding: UTF-8", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "\\b(de)?f", descr = "(\\b(de)?f) \"def <name>...\"", priority = -50, trigEngine = te("r")}, {
		t"def ", i(1, "function_name", {key = "i1"}), d(2, function(args) return sn(nil, {t"(", i(1, "*args", {key = "i3"}), t")"}) end, {}, {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defi", descr = "(defi) \"def initialize ...\"", priority = -50, trigEngine = te("")}, {
		t"def initialize(", i(1, "", {key = "i1"}), t")", f(function(args, snip) return c_py({"ruby", 254}, "write_instance_vars(t[1],snip)", python_globals, args, snip, "", am[254]) end, ae(am[254])), i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defr", descr = "(defr) \"def <name> ... rescue ...\"", priority = -50, trigEngine = te("")}, {
		t"def ", i(1, "function_name", {key = "i1"}), d(2, function(args) return sn(nil, {t"(", i(1, "*args", {key = "i3"}), t")"}) end, {}, {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i4"}), nl(),
		t"rescue", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "For", descr = "(For) \"(<from>..<to>).each { |<i>| <block> }\"", priority = -50, trigEngine = te("")}, {
		t"(", i(1, "from", {key = "i1"}), t"..", i(2, "to", {key = "i2"}), t").each { |", i(3, "i", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.Merge!", descr = "((\\S+)\\.Merge!) \".merge!(<other_hash>) { |<key>,<oldval>,<newval>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 257}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[257]) end, ae(am[257])), t".merge!(", i(1, "other_hash", {key = "i1"}), t") { |", i(2, "key", {key = "i2"}), t",", i(3, "oldval", {key = "i3"}), t",", i(4, "newval", {key = "i4"}), t"| ", i(5, "block", {key = "i5"}), t" }"
	}),
	s({trig = "(\\S+)\\.merge!", descr = "((\\S+)\\.merge!) \".merge!(<other_hash>) do |<key>,<oldval>,<newval>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 258}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[258]) end, ae(am[258])), t".merge!(", i(1, "other_hash", {key = "i1"}), t") do |", i(2, "key", {key = "i2"}), t",", i(3, "oldval", {key = "i3"}), t",", i(4, "newval", {key = "i4"}), t"|", nl(),
		t"\t", i(0, "block", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Del(ete)?_?if", descr = "((\\S+)\\.Del(ete)?_?if) \".delete_if { |<key>,<value>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 259}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[259]) end, ae(am[259])), t".delete_if { |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.del(ete)?_?if", descr = "((\\S+)\\.del(ete)?_?if) \".delete_if do |<key>,<value>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 260}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[260]) end, ae(am[260])), t".delete_if do |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Keep_?if", descr = "((\\S+)\\.Keep_?if) \".keep_if { |<key>,<value>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 261}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[261]) end, ae(am[261])), t".keep_if { |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.keep_?if", descr = "((\\S+)\\.keep_?if) \".keep_if do <key>,<value>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 262}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[262]) end, ae(am[262])), t".keep_if do |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Reject", descr = "((\\S+)\\.Reject) \".reject { |<key>,<value>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 263}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[263]) end, ae(am[263])), t".reject { |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.reject", descr = "((\\S+)\\.reject) \".reject do <key>,<value>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 264}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[264]) end, ae(am[264])), t".reject do |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Select", descr = "((\\S+)\\.Select) \".select { |<item>| <block>}\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 265}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[265]) end, ae(am[265])), t".select { |", i(1, "item", {key = "i1"}), t"| ", i(2, "block", {key = "i2"}), t" }"
	}),
	s({trig = "(\\S+)\\.select", descr = "((\\S+)\\.select) \".select do |<item>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 266}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[266]) end, ae(am[266])), t".select do |", i(1, "item", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "block", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Sort", descr = "((\\S+)\\.Sort) \".sort { |<a>,<b>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 267}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[267]) end, ae(am[267])), t".sort { |", i(1, "a", {key = "i1"}), t",", i(2, "b", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.sort", descr = "((\\S+)\\.sort) \".sort do |<a>,<b>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 268}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[268]) end, ae(am[268])), t".sort do |", i(1, "a", {key = "i1"}), t",", i(2, "b", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Each_?k(ey)?", descr = "((\\S+)\\.Each_?k(ey)?) \".each_key { |<key>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 269}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[269]) end, ae(am[269])), t".each_key { |", i(1, "key", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.each_?k(ey)?", descr = "((\\S+)\\.each_?k(ey)?) \".each_key do |key| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 270}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[270]) end, ae(am[270])), t".each_key do |", i(1, "key", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Each_?val(ue)?", descr = "((\\S+)\\.Each_?val(ue)?) \".each_value { |<value>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 271}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[271]) end, ae(am[271])), t".each_value { |", i(1, "value", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.each_?val(ue)?", descr = "((\\S+)\\.each_?val(ue)?) \".each_value do |<value>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 272}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[272]) end, ae(am[272])), t".each_value do |", i(1, "value", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.ea", descr = "((\\S+)\\.ea) \"<elements>.each do |<element>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 273}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[273]) end, ae(am[273])), t".each { |", i(1, "e", {key = "i1"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.ead", descr = "((\\S+)\\.ead) \"<elements>.each do |<element>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 274}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[274]) end, ae(am[274])), t".each do |", i(1, "e", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "each_?s(lice)?", descr = "(each_?s(lice)?) \"<array>.each_slice(n) do |slice| <block> end\"", priority = -50, trigEngine = te("r")}, {
		i(1, "elements", {key = "i1"}), t".each_slice(", i(2, "2", {key = "i2"}), t") do |", i(3, "slice", {key = "i3"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "Each_?s(lice)?", descr = "(Each_?s(lice)?) \"<array>.each_slice(n) { |slice| <block> }\"", priority = -50, trigEngine = te("r")}, {
		i(1, "elements", {key = "i1"}), t".each_slice(", i(2, "2", {key = "i2"}), t") { |", i(3, "slice", {key = "i3"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.Map", descr = "((\\S+)\\.Map) \".map { |<element>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 277}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[277]) end, ae(am[277])), t".map { |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 277}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[277])}, ""), {key = "i1"}) }) end), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.map", descr = "((\\S+)\\.map) \".map do |<element>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 278}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[278]) end, ae(am[278])), t".map do |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 278}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[278])}, ""), {key = "i1"}) }) end), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Rev(erse)?_?each", descr = "((\\S+)\\.Rev(erse)?_?each) \".reverse_each { |<element>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 279}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[279]) end, ae(am[279])), t".reverse_each { |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 279}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[279])}, ""), {key = "i1"}) }) end), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.rev(erse)?_?each", descr = "((\\S+)\\.rev(erse)?_?each) \".reverse_each do |<element>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 280}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[280]) end, ae(am[280])), t".reverse_each do |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 280}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[280])}, ""), {key = "i1"}) }) end), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Each", descr = "((\\S+)\\.Each) \".each { |<element>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 281}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[281]) end, ae(am[281])), t".each { |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 281}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[281])}, ""), {key = "i1"}) }) end), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.each", descr = "((\\S+)\\.each) \".each do |<element>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 282}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[282]) end, ae(am[282])), t".each do |", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 282}, "\nelement_name = match.group(1).lstrip(\'$@\')\nematch = re.search(\"([A-Za-z][A-Za-z0-9_]+?)s?[^A-Za-z0-9_]*?$\", element_name)\ntry:\n\twmatch = re.search(\"([A-Za-z][A-Za-z0-9_]+)$\", ematch.group(1))\n\tsnip.rv = wmatch.group(1).lower()\nexcept:\n\tsnip.rv = \'element\'\n", python_globals, args, snip, "", am[282])}, ""), {key = "i1"}) }) end), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.Each_?p(air)?", descr = "((\\S+)\\.Each_?p(air)?) \".each_pair { |<key>,<value>| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 283}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[283]) end, ae(am[283])), t".each_pair { |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"| ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "(\\S+)\\.each_?p(air)?", descr = "((\\S+)\\.each_?p(air)?) \".each_pair do |<key>,<value>| <block> end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 284}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[284]) end, ae(am[284])), t".each_pair do |", i(1, "key", {key = "i1"}), t",", i(2, "value", {key = "i2"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "(\\S+)\\.sub", descr = "((\\S+)\\.sub) \".sub(<expression>) { <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 285}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[285]) end, ae(am[285])), t".sub(", i(1, "expression", {key = "i1"}), t") { ", i(2, "\"replace_with\"", {key = "i2"}), t" }"
	}),
	s({trig = "(\\S+)\\.gsub", descr = "((\\S+)\\.gsub) \".gsub(<expression>) { <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 286}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[286]) end, ae(am[286])), t".gsub(", i(1, "expression", {key = "i1"}), t") { ", i(2, "\"replace_with\"", {key = "i2"}), t" }"
	}),
	s({trig = "(\\S+)\\.index", descr = "((\\S+)\\.index) \".index { |item| <block> }\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 287}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[287]) end, ae(am[287])), t".index { |", i(1, "item", {key = "i1"}), t"| ", i(2, "block", {key = "i2"}), t" }"
	}),
	s({trig = "(\\S+)\\.Index", descr = "((\\S+)\\.Index) \".index do |item| ... end\"", priority = -50, trigEngine = te("r")}, {
		f(function(args, snip) return c_py({"ruby", 288}, "snip.rv=match.group(1)", python_globals, args, snip, "", am[288]) end, ae(am[288])), t".index do |", i(1, "item", {key = "i1"}), t"|", nl(),
		t"\t", i(0, "block", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "Until", descr = "(Until) \"begin ... end until <expression>\"", priority = -50, trigEngine = te("")}, {
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end until ", i(1, "expression", {key = "i1"})
	}),
	s({trig = "while", descr = "(while) \"while <expression> ... end\"", priority = -50, trigEngine = te("")}, {
		t"while ", i(1, "expression", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "While", descr = "(While) \"begin ... end while <expression>\"", priority = -50, trigEngine = te("")}, {
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end while ", i(1, "expression", {key = "i1"})
	}),
	s({trig = "rescue", descr = "(rescue)", priority = -50, trigEngine = te("")}, {
		t"rescue Exception => e", nl(),
		t"\tputs e.message", nl(),
		t"\tputs e.backtrace.inspect", nl(),
		t"\t", i(0, "# Rescue", {key = "i0"})
	}),
	s({trig = "\\b(case|sw(itch)?)", descr = "(\\b(case|sw(itch)?)) \"case <variable> when <expression> ... end\"", priority = -50, trigEngine = te("r")}, {
		t"case ", i(1, "variable", {key = "i1"}), nl(),
		t"when ", i(2, "expression", {key = "i2"}), nl(),
		t"  ", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "class", descr = "(class) \"class <class_name> def initialize ... end end\"", priority = -50, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 294}, "snip.rv = snip.basename.title().replace(\'_\', \'\')", python_globals, args, snip, "", am[294])}, ""), {key = "i1"}) }) end), nl(),
		t"\tdef initialize(", i(2, "*args", {key = "i2"}), t")", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "module", descr = "(module) \"module\"", priority = -50, trigEngine = te("")}, {
		t"module ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ruby", 295}, "snip.rv = snip.basename.title().replace(\'_\', \'\')", python_globals, args, snip, "", am[295])}, ""), {key = "i1"}) }) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "###", descr = "(###)", priority = -50, trigEngine = te("")}, {
		t"=begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"=end"
	}),
})
