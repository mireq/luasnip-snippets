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
	1,
	3,
	3,
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 3}},
	2,
	2,
	1,
	2,
	2,
	3,
	0,
}
ls.add_snippets("sql", {
	s({trig = "tbl", descr = "(tbl)", priority = -1000, trigEngine = te("w")}, {
		t"create table ", i(1, "table", {key = "i1"}), t" (", nl(),
		t"\t", i(0, "columns", {key = "i0"}), nl(),
		t");"
	}),
	s({trig = "col", descr = "(col)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t"\t", i(2, "type", {key = "i2"}), t"\t", i(3, "default \'\'", {key = "i3"}), t"\t", i(0, "not null", {key = "i0"})
	}),
	s({trig = "ccol", descr = "(ccol)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t"\tvarchar2(", i(2, "size", {key = "i2"}), t")\t", i(3, "default \'\'", {key = "i3"}), t"\t", i(0, "not null", {key = "i0"})
	}),
	s({trig = "ncol", descr = "(ncol)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t"\tnumber\t", i(2, "default 0", {key = "i2"}), t"\t", i(0, "not null", {key = "i0"})
	}),
	s({trig = "dcol", descr = "(dcol)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t"\tdate\t", i(2, "default sysdate", {key = "i2"}), t"\t", i(0, "not null", {key = "i0"})
	}),
	s({trig = "ind", descr = "(ind)", priority = -1000, trigEngine = te("w")}, {
		t"create index ", cp(1), t"_", cp(2), t" on ", i(1, "table", {key = "i1"}), t"(", i(2, "column", {key = "i2"}), t");"
	}),
	s({trig = "uind", descr = "(uind)", priority = -1000, trigEngine = te("w")}, {
		t"create unique index ", i(1, "name", {key = "i1"}), t" on ", i(2, "table", {key = "i2"}), t"(", i(0, "column", {key = "i0"}), t");"
	}),
	s({trig = "tblcom", descr = "(tblcom)", priority = -1000, trigEngine = te("w")}, {
		t"comment on table ", i(1, "table", {key = "i1"}), t" is \'", i(0, "comment", {key = "i0"}), t"\';"
	}),
	s({trig = "colcom", descr = "(colcom)", priority = -1000, trigEngine = te("w")}, {
		t"comment on column ", i(1, "table", {key = "i1"}), t".", i(2, "column", {key = "i2"}), t" is \'", i(0, "comment", {key = "i0"}), t"\';"
	}),
	s({trig = "addcol", descr = "(addcol)", priority = -1000, trigEngine = te("w")}, {
		t"alter table ", i(1, "table", {key = "i1"}), t" add (", i(2, "column", {key = "i2"}), t" ", i(0, "type", {key = "i0"}), t");"
	}),
	s({trig = "seq", descr = "(seq)", priority = -1000, trigEngine = te("w")}, {
		t"create sequence ", i(1, "name", {key = "i1"}), t" start with ", i(2, "1", {key = "i2"}), t" increment by ", i(3, "1", {key = "i3"}), t" minvalue ", i(0, "1", {key = "i0"}), t";"
	}),
	s({trig = "s*", descr = "(s*)", priority = -1000, trigEngine = te("w")}, {
		t"select * from ", i(0, "table", {key = "i0"})
	}),
})
