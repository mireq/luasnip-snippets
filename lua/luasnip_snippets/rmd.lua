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
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{1},
	{1, 2},
	{1},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{},
	{},
	{},
	{1, 2},
	{1},
	{1},
	{1, 2, 3},
	{1},
	{1},
}
ls.add_snippets("rmd", {
	s({trig = "%%", descr = "(%%)", priority = -1000, trigEngine = te("w")}, {
		t"% ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("Filename(\'\', \'title\')")}, ""), {key = "i1"}) }) end), nl(),
		t"% ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"% ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%d %B %Y\")")}, ""), {key = "i3"}) }) end), nl(),
		nl(),
		i(4, "", {key = "i4"})
	}),
	s({trig = "%%*", descr = "(%%*)", priority = -1000, trigEngine = te("w")}, {
		t"% ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("Filename(\'\', @*)")}, ""), {key = "i1"}) }) end), nl(),
		t"% ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"% ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%d %b %Y\")")}, ""), {key = "i3"}) }) end), nl(),
		nl(),
		i(4, "", {key = "i4"}), nl()
	}),
	s({trig = "req", descr = "(req)", priority = -1000, trigEngine = te("w")}, {
		t"require(", i(1, "", {key = "i1"}), t", quietly = TRUE)"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ( ", i(1, "", {key = "i1"}), t" )", nl(),
		t"{", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"{", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}", nl()
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		i(1, "funname", {key = "i1"}), t" <- \t\t\t# ", i(2, "", {key = "i2"}), nl(),
		t"\tfunction", nl(),
		t"(", nl(),
		t" \t", i(3, "", {key = "i3"}), nl(),
		t")", nl(),
		t"{", nl(),
		t"  ", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "re", descr = "(re)", priority = -1000, trigEngine = te("w")}, {
		t"repeat{", nl(),
		t"  ", i(2, "", {key = "i2"}), nl(),
		t"  if(", i(1, "", {key = "i1"}), t") break", nl(),
		t"}", nl()
	}),
	s({trig = "ma", descr = "(ma)", priority = -1000, trigEngine = te("w")}, {
		t"matrix(NA, nrow = ", i(1, "", {key = "i1"}), t", ncol = ", i(2, "", {key = "i2"}), t")", nl()
	}),
	s({trig = "df", descr = "(df)", priority = -1000, trigEngine = te("w")}, {
		t"data.frame(", i(1, "", {key = "i1"}), t", header = TRUE)", nl()
	}),
	s({trig = "cmdarg", descr = "(cmdarg)", priority = -1000, trigEngine = te("w")}, {
		t"args <- commandArgs(TRUE)", nl(),
		t"if (length(args) == 0)", nl(),
		t"    stop(\"Please give ", i(1, "", {key = "i1"}), t"!\")", nl(),
		t"if (!all(file.exists(args)))", nl(),
		t"     stop(\"Couln\'t find input files!\")", nl()
	}),
	s({trig = "getopt", descr = "(getopt)", priority = -1000, trigEngine = te("w")}, {
		t"require(\'getopt\', quietly = TRUE)", nl(),
		t"opt_spec <- matrix(c(", nl(),
		t"\t\t\t\t\'help\',     \'h\', 0, \"logical\", \t\"Getting help\",", nl(),
		t"\t\t\t\t\'file\',     \'f\', 1, \"character\",\"File to process\"", nl(),
		t"                ), ncol = 5, byrow = TRUE)", nl(),
		t"opt <- getopt(spec = opt_spec)", nl(),
		t"if ( !is.null(opt$help) || is.null(commandArgs()) )   {", nl(),
		t"    cat(getopt(spec = opt_spec, usage = TRUE, command = \"yourCmd\"))", nl(),
		t"    q(status=0)", nl(),
		t"}", nl(),
		t"# some inital value", nl(),
		t"if ( is.null(opt$???) )    { opt$??? <- ??? }", nl()
	}),
	s({trig = "optparse", descr = "(optparse)", priority = -1000, trigEngine = te("w")}, {
		t"require(\"optparse\", quietly = TRUE)", nl(),
		t"option_list <-", nl(),
		t"    list(make_option(c(\"-n\", \"--add_numbers\"), action=\"store_true\", default=FALSE,", nl(),
		t"                     help=\"Print line number at the beginning of each line [default]\")", nl(),
		t"         )", nl(),
		t"parser <- OptionParser(usage = \"%prog [options] file\", option_list=option_list)", nl(),
		t"arguments <- parse_args(parser, positional_arguments = TRUE)", nl(),
		t"opt <- arguments$options", nl(),
		nl(),
		t"if(length(arguments$args) != 1) {", nl(),
		t"    cat(\"Incorrect number of required positional arguments\\n\\n\")", nl(),
		t"    print_help(parser)", nl(),
		t"    stop()", nl(),
		t"} else {", nl(),
		t"    file <- arguments$args", nl(),
		t"}", nl(),
		nl(),
		t"if( file.access(file) == -1) {", nl(),
		t"    stop(sprintf(\"Specified file ( %s ) does not exist\", file))", nl(),
		t"} else {", nl(),
		t"    file_text <- readLines(file)", nl(),
		t"}", nl()
	}),
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env Rscript", nl()
	}),
	s({trig = "debug", descr = "(debug)", priority = -1000, trigEngine = te("w")}, {
		t"# Development & Debugging, don\'t forget to uncomment afterwards!", nl(),
		t"#--------------------------------------------------------------------------------", nl(),
		t"#setwd(\"~/Projekte/", i(1, "", {key = "i1"}), t"\")", nl(),
		t"#opt <- list(", i(2, "", {key = "i2"}), nl(),
		t"#            )", nl(),
		t"#--------------------------------------------------------------------------------", nl(),
		nl()
	}),
	s({trig = "#===", descr = "(#===)", priority = -1000, trigEngine = te("w")}, {
		t"#", f(function(args, snip) return c_viml("repeat(\'=\', strlen(getline(line(\".\") - 1)))") end), nl(),
		i(1, "", {key = "i1"})
	}),
	s({trig = "#---", descr = "(#---)", priority = -1000, trigEngine = te("w")}, {
		t"#", f(function(args, snip) return c_viml("repeat(\'-\', strlen(getline(line(\".\") - 1)))") end), nl(),
		i(1, "", {key = "i1"}), nl()
	}),
	s({trig = "r", descr = "(r)", priority = -1000, trigEngine = te("w")}, {
		t"```{r ", i(1, "chung_tag", {key = "i1"}), t", echo = FALSE ", i(2, "options", {key = "i2"}), t"}", nl(),
		i(3, "", {key = "i3"}), nl(),
		t"```"
	}),
	s({trig = "ri", descr = "(ri)", priority = -1000, trigEngine = te("w")}, {
		t"`{r ", i(1, "", {key = "i1"}), t"}`", nl()
	}),
	s({trig = "copt", descr = "(copt)", priority = -1000, trigEngine = te("w")}, {
		t"``` {r setup, echo = FALSE}", nl(),
		t"\topts_chunk$set(fig.path=\'../figures/", i(1, "", {key = "i1"}), t"\', cache.path=\'../cache/-\'", nl(),
		t"\t, fig.align=\'center\', fig.show=\'hold\', par=TRUE)\t", nl(),
		t"\t#opts_knit$set(upload.fun = imgur_upload) # upload images", nl(),
		t"```", nl(),
		nl()
	}),
})
