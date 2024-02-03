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
	{1},
	{1},
	{},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{1},
	{0},
}
ls.add_snippets("make", {
	s({trig = "base", descr = "(base)", priority = -1000, trigEngine = te("w")}, {
		t".PHONY: clean, mrproper", nl(),
		t"CC = gcc", nl(),
		t"CFLAGS = -g -Wall", nl(),
		nl(),
		t"all: ", cp(1), nl(),
		nl(),
		t"%.o: %.c", nl(),
		t"\t$(CC) $(CFLAGS) -c -o $@ $<", nl(),
		nl(),
		i(1, "out", {key = "i1"}), t": ", cp(1), t".o", nl(),
		t"\t$(CC) $(CFLAGS) -o $@ $+", nl(),
		nl(),
		t"clean:", nl(),
		t"\trm -f *.o core.*", nl(),
		nl(),
		t"mrproper: clean", nl(),
		t"\trm -f ", cp(1)
	}),
	s({trig = "add", descr = "(add)", priority = -1000, trigEngine = te("w")}, {
		i(1, "out", {key = "i1"}), t": ", cp(1), t".o", nl(),
		t"\t$(CC) $(CFLAGS) -o $@ $+"
	}),
	s({trig = "print", descr = "(print)", priority = -1000, trigEngine = te("w")}, {
		t"print-%: ; @echo $*=$($*)"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"ifeq (", i(1, "cond0", {key = "i1"}), t", ", i(2, "cond1", {key = "i2"}), t")", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"endif"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"ifeq (", i(1, "cond0", {key = "i1"}), t", ", i(2, "cond1", {key = "i2"}), t")", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endif"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "default", descr = "(default)", priority = -1000, trigEngine = te("w")}, {
		t".DEFAULT_GOAL := ", i(1, "", {key = "i1"})
	}),
	s({trig = "help", descr = "(help)", priority = -1000, trigEngine = te("w")}, {
		t"help: ## Prints help for targets with comments", nl(),
		t"\t@cat $(MAKEFILE_LIST) | grep -E \'^[a-zA-Z_-]+:.*?## .*$$\' | awk \'BEGIN {FS = \":.*?## \"}; {printf \"\\033[36m%-30s\\033[0m %s\\n\", $$1, $$2}\'", nl(),
		i(0, "", {key = "i0"})
	}),
})
