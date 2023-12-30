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
	2,
	0,
	0,
	3,
	3,
	1,
	2,
	1,
	2,
	1,
	2,
	2,
	2,
	2,
	5,
	2,
	2,
	3,
	1,
	2,
	2,
	2,
	2,
	5,
	1,
}
ls.add_snippets("vhdl", {
	s({trig = "lib", descr = "(lib)", priority = -1000, trigEngine = te("w")}, {
		t"library ", i(1, "", {key = "i1"}), nl(),
		t"use ", cp(1), t".", i(2, "", {key = "i2"}), nl()
	}),
	s({trig = "libs", descr = "(libs)", priority = -1000, trigEngine = te("w")}, {
		t"library IEEE;", nl(),
		t"use IEEE.std_logic_1164.ALL;", nl(),
		t"use IEEE.numeric_std.ALL;", nl()
	}),
	s({trig = "libx", descr = "(libx)", priority = -1000, trigEngine = te("w")}, {
		t"library UNISIM;", nl(),
		t"use UNISIM.VCOMPONENTS.ALL;", nl()
	}),
	s({trig = "ent", descr = "(ent)", priority = -1000, trigEngine = te("w")}, {
		t"entity ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t" is", nl(),
		t"\tgeneric (", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t);", nl(),
		t"\tport (", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t);", nl(),
		t"end entity ", cp(1), t";", nl()
	}),
	s({trig = "arc", descr = "(arc)", priority = -1000, trigEngine = te("w")}, {
		t"architecture ", i(1, "behav", {key = "i1"}), t" of ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i2"}) }) end), t" is", nl(),
		nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		nl(),
		t"begin", nl(),
		nl(),
		nl(),
		t"end ", cp(1), t";", nl()
	}),
	s({trig = "st", descr = "(st)", priority = -1000, trigEngine = te("w")}, {
		t"signal ", i(1, "", {key = "i1"}), t" : std_logic;"
	}),
	s({trig = "sv", descr = "(sv)", priority = -1000, trigEngine = te("w")}, {
		t"signal ", i(1, "", {key = "i1"}), t" : std_logic_vector (", i(2, "", {key = "i2"}), t" downto 0);"
	}),
	s({trig = "ist", descr = "(ist)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" : in std_logic;"
	}),
	s({trig = "isv", descr = "(isv)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" : in std_logic_vector (", i(2, "", {key = "i2"}), t" downto 0);"
	}),
	s({trig = "ost", descr = "(ost)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" : out std_logic;"
	}),
	s({trig = "osv", descr = "(osv)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" : out std_logic_vector (", i(2, "", {key = "i2"}), t" downto 0);"
	}),
	s({trig = "un", descr = "(un)", priority = -1000, trigEngine = te("w")}, {
		t"signal ", i(1, "", {key = "i1"}), t" : unsigned (", i(2, "", {key = "i2"}), t" downto 0);"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"process (", i(1, "", {key = "i1"}), t")", nl(),
		t"begin", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end process;"
	}),
	s({trig = "prc", descr = "(prc)", priority = -1000, trigEngine = te("w")}, {
		t"process (", i(1, "clk", {key = "i1"}), t")", nl(),
		t"begin", nl(),
		t"\tif rising_edge (", cp(1), t") then", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\tend if;", nl(),
		t"end process;"
	}),
	s({trig = "prcr", descr = "(prcr)", priority = -1000, trigEngine = te("w")}, {
		t"process (", i(1, "clk", {key = "i1"}), t", ", i(2, "nrst", {key = "i2"}), t")", nl(),
		t"begin", nl(),
		t"\tif (", cp(2), t" = \'", i(3, "0", {key = "i3"}), t"\') then", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\telsif rising_edge(", cp(1), t") then", nl(),
		t"\t\t", i(5, "", {key = "i5"}), nl(),
		t"\tend if;", nl(),
		t"end process;"
	}),
	s({trig = "pra", descr = "(pra)", priority = -1000, trigEngine = te("w")}, {
		t"process (", i(1, "all", {key = "i1"}), t")", nl(),
		t"begin", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end process;"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end if;"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"end if;"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elsif ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ca", descr = "(ca)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"end case;"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"when ", i(1, "", {key = "i1"}), t" =>", nl(),
			t"\t", i(2, "", {key = "i2"})
		},
		{
			t"while ", i(1, "", {key = "i1"}), t" loop", nl(),
			t"\t", i(2, "", {key = "i2"}), nl(),
			t"end loop;"
		},
	})),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" ", i(3, "to", {key = "i3"}), t" ", i(4, "", {key = "i4"}), t" loop", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"end loop;"
	}),
	s({trig = "oth", descr = "(oth)", priority = -1000, trigEngine = te("w")}, {
		t"(others => \'", i(1, "0", {key = "i1"}), t"\');"
	}),
})
