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
	0,
	0,
	{{1, 1}, {2, 2}, {3, 4}, {4, 6}, {5, 7}, {6, 8}},
	2,
	1,
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	0,
	0,
	0,
	2,
	1,
	0,
	2,
	3,
	0,
	1,
	0,
	1,
	1,
}

local python_globals = {
	[[import vim

# Tests for the existence of a variable declared by Vim's filetype detection
# suggesting the type of shell script of the current file
def testShell(scope, shell):
	return vim.eval("exists('" + scope + ":is_" + shell + "')")

# Loops over the possible variables, checking for global variables
# first since they indicate an override by the user.
def getShell():
	for scope in ["g", "b"]:
		for shell in ["bash", "posix", "sh", "kornshell"]:
			if testShell(scope, shell) == "1":
				if shell == "kornshell":
					return "ksh"
				if shell == "posix":
					return "sh"
				return shell
	return "sh"]]
}


ls.add_snippets("sh", {
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env (!env)\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"sh", 1}, "snip.rv = \'#!/usr/bin/env \' + getShell() + \"\\n\" ", python_globals, args, snip, "", am[1]) end, ae(am[1]))
	}),
	s({trig = "sbash", descr = "(sbash) \"safe bash options\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env bash", nl(),
		t"set -euo pipefail", nl(),
		t"IFS=$\'\\n\\t\'", nl(),
		f(function(args, snip) return c_py({"sh", 2}, "snip.rv =\'\\n\\n\' ", python_globals, args, snip, "", am[2]) end, ae(am[2]))
	}),
	s({trig = "temp", descr = "(temp) \"Tempfile\"", priority = -50, trigEngine = te("b")}, {
		i(1, "TMPFILE", {key = "i1"}), t"=\"$(mktemp -t ", t"--suffix=", i(3, ".SUFFIX", {key = "i3"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"sh", 3}, "\nsnip.rv = re.sub(r\'[^a-zA-Z]\', \'_\', snip.fn) or \"untitled\"\n", python_globals, args, snip, "", am[3])}, ""), {key = "i2"}) }) end), t".XXXXXX)\"", nl(),
		tr(6, "(.+)", "trap \""), d(4, function(args, snip) return sn(nil, { i(1, jt({"rm -f \'$", rx_tr(args[1], ".*\\s", ""), "\'"}, ""), {key = "i6"}) }) end, {k"i1"}), tr(6, "(.+)", "\" 0               # EXIT\\n"), tr(7, "(.+)", "trap \""), d(5, function(args, snip) return sn(nil, { i(1, jt({"rm -f \'$", rx_tr(args[1], ".*\\s", ""), "\'; exit 1"}, ""), {key = "i7"}) }) end, {k"i1"}), tr(7, "(.+)", "\" 2       # INT\\n"), tr(8, "(.+)", "trap \""), d(6, function(args, snip) return sn(nil, { i(1, jt({"rm -f \'$", rx_tr(args[1], ".*\\s", ""), "\'; exit 1"}, ""), {key = "i8"}) }) end, {k"i1"}), tr(8, "(.+)", "\" 1 15    # HUP TERM\\n"), nl()
	}),
	s({trig = "case|sw(itch)?", descr = "(case|sw(itch)?) \"case .. esac (case)\"", priority = -50, trigEngine = te("rb")}, {
		t"case ", i(1, "word", {key = "i1"}), t" in", nl(),
		t"\t", i(2, "pattern", {key = "i2"}), t" )", nl(),
		t"\t\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i3"}) }) end), t";;", nl(),
		t"esac"
	}),
	s({trig = "elif", descr = "(elif) \"elif .. (elif)\"", priority = -50, trigEngine = te("b")}, {
		t"elif ", t"[[ ", i(1, "condition", {key = "i1"}), t" ]]", t"; then", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "for", descr = "(for) \"for ... done (for)\"", priority = -50, trigEngine = te("b")}, {
		t"for (( i = 0; i < ", i(1, "10", {key = "i1"}), t"; i++ )); do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"done"
	}),
	s({trig = "forin", descr = "(forin) \"for ... in ... done (forin)\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "i", {key = "i1"}), tr(2, ".+", " in "), i(2, "words", {key = "i2"}), t"; do", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"done"
	}),
	s({trig = "here", descr = "(here) \"here document (here)\"", priority = -50, trigEngine = te("")}, {
		t"<<-", t"\'", i(1, "TOKEN", {key = "i1"}), t"\'", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return c_shell("echo \\\\n") end, {}), tr(1, "[\'\"`](.+)[\'\"`]", "$1")
	}),
	s({trig = "ift(est)?", descr = "(ift(est)?) \"if ... then (if)\"", priority = -50, trigEngine = te("rb")}, {
		t"if ", t"[ ", i(1, "condition", {key = "i1"}), t" ]", t"; then", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"fi"
	}),
	s({trig = "if", descr = "(if) \"if ... then (if)\"", priority = -50, trigEngine = te("b")}, {
		t"if [[ ", i(1, "condition", {key = "i1"}), t" ]]; then", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"fi"
	}),
	s({trig = "until", descr = "(until) \"until ... (done)\"", priority = -50, trigEngine = te("b")}, {
		t"until ", t"[[ ", i(1, "condition", {key = "i1"}), t" ]]", t"; do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"done"
	}),
	s({trig = "wh(ile)?", descr = "(wh(ile)?) \"while ... (done)\"", priority = -50, trigEngine = te("rb")}, {
		t"while ", t"[[ ", i(1, "condition", {key = "i1"}), t" ]]", t"; do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"done"
	}),
	s({trig = "func", descr = "(func) \"function() {...}\"", priority = -50, trigEngine = te("b")}, {
		i(1, "function", {key = "i1"}), t" () {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"}"
	}),
	s({trig = "s#!", descr = "(s#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/bin/sh", nl(),
		t"set -eu", nl()
	}),
	s({trig = "safe", descr = "(safe)", priority = -1000, trigEngine = te("w")}, {
		t"set -eu", nl()
	}),
	s({trig = "bash", descr = "(bash)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env bash", nl()
	}),
	s({trig = "fori", descr = "(fori)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "needle", {key = "i1"}), t" in ", i(2, "haystack", {key = "i2"}), t" ; do", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"done"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while [ ", i(1, "", {key = "i1"}), t" ]; do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"done"
	}),
	s({trig = "wht", descr = "(wht)", priority = -1000, trigEngine = te("w")}, {
		t"while true; do", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"done"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "word", {key = "i1"}), t" in", nl(),
		t"\t", i(2, "pattern", {key = "i2"}), t")", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";;", nl(),
		t"esac"
	}),
	s({trig = "go", descr = "(go)", priority = -1000, trigEngine = te("w")}, {
		t"while getopts \'", i(1, "o", {key = "i1"}), t"\' ", i(2, "opts", {key = "i2"}), nl(),
		t"do", nl(),
		t"\tcase $", cp(2), t" in", nl(),
		t"\t", i(3, "o0", {key = "i3"}), t")", nl(),
		t"\t\t", i(0, "#staments", {key = "i0"}), t";;", nl(),
		t"\tesac", nl(),
		t"done"
	}),
	s({trig = "sdir", descr = "(sdir)", priority = -1000, trigEngine = te("w")}, {
		t"SCRIPT_DIR=\"$( cd \"$( dirname \"${BASH_SOURCE[0]}\" )\" && pwd )\""
	}),
	s({trig = "getopt", descr = "(getopt)", priority = -1000, trigEngine = te("w")}, {
		t"__ScriptVersion=\"", i(1, "version", {key = "i1"}), t"\"", nl(),
		nl(),
		t"#===  FUNCTION  ================================================================", nl(),
		t"#         NAME:  usage", nl(),
		t"#  DESCRIPTION:  Display usage information.", nl(),
		t"#===============================================================================", nl(),
		t"function usage ()", nl(),
		t"{", nl(),
		t"\techo \"Usage :  $", i(0, "0", {key = "i0"}), t" [options] [--]", nl(),
		nl(),
		t"    Options:", nl(),
		t"    -h|help       Display this message", nl(),
		t"    -v|version    Display script version\"", nl(),
		nl(),
		t"}    # ----------  end of function usage  ----------", nl(),
		nl(),
		t"#-----------------------------------------------------------------------", nl(),
		t"#  Handle command line arguments", nl(),
		t"#-----------------------------------------------------------------------", nl(),
		nl(),
		t"while getopts \":hv\" opt", nl(),
		t"do", nl(),
		t"  case $opt in", nl(),
		nl(),
		t"\th|help     )  usage; exit 0   ;;", nl(),
		nl(),
		t"\tv|version  )  echo \"$", i(0, "0", {key = "i0"}), t" -- Version $__ScriptVersion\"; exit 0   ;;", nl(),
		nl(),
		t"\t* )  echo -e \"\\n  Option does not exist : $OPTARG\\n\"", nl(),
		t"\t\t  usage; exit 1   ;;", nl(),
		nl(),
		t"  esac    # --- end of case ---", nl(),
		t"done", nl(),
		t"shift $(($OPTIND-1))"
	}),
	s({trig = "root", descr = "(root)", priority = -1000, trigEngine = te("w")}, {
		t"if [ $(id -u) -ne 0 ]; then exec sudo $0; fi", nl()
	}),
	s({trig = "fun-sh", descr = "(fun-sh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "function_name", {key = "i1"}), t"() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "function_name", {key = "i1"}), t"() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
})
