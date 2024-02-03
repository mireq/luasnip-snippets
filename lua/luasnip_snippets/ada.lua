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
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
}

local python_globals = {
	[[
def ada_case(word):
	out = word[0].upper()
	for i in range(1, len(word)):
		if word[i] == '-':
			out = out + '.'
		elif word[i - 1] == '_' or word[i - 1] == '-':
			out = out + word[i].upper()
		else:
			out = out + word[i]
	return out
]]
}


ls.add_snippets("ada", {
	s({trig = "wi", descr = "(wi) \"with\"", priority = -50, trigEngine = te("")}, {
		t"with ", i(1, "", {key = "i1"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "pac", descr = "(pac) \"package\"", priority = -50, trigEngine = te("")}, {
		t"package ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ada", 2}, "snip.rv = ada_case(snip.basename)", python_globals, args, snip, "", am[2])}, ""), {key = "i1"}) }) end), t" is", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "pacb", descr = "(pacb) \"package body\"", priority = -50, trigEngine = te("")}, {
		t"package body ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"ada", 3}, "snip.rv = ada_case(snip.basename)", python_globals, args, snip, "", am[3])}, ""), {key = "i1"}) }) end), t" is", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "ent", descr = "(ent) \"entry ... when\"", priority = -50, trigEngine = te("")}, {
		t"entry ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") when ", i(3, "", {key = "i3"}), t" is", nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "task", descr = "(task) \"task\"", priority = -50, trigEngine = te("")}, {
		t"task ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\tentry ", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "taskb", descr = "(taskb) \"task body\"", priority = -50, trigEngine = te("")}, {
		t"task body ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "acc", descr = "(acc) \"accept\"", priority = -50, trigEngine = te("")}, {
		t"accept ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "prot", descr = "(prot) \"protected type\"", priority = -50, trigEngine = te("")}, {
		t"protected type ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") is", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "prob", descr = "(prob) \"protected body\"", priority = -50, trigEngine = te("")}, {
		t"protected body ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "gen", descr = "(gen) \"generic type\"", priority = -50, trigEngine = te("")}, {
		t"generic", nl(),
		t"\ttype ", i(1, "", {key = "i1"}), t" is ", i(2, "", {key = "i2"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "ty", descr = "(ty) \"type\"", priority = -50, trigEngine = te("")}, {
		t"type ", i(1, "", {key = "i1"}), t" is ", i(2, "", {key = "i2"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "tyd", descr = "(tyd) \"type with default value\"", priority = -50, trigEngine = te("")}, {
		t"type ", i(1, "", {key = "i1"}), t" is ", i(2, "", {key = "i2"}), nl(),
		t"\twith Default_Value => ", i(3, "", {key = "i3"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "subty", descr = "(subty) \"subtype\"", priority = -50, trigEngine = te("")}, {
		t"subtype ", i(1, "", {key = "i1"}), t" is ", i(2, "", {key = "i2"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "dec", descr = "(dec) \"declare block\"", priority = -50, trigEngine = te("")}, {
		t"declare", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end;"
	}),
	s({trig = "decn", descr = "(decn) \"declare named block\"", priority = -50, trigEngine = te("")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"declare", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "ifex", descr = "(ifex) \"if expression\"", priority = -50, trigEngine = te("")}, {
		t"if ", i(1, "", {key = "i1"}), t" then ", i(2, "", {key = "i2"}), t" else ", i(0, "", {key = "i0"})
	}),
	s({trig = "casex", descr = "(casex) \"case expression\"", priority = -50, trigEngine = te("")}, {
		t"case ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\twhen ", i(2, "", {key = "i2"}), t" => ", i(3, "", {key = "i3"}), t",", i(0, "", {key = "i0"})
	}),
	s({trig = "fora", descr = "(fora) \"for all\"", priority = -50, trigEngine = te("")}, {
		t"for all ", i(1, "", {key = "i1"}), t" ", i(2, "in", {key = "i2"}), t" ", i(3, "", {key = "i3"}), t" => ", i(0, "", {key = "i0"})
	}),
	s({trig = "fors", descr = "(fors) \"for some\"", priority = -50, trigEngine = te("")}, {
		t"for some ", i(1, "", {key = "i1"}), t" ", i(2, "in", {key = "i2"}), t" ", i(3, "", {key = "i3"}), t" => ", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if) \"if\"", priority = -50, trigEngine = te("")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end if;"
	}),
	s({trig = "ife", descr = "(ife) \"if ... else\"", priority = -50, trigEngine = te("")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end if;"
	}),
	s({trig = "el", descr = "(el) \"else\"", priority = -50, trigEngine = te("")}, {
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "eif", descr = "(eif) \"elsif\"", priority = -50, trigEngine = te("")}, {
		t"elsif ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "wh", descr = "(wh) \"while\"", priority = -50, trigEngine = te("")}, {
		t"while ", i(1, "", {key = "i1"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
	s({trig = "nwh", descr = "(nwh) \"named while\"", priority = -50, trigEngine = te("")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"while ", i(2, "", {key = "i2"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop ", cp(1), t";"
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = -50, trigEngine = te("")}, {
		t"for ", i(1, "I", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
	s({trig = "fore", descr = "(fore) \"for each\"", priority = -50, trigEngine = te("")}, {
		t"for ", i(1, "", {key = "i1"}), t" of ", i(2, "", {key = "i2"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
	s({trig = "nfor", descr = "(nfor) \"named for\"", priority = -50, trigEngine = te("")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"for ", i(2, "I", {key = "i2"}), t" in ", i(3, "", {key = "i3"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop ", cp(1), t";"
	}),
	s({trig = "nfore", descr = "(nfore) \"named for each\"", priority = -50, trigEngine = te("")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"for ", i(2, "", {key = "i2"}), t" of ", i(3, "", {key = "i3"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop ", cp(1), t";"
	}),
	s({trig = "proc", descr = "(proc) \"procedure\"", priority = -50, trigEngine = te("")}, {
		t"procedure ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") is", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "procd", descr = "(procd) \"procedure declaration\"", priority = -50, trigEngine = te("")}, {
		t"procedure ", i(1, "", {key = "i1"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "fun", descr = "(fun) \"function\"", priority = -50, trigEngine = te("")}, {
		t"function ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") return ", i(3, "", {key = "i3"}), t" is", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "fune", descr = "(fune) \"expression function\"", priority = -50, trigEngine = te("")}, {
		t"function ", i(1, "", {key = "i1"}), t" return ", i(2, "", {key = "i2"}), t" is", nl(),
		t"\t(", i(3, "", {key = "i3"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "fund", descr = "(fund) \"function declaration\"", priority = -50, trigEngine = te("")}, {
		t"function ", i(1, "", {key = "i1"}), t" return ", i(2, "", {key = "i2"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "ret", descr = "(ret) \"extended return\"", priority = -50, trigEngine = te("")}, {
		t"return ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end return;"
	}),
	s({trig = "rec", descr = "(rec) \"record\"", priority = -50, trigEngine = te("")}, {
		t"record", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end record;"
	}),
	s({trig = "case", descr = "(case) \"case\"", priority = -50, trigEngine = te("")}, {
		t"case ", i(1, "", {key = "i1"}), t" is", nl(),
		t"\twhen ", i(2, "", {key = "i2"}), t" => ", i(3, "", {key = "i3"}), t";", i(0, "", {key = "i0"}), nl(),
		t"end case;"
	}),
	s({trig = "whe", descr = "(whe) \"when\"", priority = -50, trigEngine = te("")}, {
		t"when ", i(1, "", {key = "i1"}), t" => ", i(2, "", {key = "i2"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "wheo", descr = "(wheo) \"when others\"", priority = -50, trigEngine = te("")}, {
		t"when others => ", i(1, "", {key = "i1"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "lo", descr = "(lo) \"loop\"", priority = -50, trigEngine = te("")}, {
		t"loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
	s({trig = "nlo", descr = "(nlo) \"named loop\"", priority = -50, trigEngine = te("")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop ", cp(1), t";"
	}),
	s({trig = "ex", descr = "(ex) \"exit when\"", priority = -50, trigEngine = te("")}, {
		t"exit when ", i(1, "", {key = "i1"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "put", descr = "(put) \"Ada.Text_IO.Put\"", priority = -50, trigEngine = te("")}, {
		t"Ada.Text_IO.Put(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "putl", descr = "(putl) \"Ada.Text_IO.Put_Line\"", priority = -50, trigEngine = te("")}, {
		t"Ada.Text_IO.Put_Line(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "get", descr = "(get) \"Ada.Text_IO.Get\"", priority = -50, trigEngine = te("")}, {
		t"Ada.Text_IO.Get(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "getl", descr = "(getl) \"Ada.Text_IO.Get_Line\"", priority = -50, trigEngine = te("")}, {
		t"Ada.Text_IO.Get_Line(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "newline", descr = "(newline) \"Ada.Text_IO.New_Line\"", priority = -50, trigEngine = te("")}, {
		t"Ada.Text_IO.New_Line(", i(1, "1", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
})
