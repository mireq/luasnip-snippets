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
	5,
	9,
	9,
	11,
}
ls.add_snippets("bib", {
	s({trig = "online", descr = "(online) \"Online resource\"", priority = -50, trigEngine = te("b")}, {
		t"@online{", i(1, "name", {key = "i1"}), t",", nl(),
		t"\tauthor={", i(2, "author", {key = "i2"}), t"},", nl(),
		t"\ttitle={", i(3, "title", {key = "i3"}), t"},", nl(),
		t"\tdate={", i(4, "date", {key = "i4"}), t"},", nl(),
		t"\turl={", i(5, "url", {key = "i5"}), t"}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "article", descr = "(article) \"Article reference\"", priority = -50, trigEngine = te("b")}, {
		t"@article{", i(1, "name", {key = "i1"}), t",", nl(),
		t"\tauthor={", i(2, "author", {key = "i2"}), t"},", nl(),
		t"\ttitle={", i(3, "title", {key = "i3"}), t"},", nl(),
		t"\tjournaltitle={", i(4, "journal", {key = "i4"}), t"},", nl(),
		t"\tvolume={", i(5, "NN", {key = "i5"}), t"},", nl(),
		t"\tnumber={", i(6, "NN", {key = "i6"}), t"},", nl(),
		t"\tyear={", i(7, "YYYY", {key = "i7"}), t"},", nl(),
		t"\tpages={", i(8, "NN", {key = "i8"}), t"--", i(9, "NN", {key = "i9"}), t"}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "book", descr = "(book) \"Book reference\"", priority = -50, trigEngine = te("b")}, {
		t"@book{", i(1, "name", {key = "i1"}), t",", nl(),
		t"\tauthor={", i(2, "author", {key = "i2"}), t"},", nl(),
		t"\ttitle={", i(3, "title", {key = "i3"}), t"},", nl(),
		t"\tsubtitle={", i(4, "subtitle", {key = "i4"}), t"},", nl(),
		t"\tyear={", i(5, "YYYY", {key = "i5"}), t"},", nl(),
		t"\tlocation={", i(6, "somewhere", {key = "i6"}), t"},", nl(),
		t"\tpublisher={", i(7, "publisher", {key = "i7"}), t"},", nl(),
		t"\tpages={", i(8, "NN", {key = "i8"}), t"--", i(9, "NN", {key = "i9"}), t"}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "inb", descr = "(inb) \"In Book reference\"", priority = -50, trigEngine = te("b")}, {
		t"@inbook{", i(1, "name", {key = "i1"}), t",", nl(),
		t"\tauthor={", i(2, "author", {key = "i2"}), t"},", nl(),
		t"\ttitle={", i(3, "title", {key = "i3"}), t"},", nl(),
		t"\tsubtitle={", i(4, "subtitle", {key = "i4"}), t"},", nl(),
		t"\tbooktitle={", i(5, "book", {key = "i5"}), t"},", nl(),
		t"\teditor={", i(6, "editor", {key = "i6"}), t"},", nl(),
		t"\tyear={", i(7, "YYYY", {key = "i7"}), t"},", nl(),
		t"\tlocation={", i(8, "somewhere", {key = "i8"}), t"},", nl(),
		t"\tpublisher={", i(9, "publisher", {key = "i9"}), t"},", nl(),
		t"\tpages={", i(10, "NN", {key = "i10"}), t"--", i(11, "NN", {key = "i11"}), t"}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
})
