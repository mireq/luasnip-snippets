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
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1},
}
ls.add_snippets("fortran", {
	s({trig = "impl", descr = "(impl)", priority = -1000, trigEngine = te("w")}, {
		t"implicit none", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "prog", descr = "(prog)", priority = -1000, trigEngine = te("w")}, {
		t"program ", i(1, "main", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end program ", cp(1)
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", i(1, "modulename", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end module ", cp(1)
	}),
	s({trig = "proc", descr = "(proc)", priority = -1000, trigEngine = te("w")}, {
		t"procedure ", i(1, "name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end procedure ", cp(1)
	}),
	s({trig = "iface", descr = "(iface)", priority = -1000, trigEngine = te("w")}, {
		t"interface ", i(1, "name", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end interface ", cp(1)
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"! \"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"", nl(),
		t"! File: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\')")}, ""), {key = "i2"}) }) end), nl(),
		t"! Author: ", f(function(args, snip) return c_viml("g:snips_author") end), nl(),
		t"! Email: ", f(function(args, snip) return c_viml("g:snips_email") end), nl(),
		t"! Github: ", f(function(args, snip) return c_viml("g:snips_github") end), nl(),
		t"! Description: ", i(1, "", {key = "i1"}), nl(),
		t"! \"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "dox", descr = "(dox)", priority = -1000, trigEngine = te("w")}, {
		t"!> @brief ", i(1, "", {key = "i1"}), nl(),
		t"!!", nl(),
		t"!> ", i(2, "", {key = "i2"}), nl(),
		t"!> @author ", f(function(args, snip) return c_viml("g:snips_author") end), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "doxp", descr = "(doxp)", priority = -1000, trigEngine = te("w")}, {
		t"!> @param[", i(1, "", {key = "i1"}), t"]", i(0, "", {key = "i0"})
	}),
	s({trig = "bool", descr = "(bool)", priority = -1000, trigEngine = te("w")}, {
		t"logical :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		t"integer :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "real", descr = "(real)", priority = -1000, trigEngine = te("w")}, {
		t"real :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "double", descr = "(double)", priority = -1000, trigEngine = te("w")}, {
		t"double precision :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "str", descr = "(str)", priority = -1000, trigEngine = te("w")}, {
		t"character(len=", i(1, "*", {key = "i1"}), t") :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "type", descr = "(type)", priority = -1000, trigEngine = te("w")}, {
		t"type(", i(1, "name", {key = "i1"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end type"
	}),
	s({trig = "const", descr = "(const)", priority = -1000, trigEngine = te("w")}, {
		i(1, "type", {key = "i1"}), t", parameter :: ", i(2, "", {key = "i2"}), t" = ", i(0, "", {key = "i0"})
	}),
	s({trig = "arr", descr = "(arr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "type", {key = "i1"}), t", ", i(2, "allocatable, ", {key = "i2"}), t"dimension(", i(3, ":", {key = "i3"}), t") :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "intent", descr = "(intent)", priority = -1000, trigEngine = te("w")}, {
		i(1, "type", {key = "i1"}), t", intent(inout) :: ", i(0, "", {key = "i0"})
	}),
	s({trig = "/", descr = "(/)", priority = -1000, trigEngine = te("w")}, {
		t"(/ ", i(1, "", {key = "i1"}), t" /) ", i(2, ",&", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") then", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end if"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"select case (", i(1, "expr", {key = "i1"}), t")", nl(),
		t"\tcase (", i(2, "", {key = "i2"}), t")", nl(),
		t"\tcase default", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"end select ", i(0, "", {key = "i0"})
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do ", i(1, "i", {key = "i1"}), t" = ", i(2, "start", {key = "i2"}), t", ", i(3, "end", {key = "i3"}), t", ", i(4, "incr", {key = "i4"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end do"
	}),
	s({trig = "dow", descr = "(dow)", priority = -1000, trigEngine = te("w")}, {
		t"do while (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end do"
	}),
	s({trig = "sub", descr = "(sub)", priority = -1000, trigEngine = te("w")}, {
		t"subroutine ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end subroutine ", cp(1)
	}),
	s({trig = "func", descr = "(func)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") result(", i(3, "", {key = "i3"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end function ", cp(1)
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"write(*,*) ", i(0, "", {key = "i0"})
	}),
	s({trig = "dpr", descr = "(dpr)", priority = -1000, trigEngine = te("w")}, {
		t"write(*,*) \'", i(1, "", {key = "i1"}), t" = \', ", cp(1)
	}),
	s({trig = "read", descr = "(read)", priority = -1000, trigEngine = te("w")}, {
		t"read(unit = ", i(1, "fp", {key = "i1"}), t", file = ", i(2, "filename", {key = "i2"}), t", iostat = ", i(3, "ierr", {key = "i3"}), t") ", i(0, "", {key = "i0"})
	}),
	s({trig = "write", descr = "(write)", priority = -1000, trigEngine = te("w")}, {
		t"write(unit = ", i(1, "fp", {key = "i1"}), t", file = ", i(2, "filename", {key = "i2"}), t", iostat = ", i(3, "ierr", {key = "i3"}), t") ", i(0, "", {key = "i0"})
	}),
	s({trig = "open", descr = "(open)", priority = -1000, trigEngine = te("w")}, {
		t"open(unit = ", i(1, "fp", {key = "i1"}), t", file = ", i(2, "filename", {key = "i2"}), t", status = ", i(3, "unknown", {key = "i3"}), t", iostat = ", i(4, "ierr", {key = "i4"}), t") ", i(0, "", {key = "i0"})
	}),
	s({trig = "close", descr = "(close)", priority = -1000, trigEngine = te("w")}, {
		t"close(unit = ", i(1, "fp", {key = "i1"}), t") ", i(0, "", {key = "i0"})
	}),
})
