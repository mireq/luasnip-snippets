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
	{1},
	{1},
	{1, 2, 3},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{0, 1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{},
	{},
	{},
	{},
	{},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	{0, 1},
	{0},
	{1},
	{1},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{0, 1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5, 6},
	{0, 1},
	{1, 2, 3},
	{1, 2, 3},
	{1},
	{0, 1, 2, 3},
	{1, 4},
	{1, 4},
	{},
	{},
	{},
	{},
	{},
	{},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{},
	{0},
	{0, 1, 2, 3, 4, 5, 6},
	{1},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1, 2, 3},
}

local python_globals = {
	[[
def write_docstring_args(arglist, snip):
	args = str(arglist).split(',')

	if len(args) > 1:
		c = 0
		for arg in args:
			if c == 0:
				snip.rv += arg
				c = 1
			else:
				snip += '*       : %s' % arg.strip()
	else:
		snip.rv = args[0]

]]
}


ls.add_snippets("cpp", {
	s({trig = "mainn", descr = "(mainn)", priority = -1000, trigEngine = te("w")}, {
		t"int main()", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\treturn 0;", nl(),
		t"}"
	}),
	s({trig = "incc", descr = "(incc)", priority = -1000, trigEngine = te("w")}, {
		t"#include <", i(1, "iostream", {key = "i1"}), t">"
	}),
	s({trig = "binc", descr = "(binc)", priority = -1000, trigEngine = te("w")}, {
		t"#include <boost/", i(1, "shared_ptr", {key = "i1"}), t".hpp>"
	}),
	s({trig = "array", descr = "(array)", priority = -1000, trigEngine = te("w")}, {
		t"std::array<", i(1, "T", {key = "i1"}), t", ", i(2, "N", {key = "i2"}), t"> ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "vector", descr = "(vector) \"std::vector (v)\"", priority = -49, trigEngine = te("")}, {
		t"std::vector<", i(1, "char", {key = "i1"}), t"> v", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "deque", descr = "(deque)", priority = -1000, trigEngine = te("w")}, {
		t"std::deque<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "flist", descr = "(flist)", priority = -1000, trigEngine = te("w")}, {
		t"std::forward_list<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "list", descr = "(list)", priority = -1000, trigEngine = te("w")}, {
		t"std::list<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "set", descr = "(set)", priority = -1000, trigEngine = te("w")}, {
		t"std::set<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "map", descr = "(map) \"std::map (map)\"", priority = -49, trigEngine = te("")}, {
		t"std::map<", i(1, "key", {key = "i1"}), t", ", i(2, "value", {key = "i2"}), t"> map", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "mset", descr = "(mset)", priority = -1000, trigEngine = te("w")}, {
		t"std::multiset<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "mmap", descr = "(mmap)", priority = -1000, trigEngine = te("w")}, {
		t"std::multimap<", i(1, "Key", {key = "i1"}), t", ", i(2, "T", {key = "i2"}), t"> ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "uset", descr = "(uset)", priority = -1000, trigEngine = te("w")}, {
		t"std::unordered_set<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "umap", descr = "(umap)", priority = -1000, trigEngine = te("w")}, {
		t"std::unordered_map<", i(1, "Key", {key = "i1"}), t", ", i(2, "T", {key = "i2"}), t"> ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "umset", descr = "(umset)", priority = -1000, trigEngine = te("w")}, {
		t"std::unordered_multiset<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "ummap", descr = "(ummap)", priority = -1000, trigEngine = te("w")}, {
		t"std::unordered_multimap<", i(1, "Key", {key = "i1"}), t", ", i(2, "T", {key = "i2"}), t"> ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "stack", descr = "(stack)", priority = -1000, trigEngine = te("w")}, {
		t"std::stack<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "queue", descr = "(queue)", priority = -1000, trigEngine = te("w")}, {
		t"std::queue<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "pqueue", descr = "(pqueue)", priority = -1000, trigEngine = te("w")}, {
		t"std::priority_queue<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "msp", descr = "(msp)", priority = -1000, trigEngine = te("w")}, {
		t"std::shared_ptr<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t" = std::make_shared<", cp(1), t">(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "amsp", descr = "(amsp)", priority = -1000, trigEngine = te("w")}, {
		t"auto ", i(1, "", {key = "i1"}), t" = std::make_shared<", i(2, "T", {key = "i2"}), t">(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "mup", descr = "(mup)", priority = -1000, trigEngine = te("w")}, {
		t"std::unique_ptr<", i(1, "T", {key = "i1"}), t"> ", i(2, "", {key = "i2"}), t" = std::make_unique<", cp(1), t">(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "amup", descr = "(amup)", priority = -1000, trigEngine = te("w")}, {
		t"auto ", i(1, "", {key = "i1"}), t" = std::make_unique<", i(2, "T", {key = "i2"}), t">(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "pri", descr = "(pri)", priority = -1000, trigEngine = te("w")}, {
		t"private"
	}),
	s({trig = "pro", descr = "(pro)", priority = -1000, trigEngine = te("w")}, {
		t"protected"
	}),
	s({trig = "pub", descr = "(pub)", priority = -1000, trigEngine = te("w")}, {
		t"public"
	}),
	s({trig = "fr", descr = "(fr)", priority = -1000, trigEngine = te("w")}, {
		t"friend"
	}),
	s({trig = "mu", descr = "(mu)", priority = -1000, trigEngine = te("w")}, {
		t"mutable"
	}),
	s({trig = "cl", descr = "(cl) \"class .. (class)\"", priority = -49, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"cpp", 29}, "snip.rv = snip.basename or \"name\"", python_globals, args, snip, "", am[29])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"public:", nl(),
		t"\t", tr(1, "(\\w+).*", "$1"), t" (", i(2, "arguments", {key = "i2"}), t");", nl(),
		t"\tvirtual ~", tr(1, "(\\w+).*", "$1"), t" ();", nl(),
		nl(),
		t"private:", nl(),
		t"\t", i(0, "/* data */", {key = "i0"}), nl(),
		t"};"
	}),
	s({trig = "mfun", descr = "(mfun) \"Member function\"", priority = 0, trigEngine = te("")}, {
		i(4, "void", {key = "i4"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'ClassName\')")}, " "), {key = "i1"}) }) end), t"::", i(2, "memberFunction", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "return", {key = "i0"}), t";", nl(),
		t"}"
	}),
	s({trig = "dmfun0", descr = "(dmfun0)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(4, "Brief function description here", {key = "i4"}), nl(),
		t" *", nl(),
		t" *  ", i(5, "Detailed description", {key = "i5"}), nl(),
		t" *", nl(),
		t" * \\return ", i(6, "Return parameter description", {key = "i6"}), nl(),
		t" */", nl(),
		i(3, "void", {key = "i3"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'ClassName\')")}, " "), {key = "i1"}) }) end), t"::", i(2, "memberFunction", {key = "i2"}), t"() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "dmfun1", descr = "(dmfun1)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(6, "Brief function description here", {key = "i6"}), nl(),
		t" *", nl(),
		t" *  ", i(7, "Detailed description", {key = "i7"}), nl(),
		t" *", nl(),
		t" * \\param ", cp(4), t" ", i(8, "Parameter description", {key = "i8"}), nl(),
		t" * \\return ", i(9, "Return parameter description", {key = "i9"}), nl(),
		t" */", nl(),
		i(5, "void", {key = "i5"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'ClassName\')")}, " "), {key = "i1"}) }) end), t"::", i(2, "memberFunction", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "dmfun2", descr = "(dmfun2)", priority = -1000, trigEngine = te("w")}, {
		t"/*! \\brief ", i(8, "Brief function description here", {key = "i8"}), nl(),
		t" *", nl(),
		t" *  ", i(9, "Detailed description", {key = "i9"}), nl(),
		t" *", nl(),
		t" * \\param ", cp(4), t" ", i(10, "Parameter description", {key = "i10"}), nl(),
		t" * \\param ", cp(6), t" ", i(11, "Parameter description", {key = "i11"}), nl(),
		t" * \\return ", i(12, "Return parameter description", {key = "i12"}), nl(),
		t" */", nl(),
		i(7, "void", {key = "i7"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'ClassName\')")}, " "), {key = "i1"}) }) end), t"::", i(2, "memberFunction", {key = "i2"}), t"(", i(3, "Type", {key = "i3"}), t" ", i(4, "Parameter", {key = "i4"}), t",", i(5, "Type", {key = "i5"}), t" ", i(6, "Parameter", {key = "i6"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ns", descr = "(ns) \"namespace .. (namespace)\"", priority = 0, trigEngine = te("!")}, {
		t"namespace", tr(1, ".+", " "), d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"cpp", 34}, "snip.rv = snip.basename or \"name\"", python_globals, args, snip, "", am[34])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", tr(1, ".+", " \\/* "), cp(1), tr(1, ".+", " *\\/")
	}),
	s({trig = "ans", descr = "(ans)", priority = -1000, trigEngine = te("w")}, {
		t"namespace {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cout", descr = "(cout)", priority = -1000, trigEngine = te("w")}, {
		t"std::cout << ", i(1, "", {key = "i1"}), t" << std::endl;"
	}),
	s({trig = "cin", descr = "(cin)", priority = -1000, trigEngine = te("w")}, {
		t"std::cin >> ", i(1, "", {key = "i1"}), t";"
	}),
	s({trig = "sca", descr = "(sca)", priority = -1000, trigEngine = te("w")}, {
		t"static_cast<", i(1, "unsigned", {key = "i1"}), t">(", i(2, "expr", {key = "i2"}), t")", i(3, "", {key = "i3"})
	}),
	s({trig = "dca", descr = "(dca)", priority = -1000, trigEngine = te("w")}, {
		t"dynamic_cast<", i(1, "unsigned", {key = "i1"}), t">(", i(2, "expr", {key = "i2"}), t")", i(3, "", {key = "i3"})
	}),
	s({trig = "rca", descr = "(rca)", priority = -1000, trigEngine = te("w")}, {
		t"reinterpret_cast<", i(1, "unsigned", {key = "i1"}), t">(", i(2, "expr", {key = "i2"}), t")", i(3, "", {key = "i3"})
	}),
	s({trig = "cca", descr = "(cca)", priority = -1000, trigEngine = te("w")}, {
		t"const_cast<", i(1, "unsigned", {key = "i1"}), t">(", i(2, "expr", {key = "i2"}), t")", i(3, "", {key = "i3"})
	}),
	s({trig = "fori", descr = "(fori)", priority = 0, trigEngine = te("")}, {
		t"for (int ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "/* code */", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "auto", {key = "i1"}), t" ", i(2, "i", {key = "i2"}), t" : ", i(3, "container", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "iter", descr = "(iter)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "std::vector", {key = "i1"}), t"<", i(2, "type", {key = "i2"}), t">::", i(3, "const_iterator", {key = "i3"}), t" ", i(4, "i", {key = "i4"}), t" = ", i(5, "container", {key = "i5"}), t".begin(); ", cp(4), t" != ", cp(5), t".end(); ++", cp(4), t") {", nl(),
		t"\t", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "itera", descr = "(itera) \"Auto iterator\"", priority = 0, trigEngine = te("")}, {
		t"for (auto ", i(1, "i", {key = "i1"}), t" = ", cp(1), t".begin(); ", cp(1), t" != ", cp(1), t".end(); ++", cp(1), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({"std::cout << *", args[1], " << std::endl;"}, "\t"), {key = "i0"}) }) end, {k"i1"}), nl(),
		t"}"
	}),
	s({trig = "ld", descr = "(ld)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "", {key = "i1"}), t"](", i(2, "", {key = "i2"}), t"){", i(3, "", {key = "i3"}), t"};"
	}),
	s({trig = "lld", descr = "(lld)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "", {key = "i1"}), t"](", i(2, "", {key = "i2"}), t"){", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"};"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		nl(),
		t"}catch(", i(1, "", {key = "i1"}), t") {", nl(),
		nl(),
		t"}"
	}),
	s({trig = "af", descr = "(af) auto function", priority = -1000, trigEngine = te("w")}, {
		t"auto ", i(1, "name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") -> ", i(3, "void", {key = "i3"}), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"};"
	}),
	s({trig = "transform", descr = "(transform) \"ranges::views::transform\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "${2:std::}${3:ranges::}views::", {key = "i1"}), t"transform(", i(2, "", {key = "i4"}), t")"
	}),
	s({trig = "filter", descr = "(filter) \"ranges::views::filter\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "${2:std::}${3:ranges::}views::", {key = "i1"}), t"filter(", i(2, "", {key = "i4"}), t")"
	}),
	s({trig = "r", descr = "(r) \"ranges::\"", priority = -1000, trigEngine = te("w")}, {
		t"ranges::"
	}),
	s({trig = "rv", descr = "(rv) \"ranges::views::\"", priority = -1000, trigEngine = te("w")}, {
		t"ranges::views::"
	}),
	s({trig = "ra", descr = "(ra) \"ranges::actions::\"", priority = -1000, trigEngine = te("w")}, {
		t"ranges::actions::"
	}),
	s({trig = "sr", descr = "(sr) \"std::ranges::\"", priority = -1000, trigEngine = te("w")}, {
		t"std::ranges::"
	}),
	s({trig = "sv", descr = "(sv) \"std::views::\"", priority = -1000, trigEngine = te("w")}, {
		t"std::views::"
	}),
	s({trig = "gtemain", descr = "(gtemain) \"GTest:add main\"", priority = -1000, trigEngine = te("w")}, {
		t"int main(int argc, char **argv) {", nl(),
		t"\ttesting::InitGoogleTest(&argc, argv);", nl(),
		t"\treturn RUN_ALL_TESTS();", nl(),
		t"}"
	}),
	s({trig = "gtetest", descr = "(gtetest) \"GTest:add test\"", priority = -1000, trigEngine = te("w")}, {
		t"TEST(", i(1, "SuiteName", {key = "i1"}), t", ", i(2, "TestName", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "gtefix", descr = "(gtefix) \"GTest:add fixture\"", priority = -1000, trigEngine = te("w")}, {
		t"TEST_F(", i(1, "SuiteName", {key = "i1"}), t", ", i(2, "TestName", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "gtepar", descr = "(gtepar) \"GTest:add parameterized test\"", priority = -1000, trigEngine = te("w")}, {
		t"TEST_P(", i(1, "SuiteName", {key = "i1"}), t", ", i(2, "TestName", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "gteparins", descr = "(gteparins) \"GTest:instantiate parameterized test\"", priority = -1000, trigEngine = te("w")}, {
		t"INSTANTIATE_TEST_SUITE_P(", i(1, "InstantiationName", {key = "i1"}), t", ", i(2, "SuiteName", {key = "i2"}), t", ", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "ponce", descr = "(ponce) \"#pragma once include guard\"", priority = -49, trigEngine = te("")}, {
		t"#pragma once", nl()
	}),
	s({trig = "main", descr = "(main)", priority = -49, trigEngine = te("")}, {
		t"int main(int argc, char *argv[])", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\treturn 0;", nl(),
		t"}"
	}),
	s({trig = "forc", descr = "(forc) \"general for loop (for)\"", priority = -49, trigEngine = te("")}, {
		t"for (", i(6, "auto", {key = "i6"}), t" ", i(1, "i", {key = "i1"}), t" = ", i(2, "v.begin()", {key = "i2"}), t"; ", f(function(args, snip) return c_py({"cpp", 64}, "import re; snip.rv = re.split(\"[^\\w]\",t[1])[-1]", python_globals, args, snip, "", am[64]) end, ae(am[64])), t" ", i(4, "!=", {key = "i4"}), t" ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_py({"cpp", 64}, "m = re.search(r\'^(?:(.*)(\\.|->)begin\\(\\)|((?:std|boost)::)?begin\\((.*)\\))$\', t[2]); snip.rv = (((m.group(3) if m.group(3) else \"\") + \"end(\" + m.group(4) + \")\") if m.group(4) else (m.group(1) + m.group(2) + \"end()\")) if m else \"\"", python_globals, args, snip, "", am[64])}, ""), {key = "i3"}) }) end), t"; ", d(5, function(args, snip) return sn(nil, { i(1, jt({"++", c_py({"cpp", 64}, "snip.rv = t[1].split(\" \")[-1]", python_globals, args, snip, "", am[64])}, ""), {key = "i5"}) }) end), t") {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "beginend", descr = "(beginend) \"$1.begin(), $1.end() (beginend)\"", priority = -49, trigEngine = te("")}, {
		i(1, "v", {key = "i1"}), tr(1, "^.*?(-)?(>)?$", "(?2::(?1:>:.))"), t"begin(), ", cp(1), tr(1, "^.*?(-)?(>)?$", "(?2::(?1:>:.))"), t"end()"
	}),
	s({trig = "nsa", descr = "(nsa) \"namespace alias\"", priority = -49, trigEngine = te("")}, {
		t"namespace ", i(1, "alias", {key = "i1"}), t" = ", i(2, "namespace", {key = "i2"}), t";"
	}),
	s({trig = "using", descr = "(using) \"using directive/using declaration/type alias\"", priority = -49, trigEngine = te("")}, {
		t"using ", i(1, "namespace", {key = "i1"}), f(function(args, snip) return c_py({"cpp", 67}, "snip.rv = \' \' if t[1] == \'namespace\' else \' = \' if t[1] != \'\' else \'\'", python_globals, args, snip, "", am[67]) end, ae(am[67])), i(2, "name", {key = "i2"}), t";"
	}),
	s({trig = "readfile", descr = "(readfile) \"read file (readF)\"", priority = -49, trigEngine = te("")}, {
		t"std::vector<char> v;", nl(),
		t"if (FILE *fp = fopen(", i(1, "\"filename\"", {key = "i1"}), t", \"r\"))", nl(),
		t"{", nl(),
		t"\tchar buf[1024];", nl(),
		t"\twhile(size_t len = fread(buf, 1, sizeof(buf), fp))", nl(),
		t"\t\tv.insert(v.end(), buf, buf + len);", nl(),
		t"\tfclose(fp);", nl(),
		t"}"
	}),
	s({trig = "tp", descr = "(tp) \"template <typename ..> (template)\"", priority = -49, trigEngine = te("")}, {
		t"template <typename ", i(1, "_InputIter", {key = "i1"}), t">"
	}),
	s({trig = "cla", descr = "(cla) \"An entire .h generator\"", priority = -49, trigEngine = te("b")}, {
		t"#ifndef ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(\'$1_H\',\'ClassName\'),\'.*\',\'\\U&\\E\',\'\')")}, ""), {key = "i2"}) }) end), nl(),
		t"#define ", cp(2), nl(),
		nl(),
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(vim_snippets#Filename(\'$1\',\'ClassName\'),\'^.\',\'\\u&\',\'\'), \'_\\(\\w\\)\', \'\\u\\1\', \'g\')")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"private:", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		nl(),
		t"public:", nl(),
		t"\t", cp(1), t"();", nl(),
		t"\tvirtual ~", cp(1), t"();", nl(),
		t"};", nl(),
		nl(),
		t"#endif /* ", cp(2), t" */"
	}),
	s({trig = "fnc", descr = "(fnc) \"Basic c++ doxygen function template\"", priority = -49, trigEngine = te("b")}, {
		t"/**", nl(),
		t"* @brief: ", i(4, "brief", {key = "i4"}), nl(),
		t"*", nl(),
		t"* @param: ", f(function(args, snip) return c_py({"cpp", 71}, "write_docstring_args(t[3],snip)", python_globals, args, snip, "", am[71]) end, ae(am[71])), nl(),
		t"*", nl(),
		t"* @return: ", f(function(args, snip) return c_py({"cpp", 71}, "snip.rv = t[1]", python_globals, args, snip, "", am[71]) end, ae(am[71])), nl(),
		t"*/", nl(),
		i(1, "ReturnType", {key = "i1"}), t" ", i(2, "FunctionName", {key = "i2"}), t"(", i(3, "param", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "FunctionBody", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "boost_test", descr = "(boost_test) \"Boost test module\"", priority = -49, trigEngine = te("b")}, {
		t"#define BOOST_TEST_MODULE ", i(1, "TestModuleName", {key = "i1"}), nl(),
		t"#include <boost/test/included/unit_test.hpp>", nl(),
		nl(),
		t"BOOST_AUTO_TEST_CASE(", i(2, "TestCaseName", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "TestDefinition", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "boost_suite", descr = "(boost_suite) \"Boost test suite module\"", priority = -49, trigEngine = te("b")}, {
		t"#define BOOST_TEST_MODULE ", i(1, "TestModuleName", {key = "i1"}), nl(),
		t"#include <boost/test/included/unit_test.hpp>", nl(),
		nl(),
		t"BOOST_AUTO_TEST_SUITE(", i(2, "SuiteName", {key = "i2"}), t")", nl(),
		nl(),
		t"BOOST_AUTO_TEST_CASE(", i(3, "TestCaseName", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "TestDefinition", {key = "i0"}), nl(),
		t"}", nl(),
		nl(),
		t"BOOST_AUTO_TEST_SUITE_END()", nl()
	}),
	s({trig = "boost_test_fixture", descr = "(boost_test_fixture) \"Boost test module with fixture\"", priority = -49, trigEngine = te("b")}, {
		t"#define BOOST_TEST_MODULE ", i(1, "TestModuleName", {key = "i1"}), nl(),
		t"#include <boost/test/included/unit_test.hpp>", nl(),
		nl(),
		t"struct ", i(2, "FixtureName", {key = "i2"}), t" {", nl(),
		t"\t", cp(2), t"() {}", nl(),
		t"\tvirtual ~", cp(2), t"() {}", nl(),
		t"\t/* define members here */", nl(),
		t"};", nl(),
		nl(),
		t"BOOST_FIXTURE_TEST_CASE(", i(3, "SuiteName", {key = "i3"}), t", ", cp(2), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "TestDefinition", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "boost_suite_fixture", descr = "(boost_suite_fixture) \"Boost test suite with fixture\"", priority = -49, trigEngine = te("b")}, {
		t"#define BOOST_TEST_MODULE ", i(1, "TestModuleName", {key = "i1"}), nl(),
		t"#include <boost/test/included/unit_test.hpp>", nl(),
		nl(),
		t"struct ", i(2, "FixtureName", {key = "i2"}), t" {", nl(),
		t"\t", cp(2), t"() {}", nl(),
		t"\tvirtual ~", cp(2), t"() {}", nl(),
		t"\t/* define members here */", nl(),
		t"};", nl(),
		nl(),
		t"BOOST_FIXTURE_TEST_SUITE(", i(3, "SuiteName", {key = "i3"}), t", ", cp(2), t")", nl(),
		nl(),
		t"BOOST_AUTO_TEST_CASE(", i(4, "TestCaseName", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "TestDefinition", {key = "i0"}), nl(),
		t"}", nl(),
		nl(),
		t"BOOST_AUTO_TEST_SUITE_END()", nl()
	}),
	s({trig = "class", descr = "(class) \"class\"", priority = 0, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, ""), {key = "i1"}) }) end), i(2, "", {key = "i2"}), nl(),
		t"{", nl(),
		t"public:", nl(),
		t"\t", cp(1), t"();", nl(),
		t"\t~", cp(1), t"();", nl(),
		t"private:", nl(),
		t"\t", i(0, "/* data */", {key = "i0"}), nl(),
		t"}; /* -----  end of class ", cp(1), t"  ----- */"
	}),
	s({trig = "QObject", descr = "(QObject) \"QObject\"", priority = 0, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, ""), {key = "i1"}) }) end), t": public ", i(2, "QObject", {key = "i2"}), nl(),
		t"{", nl(),
		t"Q_OBJECT", nl(),
		t"public:", nl(),
		t"\t", cp(1), t"(", i(3, "", {key = "i3"}), t"QObject *parent = 0);", nl(),
		t"\t~", cp(1), t"();", nl(),
		t"private:", nl(),
		t"\t", i(0, "/* data */", {key = "i0"}), nl(),
		t"}; /* -----  end of class ", cp(1), t"  ----- */"
	}),
	s({trig = "QWidget", descr = "(QWidget) \"QWidget\"", priority = 0, trigEngine = te("")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, ""), {key = "i1"}) }) end), t": public ", i(2, "QWidget", {key = "i2"}), nl(),
		t"{", nl(),
		t"Q_OBJECT", nl(),
		t"public:", nl(),
		t"\t", cp(1), t"(", i(3, "", {key = "i3"}), t"QWidget *parent = 0);", nl(),
		t"\t~", cp(1), t"();", nl(),
		t"private:", nl(),
		t"\t", i(0, "/* data */", {key = "i0"}), nl(),
		t"}; /* -----  end of class ", cp(1), t"  ----- */"
	}),
	s({trig = "uiDec", descr = "(uiDec) \"Ui Declaration\"", priority = 0, trigEngine = te("")}, {
		t"#include <QtGui/", cp(2), t">", nl(),
		nl(),
		t"namespace Ui {", nl(),
		t"\tclass ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, "\t"), {key = "i1"}) }) end), t";", nl(),
		t"}", nl(),
		nl(),
		t"class ", cp(1), t": public ", i(2, "QWidget", {key = "i2"}), nl(),
		t"{", nl(),
		t"Q_OBJECT", nl(),
		t"public:", nl(),
		t"\t", cp(1), t"(", i(3, "", {key = "i3"}), t"QWidget *parent = 0);", nl(),
		t"\t~", cp(1), t"();", nl(),
		t"private:", nl(),
		t"\tUi::", cp(1), t" *ui;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}; /* -----  end of class ", cp(1), t"  ----- */"
	}),
	s({trig = "uiDef", descr = "(uiDef) \"Ui Definition\"", priority = 0, trigEngine = te("")}, {
		t"#include \"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, ""), {key = "i1"}) }) end), t".h\"", nl(),
		t"#include \"ui_", cp(1), t".h\"", nl(),
		nl(),
		cp(1), t"::", cp(1), t"(QWidget *parent):", nl(),
		t"\t", i(2, "QWidget", {key = "i2"}), t"(parent),", nl(),
		t"\tui(new Ui::", cp(1), t")", nl(),
		t"{", nl(),
		t"\tui->setupUi(this);", nl(),
		t"}", nl(),
		nl(),
		cp(1), t"::~", cp(1), t"()", nl(),
		t"{", nl(),
		t"\tdelete ui;", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "langChange", descr = "(langChange) \"Change language event\"", priority = 0, trigEngine = te("")}, {
		t"void ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, ""), {key = "i1"}) }) end), t"::changeEvent(QEvent *event)", nl(),
		t"{", nl(),
		t"\t", i(2, "QWidget", {key = "i2"}), t"::changeEvent(event);", nl(),
		t"\tswitch (event->type()) {", nl(),
		t"\t\tcase QEvent::LanguageChange:", nl(),
		t"\t\t\tui->retranslateUi(this);", nl(),
		t"\t\t\tbreak;", nl(),
		t"\t\tdefault:", nl(),
		t"\t\t\tbreak;", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "prop", descr = "(prop) \"Property\"", priority = 0, trigEngine = te("")}, {
		i(2, "int", {key = "i2"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, " "), {key = "i1"}) }) end), t"::", i(3, "property", {key = "i3"}), t"() const", nl(),
		t"{", nl(),
		t"\treturn m_", cp(3), t";", nl(),
		t"}", nl(),
		nl(),
		t"void ", cp(1), t"::set", tr(3, "\\w+\\s*", "\\u$0"), t"(const ", cp(2), t" &", cp(3), t")", nl(),
		t"{", nl(),
		t"\tm_", cp(3), t" = ", cp(3), t";", nl(),
		t"}"
	}),
	s({trig = "sprop", descr = "(sprop) \"Property without reference\"", priority = 0, trigEngine = te("")}, {
		i(2, "int", {key = "i2"}), t" ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'class\')")}, " "), {key = "i1"}) }) end), t"::", i(3, "property", {key = "i3"}), t"() const", nl(),
		t"{", nl(),
		t"\treturn m_", cp(3), t";", nl(),
		t"}", nl(),
		nl(),
		t"void ", cp(1), t"::set", tr(3, "\\w+\\s*", "\\u$0"), t"(const ", cp(2), t" ", cp(3), t")", nl(),
		t"{", nl(),
		t"\tm_", cp(3), t" = ", cp(3), t";", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
})
