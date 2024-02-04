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
	{0},
	{1},
	{1},
	{1, 2},
	{1},
	{1, 2},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3},
	{0},
	{0},
	{0, 1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7, 8, 9},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	{1, 2, 3, 4, 5, 6, 7, 8, 9},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
	{1, 2, 3},
	{1, 2},
	{0, 1},
	{1, 2, 3, 4, 5, 6},
	{0, 1, 2},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{1},
	{1},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1},
	{0},
	{1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1},
	{1, 2},
	{0, 2, 4},
	{0, 1, 2, 4, 5, 6},
	{},
	{0, 1},
}

local python_globals = {
	[[def printf_expand_args(snip):
	"""
	This will look how many placeholders printf has and adds the separated commas
	at the end.
	"""
	
	# now add so many "," as much as the amount of placeholders
	amount_placeholders = snip.tabstops[1].current_text.count("%")

	output = ""

	# Add the amount of tabstops
	for placeholder_index in range(3, amount_placeholders + 3):
		output += f", ${placeholder_index}"
	
	# convert them into tabstops
	snip.expand_anon(output)
]]
, 	[[def split_line(text):
	import textwrap
	lines = textwrap.wrap(text, 78 - 19)
	output = list()
	for line in lines:
		output.append('*' + ' '*19 + line)
	snip_line = snip.tabstops[4].end[0]
	snip.buffer.append(output, snip_line + 1)
	del snip.buffer[snip_line]

def get_args(arglist):
	args = [arg.strip() for arg in arglist.split(',') if arg]
	return args]]
}


ls.add_snippets("c", {
	s({trig = "main", descr = "(main) \"main() (main)\"", priority = 0, trigEngine = te("!")}, {
		t"int main(int argc, char *argv[])", nl(),
		t"{", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"\treturn 0;", nl(),
		t"}"
	}),
	s({trig = "mainn", descr = "(mainn)", priority = -1000, trigEngine = te("w")}, {
		t"int main(void)", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "inc", descr = "(inc) \"#include <> (inc)\"", priority = 0, trigEngine = te("!")}, {
		t"#include <", i(1, ".h", {key = "i1"}), t">"
	}),
	s({trig = "Inc", descr = "(Inc) \"#include local header (Inc)\"", priority = 0, trigEngine = te("!")}, {
		t"#include \"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"c", 4}, "snip.rv = snip.basename + \'.h\'", python_globals, args, snip, "", am[4])}, ""), {key = "i1"}) }) end), t"\""
	}),
	s({trig = "ndef", descr = "(ndef)", priority = -1000, trigEngine = te("w")}, {
		t"#ifndef ", cp(1), nl(),
		t"#define ", i(1, "SYMBOL", {key = "i1"}), t" ", i(2, "value", {key = "i2"}), nl(),
		t"#endif /* ifndef ", cp(1), t" */"
	}),
	s({trig = "def", descr = "(def) \"#define ...\"", priority = -50, trigEngine = te("")}, {
		t"#define ", i(1, "", {key = "i1"})
	}),
	s({trig = "ifdef", descr = "(ifdef)", priority = -1000, trigEngine = te("w")}, {
		t"#ifdef ", i(1, "FOO", {key = "i1"}), nl(),
		t"\t", i(2, "#define ", {key = "i2"}), nl(),
		t"#endif"
	}),
	s({trig = "#if", descr = "(#if) \"#if #endif\"", priority = -50, trigEngine = te("b")}, {
		t"#if ", i(1, "0", {key = "i1"}), nl(),
		f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"#endif"
	}),
	s({trig = "once", descr = "(once) \"Include header once only guard\"", priority = -50, trigEngine = te("")}, {
		t"#ifndef ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"c", 9}, "\nif not snip.c:\n\timport random, string\n\tname = re.sub(r\'[^A-Za-z0-9]+\',\'_\', snip.fn).upper()\n\trand = \'\'.join(random.sample(string.ascii_letters+string.digits, 8))\n\tsnip.rv = (\'%s_%s\' % (name,rand)).upper()\nelse:\n\tsnip.rv = snip.c", python_globals, args, snip, "", am[9]), " snip.c"}, ""), {key = "i1"}) }) end), nl(),
		t"#define ", cp(1), nl(),
		nl(),
		f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		nl(),
		t"#endif /* end of include guard: ", cp(1), t" */"
	}),
	s({trig = "nocxx", descr = "(nocxx)", priority = -1000, trigEngine = te("w")}, {
		t"#ifdef __cplusplus", nl(),
		t"extern \"C\" {", nl(),
		t"#endif", nl(),
		nl(),
		i(0, "", {key = "i0"}), nl(),
		nl(),
		t"#ifdef __cplusplus", nl(),
		t"} /* extern \"C\" */", nl(),
		t"#endif"
	}),
	s({trig = "if", descr = "(if) \"if .. (if)\"", priority = 0, trigEngine = te("!")}, {
		t"if (", i(1, "/* condition */", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if .. else\"", priority = 0, trigEngine = te("")}, {
		t"if (", i(1, "/* condition */", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"}", nl(),
		t"else {", nl(),
		nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "elif", descr = "(elif) \"else if\"", priority = 0, trigEngine = te("")}, {
		t"else if (", i(1, "/* condition */", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifi", descr = "(ifi)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "true", {key = "i1"}), t") ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "t", descr = "(t) Ternary: `condition ? true : false`", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch (", i(1, "/* variable */", {key = "i1"}), t") {", nl(),
		t"\tcase ", i(2, "/* variable case */", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t", i(4, "break;", {key = "i4"}), i(5, "", {key = "i5"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "switchndef", descr = "(switchndef)", priority = -1000, trigEngine = te("w")}, {
		t"switch (", i(1, "/* variable */", {key = "i1"}), t") {", nl(),
		t"\tcase ", i(2, "/* variable case */", {key = "i2"}), t":", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t", i(4, "break;", {key = "i4"}), i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "/* variable case */", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\t", i(3, "break;", {key = "i3"})
	}),
	s({trig = "ret", descr = "(ret)", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "ex", descr = "(ex)", priority = -1000, trigEngine = te("w")}, {
		t"exit(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "for", descr = "(for) \"for int loop (fori)\"", priority = 0, trigEngine = te("!")}, {
		t"for (", i(4, "size_t", {key = "i4"}), t" ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", d(3, function(args) return sn(nil, {t"++", cp(2)}) end, {}, {key = "i3"}), t") {", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr)", priority = -1000, trigEngine = te("w")}, {
		t"for (int ", i(1, "i", {key = "i1"}), t" = ", i(2, "0", {key = "i2"}), t"; ", d(3, function(args) return sn(nil, {cp(1), t" < 10"}) end, {}, {key = "i3"}), t"; ", cp(1), i(4, "++", {key = "i4"}), t") {", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "1", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "wht", descr = "(wht)", priority = -1000, trigEngine = te("w")}, {
		t"while (true) {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} while (", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "fun", descr = "(fun) \"function\"", priority = -50, trigEngine = te("b")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fun0", descr = "(fun0)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"()", nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "dfun0", descr = "(dfun0)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(1, "Brief function description here", {key = "i1"}), nl(),
		t" *", nl(),
		t" *  ", i(2, "Detailed description of the function", {key = "i2"}), nl(),
		t" *", nl(),
		t" * \\return ", i(3, "Return parameter description", {key = "i3"}), nl(),
		t" */", nl(),
		i(4, "void", {key = "i4"}), t" ", i(5, "function_name", {key = "i5"}), t"()", nl(),
		t"{", nl(),
		t"\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "fun1", descr = "(fun1)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "dfun1", descr = "(dfun1)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(1, "Brief function description here", {key = "i1"}), nl(),
		t" *", nl(),
		t" *  ", i(2, "Detailed description of the function", {key = "i2"}), nl(),
		t" *", nl(),
		t" * \\param ", cp(3), t" ", i(4, "Parameter description", {key = "i4"}), nl(),
		t" * \\return ", i(5, "Return parameter description", {key = "i5"}), nl(),
		t" */", nl(),
		i(6, "void", {key = "i6"}), t" ", i(7, "function_name", {key = "i7"}), t"(", i(8, "Type", {key = "i8"}), t" ", i(3, "Parameter", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(9, "", {key = "i9"}), nl(),
		t"}"
	}),
	s({trig = "fun2", descr = "(fun2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t", ", i(5, "Type", {key = "i5"}), t" ", i(6, "Parameter", {key = "i6"}), t")", nl(),
		t"{", nl(),
		t"\t", i(7, "", {key = "i7"}), nl(),
		t"}"
	}),
	s({trig = "dfun2", descr = "(dfun2)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(1, "Brief function description here", {key = "i1"}), nl(),
		t" *", nl(),
		t" *  ", i(2, "Detailed description of the function", {key = "i2"}), nl(),
		t" *", nl(),
		t" * \\param ", cp(3), t" ", i(4, "Parameter description", {key = "i4"}), nl(),
		t" * \\param ", cp(5), t" ", i(6, "Parameter description", {key = "i6"}), nl(),
		t" * \\return ", i(7, "Return parameter description", {key = "i7"}), nl(),
		t" */", nl(),
		i(8, "void", {key = "i8"}), t" ", i(9, "function_name", {key = "i9"}), t"(", i(10, "Type", {key = "i10"}), t" ", i(3, "Parameter", {key = "i3"}), t", ", i(11, "Type", {key = "i11"}), t" ", i(5, "Parameter", {key = "i5"}), t")", nl(),
		t"{", nl(),
		t"\t", i(12, "", {key = "i12"}), nl(),
		t"}"
	}),
	s({trig = "fun3", descr = "(fun3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t", ", i(5, "Type", {key = "i5"}), t" ", i(6, "Parameter", {key = "i6"}), t", ", i(7, "Type", {key = "i7"}), t" ", i(8, "Parameter", {key = "i8"}), t")", nl(),
		t"{", nl(),
		t"\t", i(9, "", {key = "i9"}), nl(),
		t"}"
	}),
	s({trig = "dfun3", descr = "(dfun3)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(1, "Brief function description here", {key = "i1"}), nl(),
		t" *", nl(),
		t" *  ", i(2, "Detailed description of the function", {key = "i2"}), nl(),
		t" *", nl(),
		t" * \\param ", cp(3), t" ", i(4, "Parameter description", {key = "i4"}), nl(),
		t" * \\param ", cp(5), t" ", i(6, "Parameter description", {key = "i6"}), nl(),
		t" * \\param ", cp(7), t" ", i(8, "Parameter description", {key = "i8"}), nl(),
		t" * \\return ", i(9, "Return parameter description", {key = "i9"}), nl(),
		t" */", nl(),
		i(10, "void", {key = "i10"}), t" ", i(11, "function_name", {key = "i11"}), t"(", i(12, "Type", {key = "i12"}), t" ", i(3, "Parameter", {key = "i3"}), t", ", i(13, "Type", {key = "i13"}), t" ", i(5, "Parameter", {key = "i5"}), t", ", i(14, "Type", {key = "i14"}), t" ", i(7, "Parameter", {key = "i7"}), t")", nl(),
		t"{", nl(),
		t"\t", i(15, "", {key = "i15"}), nl(),
		t"}"
	}),
	s({trig = "fund", descr = "(fund) \"function declaration\"", priority = -50, trigEngine = te("b")}, {
		i(1, "void", {key = "i1"}), t" ", i(2, "function_name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "td", descr = "(td)", priority = -1000, trigEngine = te("w")}, {
		t"typedef ", i(1, "int", {key = "i1"}), t" ", i(2, "MyCustomType", {key = "i2"}), t";"
	}),
	s({trig = "st", descr = "(st) \"struct\"", priority = -50, trigEngine = te("")}, {
		t"struct ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"c", 38}, "snip.rv = (snip.basename or \"name\") + \"_t\"", python_globals, args, snip, "", am[38])}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "/* data */", {key = "i0"}), nl(),
		t"};"
	}),
	s({trig = "tds", descr = "(tds)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\struct ", cp(2), nl(),
		t" *  \\brief ", i(5, "Brief struct description", {key = "i5"}), nl(),
		t" *", nl(),
		t" *  ", i(6, "Detailed description", {key = "i6"}), nl(),
		t" */", nl(),
		t"typedef struct ", d(2, function(args) return sn(nil, {t"_", cp(1), t" "}) end, {}, {key = "i2"}), t"{", nl(),
		t"\tm_", i(3, "Data", {key = "i3"}), t" /*!< ", i(4, "Description", {key = "i4"}), t" */", nl(),
		t"} ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1_t\', \'name\')")}, ""), {key = "i1"}) }) end), t";", nl()
	}),
	s({trig = "enum", descr = "(enum)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\enum ", cp(1), nl(),
		t" *", nl(),
		t" *  ", i(2, "Detailed description", {key = "i2"}), nl(),
		t" */", nl(),
		t"enum ", i(1, "name", {key = "i1"}), t" { ", i(0, "", {key = "i0"}), t" };"
	}),
	s({trig = "tde", descr = "(tde)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\enum ", cp(2), nl(),
		t" *", nl(),
		t" *  ", i(4, "Detailed description", {key = "i4"}), nl(),
		t" */", nl(),
		t"typedef enum {", nl(),
		t"\t", i(1, "Data", {key = "i1"}), t" /*!< ", i(3, "Description", {key = "i3"}), t" */", nl(),
		t"} ", i(2, "foo", {key = "i2"}), t";"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "%s", {key = "i1"}), t"\\n\"", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "fpr", descr = "(fpr)", priority = -1000, trigEngine = te("w")}, {
		t"fprintf(", i(1, "stderr", {key = "i1"}), t", \"", i(2, "%s", {key = "i2"}), t"\\n\"", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "prd", descr = "(prd)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %d\\n\", ", cp(1), t");"
	}),
	s({trig = "prf", descr = "(prf)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %f\\n\", ", cp(1), t");"
	}),
	s({trig = "prx", descr = "(prx)", priority = -1000, trigEngine = te("w")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t" = %", i(2, "", {key = "i2"}), t"\\n\", ", cp(1), t");"
	}),
	s({trig = "warn", descr = "(warn)", priority = -1000, trigEngine = te("w")}, {
		t"warn(\"", i(1, "%s", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "warnx", descr = "(warnx)", priority = -1000, trigEngine = te("w")}, {
		t"warnx(\"", i(1, "%s", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "err", descr = "(err)", priority = -1000, trigEngine = te("w")}, {
		t"err(", i(1, "1", {key = "i1"}), t", \"", i(2, "%s", {key = "i2"}), t"\"", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "errx", descr = "(errx)", priority = -1000, trigEngine = te("w")}, {
		t"errx(", i(1, "1", {key = "i1"}), t", \"", i(2, "%s", {key = "i2"}), t"\"", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "getopt", descr = "(getopt)", priority = -1000, trigEngine = te("w")}, {
		t"int choice;", nl(),
		t"while (1)", nl(),
		t"{", nl(),
		t"\tstatic struct option long_options[] =", nl(),
		t"\t{", nl(),
		t"\t\t/* Use flags like so:", nl(),
		t"\t\t{\"verbose\",\tno_argument,\t&verbose_flag, \'V\'}*/", nl(),
		t"\t\t/* Argument styles: no_argument, required_argument, optional_argument */", nl(),
		t"\t\t{\"version\", no_argument,\t0,\t\'v\'},", nl(),
		t"\t\t{\"help\",\tno_argument,\t0,\t\'h\'},", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t\t{0,0,0,0}", nl(),
		t"\t};", nl(),
		nl(),
		t"\tint option_index = 0;", nl(),
		nl(),
		t"\t/* Argument parameters:", nl(),
		t"\t\tno_argument: \" \"", nl(),
		t"\t\trequired_argument: \":\"", nl(),
		t"\t\toptional_argument: \"::\" */", nl(),
		nl(),
		t"\tchoice = getopt_long( argc, argv, \"vh\",", nl(),
		t"\t\t\t\tlong_options, &option_index);", nl(),
		nl(),
		t"\tif (choice == -1)", nl(),
		t"\t\tbreak;", nl(),
		nl(),
		t"\tswitch( choice )", nl(),
		t"\t{", nl(),
		t"\t\tcase \'v\':", nl(),
		t"\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t\tbreak;", nl(),
		nl(),
		t"\t\tcase \'h\':", nl(),
		t"\t\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\t\tbreak;", nl(),
		nl(),
		t"\t\tcase \'?\':", nl(),
		t"\t\t\t/* getopt_long will have already printed an error */", nl(),
		t"\t\t\tbreak;", nl(),
		nl(),
		t"\t\tdefault:", nl(),
		t"\t\t\t/* Not sure how to get here... */", nl(),
		t"\t\t\treturn EXIT_FAILURE;", nl(),
		t"\t}", nl(),
		t"}", nl(),
		nl(),
		t"/* Deal with non-option arguments here */", nl(),
		t"if ( optind < argc )", nl(),
		t"{", nl(),
		t"\twhile ( optind < argc )", nl(),
		t"\t{", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "asr", descr = "(asr)", priority = -1000, trigEngine = te("w")}, {
		t"assert(", i(1, "", {key = "i1"}), t");", nl()
	}),
	s({trig = "anl", descr = "(anl)", priority = -1000, trigEngine = te("w")}, {
		t"assert(", i(1, "ptr", {key = "i1"}), t" != NULL);", nl()
	}),
	s({trig = "mlc", descr = "(mlc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ptr", {key = "i1"}), t" = (", i(2, "type", {key = "i2"}), t"*) malloc(sizeof(", cp(2), t"));", nl()
	}),
	s({trig = "clc", descr = "(clc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ptr", {key = "i1"}), t" = (", i(2, "type", {key = "i2"}), t"*) calloc(", i(3, "size", {key = "i3"}), t", sizeof(", cp(2), t"));", nl()
	}),
	s({trig = "rlc", descr = "(rlc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ptr", {key = "i1"}), t" = realloc(", cp(1), t", ", i(2, "size", {key = "i2"}), t" * sizeof(", i(3, "type", {key = "i3"}), t"));", nl()
	}),
	s({trig = "mlcd", descr = "(mlcd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "type", {key = "i1"}), t" ", i(2, "ptr", {key = "i2"}), t" = (", cp(1), t"*) malloc(sizeof(", cp(1), t"));", nl()
	}),
	s({trig = "clcd", descr = "(clcd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "type", {key = "i1"}), t" ", i(2, "ptr", {key = "i2"}), t" = (", cp(1), t"*) calloc(", i(3, "size", {key = "i3"}), t", sizeof(", cp(1), t"));", nl()
	}),
	s({trig = "fre", descr = "(fre)", priority = -1000, trigEngine = te("w")}, {
		t"free(", i(1, "ptr", {key = "i1"}), t");", nl()
	}),
	s({trig = "todo", descr = "(todo)", priority = -1000, trigEngine = te("w")}, {
		t"/*! TODO: ", i(1, "Todo description here", {key = "i1"}), nl(),
		t" *  \\todo ", cp(1), nl(),
		t" */"
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "", {key = "i1"}), t"]", nl()
	}),
	s({trig = "asm", descr = "(asm)", priority = -1000, trigEngine = te("w")}, {
		t"__asm__ __volatile__(", nl(),
		t"\"", i(0, "", {key = "i0"}), t"\\n\\t\"", nl(),
		t":", nl(),
		t":", nl(),
		t");"
	}),
	s({trig = "#ifndef", descr = "(#ifndef) \"#ifndef ... #define ... #endif\"", priority = -50, trigEngine = te("")}, {
		t"#ifndef ", tr(1, "([A-Za-z0-9_]+).*", "$1"), nl(),
		t"#define ", i(1, "SYMBOL", {key = "i1"}), t" ", i(2, "value", {key = "i2"}), nl(),
		t"#endif /* ifndef ", cp(1), t" */"
	}),
	s({trig = "mark", descr = "(mark) \"#pragma mark (mark)\"", priority = -50, trigEngine = te("")}, {
		t"#if 0", nl(),
		i(1, {"#pragma mark -", ""}, {key = "i1"}), t"#pragma mark ", i(2, "", {key = "i2"}), nl(),
		t"#endif", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "fori", descr = "(fori) \"for int loop (fori)\"", priority = -50, trigEngine = te("")}, {
		t"for (", i(4, "int", {key = "i4"}), t" ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", d(3, function(args) return sn(nil, {t"++", cp(2)}) end, {}, {key = "i3"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fora", descr = "(fora) \"for-loop\"", priority = -50, trigEngine = te("b")}, {
		t"for (", i(1, "var", {key = "i1"}), t"; ", i(2, "condition", {key = "i2"}), t"; ", f(function(args, snip) return c_py({"c", 66}, "\nif len(t[1]) > 0:\n\tsnip.rv = t[1].split(\'=\')[0].split()[-1]\n", python_globals, args, snip, "", am[66]) end, ae(am[66])), t"++) {", nl(),
		t"\t", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} /* for (", cp(1), t"; ", cp(2), t"; ", f(function(args, snip) return c_py({"c", 66}, "if len(t[1]) > 0: snip.rv = t[1].split(\'=\')[0].split()[-1]", python_globals, args, snip, "", am[66]) end, ae(am[66])), t"++) */"
	}),
	s({trig = "fprintf", descr = "(fprintf) \"fprintf ...\"", priority = -50, trigEngine = te("")}, {
		t"fprintf(", i(1, "stderr", {key = "i1"}), t", \"", i(2, "%s", {key = "i2"}), t"\\n\"", tr(2, "([^%]|%%)*(%.)?.*", "(?2:, :\\);)"), i(3, "", {key = "i3"}), tr(2, "([^%]|%%)*(%.)?.*", "(?2:\\);)")
	}),
	s({trig = "eli", descr = "(eli) \"else if .. (eli)\"", priority = -50, trigEngine = te("")}, {
		t"else if (", i(1, "/* condition */", {key = "i1"}), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "printf", descr = "(printf) \"printf with auto-expand args\"", priority = -50, trigEngine = te("wr")}, {
		t"printf(\"", i(1, "", {key = "i1"}), t"\\n\"", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "head", descr = "(head) \"File Header\"", priority = -50, trigEngine = te("b")}, {
		t"/******************************************************************************", nl(),
		t"* File:             ", f(function(args, snip) return c_py({"c", 70}, "snip.rv = fn", python_globals, args, snip, "", am[70]) end, ae(am[70])), nl(),
		t"*", nl(),
		t"* Author:           ", i(1, "", {key = "i2"}), t"  ", nl(),
		t"* Created:          ", f(function(args, snip) return c_shell("date +%m/%d/%y") end), t" ", nl(),
		t"* Description:      ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i4"}) }) end), nl(),
		t"*****************************************************************************/", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "func", descr = "(func) \"Function Header\"", priority = -50, trigEngine = te("")}, {
		t"/******************************************************************************", nl(),
		t"* Function:         ", cp(1), nl(),
		t"* Description:      ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i4"}) }) end), nl(),
		t"* Where:", f(function(args, snip) return c_py({"c", 71}, "\nsnip.rv = \"\"\nsnip >> 2\n\nargs = get_args(t[2])\nif args:\n\tfor arg in args:\n\t\tsnip.rv += \'\\n\' + \'*\' + \' \'*19 + arg + \' - TODO\'\nsnip << 2\n", python_globals, args, snip, "", am[71]) end, ae(am[71])), nl(),
		t"* Return:           ", i(4, "", {key = "i5"}), nl(),
		t"* Error:            ", i(5, "", {key = "i6"}), nl(),
		t"*****************************************************************************/", nl(),
		i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t"){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "hdr", descr = "(hdr) \"header\"", priority = 0, trigEngine = te("")}, {
		t"/*", nl(),
		t" * =====================================================================", nl(),
		t" *        Version:  1.0", nl(),
		t" *        Created:  ", f(function(args, snip) return c_viml("strftime(\"%x\")") end, {}), t" ", f(function(args, snip) return c_viml("strftime(\"%X\")") end, {}), nl(),
		t" *         Author:  ", f(function(args, snip) return c_viml("g:snips_author") end, {}), nl(),
		t" *        Company:  ", f(function(args, snip) return c_viml("g:snips_company") end, {}), nl(),
		t" * =====================================================================", nl(),
		t" */"
	}),
	s({trig = "Once", descr = "(Once) \"Simple include header guard\"", priority = 0, trigEngine = te("")}, {
		t"#ifndef  ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("toupper(Filename(\'\', \'UNTITLED\').\'_H\')")}, ""), {key = "i1"}) }) end), nl(),
		t"#define  ", cp(1), nl(),
		nl(),
		i(0, "/* code */", {key = "i0"}), nl(),
		nl(),
		t"#endif   /* ----- #ifndef ", cp(1), t"  ----- */"
	}),
})
