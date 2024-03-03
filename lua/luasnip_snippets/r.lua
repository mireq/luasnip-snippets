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
	[[import os
from vimsnippets import complete

FIELD_TYPES = [
'character',
'data.frame',
'integer',
'list',
'logical',
'matrix',
'numeric',
'vector']]]
}


ls.add_snippets("r", {
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env Rscript\"", priority = -20, trigEngine = te("b")}, {
		t"#!/usr/bin/env Rscript", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "lib", descr = "(lib) \"Import a library\"", priority = -20, trigEngine = te("")}, {
		t"library(\'", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"\')"
	}),
	s({trig = "req", descr = "(req) \"Require a file\"", priority = -20, trigEngine = te("")}, {
		t"require(\'", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"\')"
	}),
	s({trig = "source", descr = "(source) \"Source a file\"", priority = -20, trigEngine = te("")}, {
		t"source(\'", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"\')"
	}),
	s({trig = "if", descr = "(if) \"If statement\"", priority = -20, trigEngine = te("")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el) \"Else statement\"", priority = -20, trigEngine = te("")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ei", descr = "(ei)", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) \"while loop\"", priority = -20, trigEngine = te("")}, {
		t"while(", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "wht", descr = "(wht)", priority = -1000, trigEngine = te("w")}, {
		t"while(true) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for) \"for loop\"", priority = -20, trigEngine = te("")}, {
		t"for (", i(1, "item", {key = "i1"}), t" in ", i(2, "list", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "foreach", descr = "(foreach)", priority = -1000, trigEngine = te("w")}, {
		t"foreach (", i(1, "item", {key = "i1"}), t" = ", i(2, "list", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "fun", descr = "(fun) \"Function definition\"", priority = -20, trigEngine = te("")}, {
		i(1, "name", {key = "i1"}), t" <- function (", i(2, "", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ret", descr = "(ret) \"Return call\"", priority = -20, trigEngine = te("")}, {
		t"return(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "df", descr = "(df) \"Data frame\"", priority = -20, trigEngine = te("")}, {
		i(1, "name", {key = "i1"}), t"[", i(2, "rows", {key = "i2"}), t", ", i(0, "cols", {key = "i0"}), t"]"
	}),
	s({trig = "c", descr = "(c) \"c function\"", priority = -20, trigEngine = te("")}, {
		t"c(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "li", descr = "(li) \"list function\"", priority = -20, trigEngine = te("")}, {
		t"list(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "mat", descr = "(mat) \"matrix function\"", priority = -20, trigEngine = te("")}, {
		t"matrix(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", nrow = ", i(2, "rows", {key = "i2"}), t", ncol = ", i(0, "cols", {key = "i0"}), t")"
	}),
	s({trig = "apply", descr = "(apply) \"apply function\"", priority = -20, trigEngine = te("")}, {
		t"apply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(2, "margin", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "lapply", descr = "(lapply) \"lapply function\"", priority = -20, trigEngine = te("")}, {
		t"lapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "sapply", descr = "(sapply) \"sapply function\"", priority = -20, trigEngine = te("")}, {
		t"sapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "vapply", descr = "(vapply) \"vapply function\"", priority = -20, trigEngine = te("")}, {
		t"vapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(2, "function", {key = "i2"}), t", ", i(0, "type", {key = "i0"}), t")"
	}),
	s({trig = "mapply", descr = "(mapply) \"mapply function\"", priority = -20, trigEngine = te("")}, {
		t"mapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(0, "...", {key = "i0"}), t")"
	}),
	s({trig = "tapply", descr = "(tapply) \"tapply function\"", priority = -20, trigEngine = te("")}, {
		t"tapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(2, "index", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "rapply", descr = "(rapply) \"rapply function\"", priority = -20, trigEngine = te("")}, {
		t"rapply(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "dd", descr = "(dd)", priority = -1000, trigEngine = te("w")}, {
		t"ddply(", i(1, "frame", {key = "i1"}), t", ", i(2, "variables", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "dl", descr = "(dl) \"Download and install a package\"", priority = -20, trigEngine = te("b")}, {
		t"download.file(\"", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"\", destfile = \"", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], ".*\\/(\\S*)$", "(?1:$1)")}, ""), {key = "i2"}) }) end, {k"i1"}), t"\")", nl(),
		t"install.packages(\"", cp(2), t"\", type = \"source\", repos = NULL)", nl(),
		t"library(\"", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)_.*$", "(?1:$1)")}, ""), {key = "i3"}) }) end, {k"i2"}), t"\")"
	}),
	s({trig = "da", descr = "(da)", priority = -1000, trigEngine = te("w")}, {
		t"daply(", i(1, "frame", {key = "i1"}), t", ", i(2, "variables", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "d_", descr = "(d_)", priority = -1000, trigEngine = te("w")}, {
		t"d_ply(", i(1, "frame", {key = "i1"}), t", ", i(2, "variables", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "ad", descr = "(ad)", priority = -1000, trigEngine = te("w")}, {
		t"adply(", i(1, "array", {key = "i1"}), t", ", i(2, "margin", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "al", descr = "(al)", priority = -1000, trigEngine = te("w")}, {
		t"alply(", i(1, "array", {key = "i1"}), t", ", i(2, "margin", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "aa", descr = "(aa)", priority = -1000, trigEngine = te("w")}, {
		t"aaply(", i(1, "array", {key = "i1"}), t", ", i(2, "margin", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "a_", descr = "(a_)", priority = -1000, trigEngine = te("w")}, {
		t"a_ply(", i(1, "array", {key = "i1"}), t", ", i(2, "margin", {key = "i2"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "ld", descr = "(ld)", priority = -1000, trigEngine = te("w")}, {
		t"ldply(", i(1, "list", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "ll", descr = "(ll)", priority = -1000, trigEngine = te("w")}, {
		t"llply(", i(1, "list", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "la", descr = "(la)", priority = -1000, trigEngine = te("w")}, {
		t"laply(", i(1, "list", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "l_", descr = "(l_)", priority = -1000, trigEngine = te("w")}, {
		t"l_ply(", i(1, "list", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "md", descr = "(md)", priority = -1000, trigEngine = te("w")}, {
		t"mdply(", i(1, "matrix", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "ml", descr = "(ml)", priority = -1000, trigEngine = te("w")}, {
		t"mlply(", i(1, "matrix", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "ma", descr = "(ma)", priority = -1000, trigEngine = te("w")}, {
		t"maply(", i(1, "matrix", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "m_", descr = "(m_)", priority = -1000, trigEngine = te("w")}, {
		t"m_ply(", i(1, "matrix", {key = "i1"}), t", ", i(0, "function", {key = "i0"}), t")"
	}),
	s({trig = "pl", descr = "(pl) \"Plot function\"", priority = -20, trigEngine = te("")}, {
		t"plot(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "ggp", descr = "(ggp) \"ggplot2 plot\"", priority = -20, trigEngine = te("")}, {
		t"ggplot(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t", aes(", i(0, "aesthetics", {key = "i0"}), t"))"
	}),
	s({trig = "img", descr = "(img)", priority = -1000, trigEngine = te("w")}, {
		i(1, "(jpeg,bmp,png,tiff)", {key = "i1"}), t"(filename = \'", i(2, "filename", {key = "i2"}), t"\', width = ", i(3, "", {key = "i3"}), t", height = ", i(4, "", {key = "i4"}), t", unit = \'", i(5, "", {key = "i5"}), t"\')", nl(),
		i(0, "plot", {key = "i0"}), nl(),
		t"dev.off()"
	}),
	s({trig = "fis", descr = "(fis) \"Fisher test\"", priority = -20, trigEngine = te("")}, {
		t"fisher.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "chi", descr = "(chi) \"Chi Squared test\"", priority = -20, trigEngine = te("")}, {
		t"chisq.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "tt", descr = "(tt) \"t-test\"", priority = -20, trigEngine = te("")}, {
		t"t.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "wil", descr = "(wil) \"Wilcox test\"", priority = -20, trigEngine = te("")}, {
		t"wilcox.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "cor", descr = "(cor) \"Correlation test\"", priority = -20, trigEngine = te("")}, {
		t"cor.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "fte", descr = "(fte) \"FTE test\"", priority = -20, trigEngine = te("")}, {
		t"var.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "kvt", descr = "(kvt) \"KV test\"", priority = -20, trigEngine = te("")}, {
		t"kv.test(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t")"
	}),
	s({trig = "setwd", descr = "(setwd) \"Set workingdir\"", priority = -20, trigEngine = te("b")}, {
		t"setwd(\"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"r", 51}, "snip.rv = os.getcwd()", python_globals, args, snip, "", {})}, ""), {key = "i1"}) }) end), t"\")"
	}),
	s({trig = "as", descr = "(as) \"Apply type on variable\"", priority = -20, trigEngine = te("w")}, {
		t"as.", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"r", 52}, "snip.rv = complete(t[1], FIELD_TYPES)", python_globals, args, snip, "", {1}) end, {k"i1"}), t"(", i(2, "", {key = "i2"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t")"
	}),
	s({trig = "is", descr = "(is) \"Test type on variable\"", priority = -20, trigEngine = te("w")}, {
		t"is.", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"r", 53}, "snip.rv = complete(t[1], FIELD_TYPES)", python_globals, args, snip, "", {1}) end, {k"i1"}), t"(", i(2, "", {key = "i2"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t")"
	}),
	s({trig = "eif", descr = "(eif) \"Else-If statement\"", priority = -20, trigEngine = te("")}, {
		t"else if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if .. else\"", priority = -20, trigEngine = te("")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "vec", descr = "(vec)", priority = -20, trigEngine = te("")}, {
		i(1, "var", {key = "i1"}), t" <- c(\"", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, " "), {key = "i0"}) }) end), t"\")"
	}),
})
