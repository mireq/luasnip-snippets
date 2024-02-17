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
	{0},
	{0, 1, 2},
	{0},
	{0},
	{0, 1},
	{1},
	{0, 1, 2},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1},
	{0, 1, 2},
	{0},
	{0},
	{1, 2, 3, 4},
	{0, 1, 2},
	{1, 2},
	{1, 2, 3},
	{0},
	{},
	{0},
	{0},
	{0},
	{0},
	{1},
	{1},
	{1},
	{1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{1},
	{1, 2},
	{1},
	{1},
	{1},
	{1, 2, 3},
	{0, 1, 2, 3},
	{0},
	{},
	{0, 1},
	{0, 1},
	{},
	{0, 1, 2},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{0, 1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1},
	{1},
	{0, 2},
	{0},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{1},
	{1, 2, 3},
	{1, 2, 3, 4},
	{0},
	{0, 1},
	{1},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{1, 2},
	{1, 2},
	{1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
}

local python_globals = {
	[[def junit(snip):
	if snip.opt("g:ultisnips_java_junit", "") == "3":
		snip += ""
	else:
		snip.rv += "@Test\n\t"

def nl(snip):
	if snip.opt("g:ultisnips_java_brace_style", "") == "nl":
		snip += ""
	else:
		snip.rv += " "
def getArgs(group):
	import re
	word = re.compile(r'[a-zA-Z0-9><.]+ \w+')
	return [i.split(" ") for i in word.findall(group) ]

def camel(word):
	if not word: return ''
	return word[0].upper() + word[1:]

def mixedCase(word):
	if not word: return ''
	return word[0].lower() + word[1:]
]]
}


ls.add_snippets("java", {
	s({trig = "po", descr = "(po) \"protected\"", priority = -50, trigEngine = te("b")}, {
		t"protected ", i(0, "", {key = "i0"})
	}),
	s({trig = "pu", descr = "(pu) \"public\"", priority = -50, trigEngine = te("b")}, {
		t"public ", i(0, "", {key = "i0"})
	}),
	s({trig = "pr", descr = "(pr) \"private\"", priority = -50, trigEngine = te("b")}, {
		t"private ", i(0, "", {key = "i0"})
	}),
	s({trig = "before", descr = "(before)", priority = -1000, trigEngine = te("w")}, {
		t"@Before", nl(),
		t"static void ", i(1, "intercept", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "mm", descr = "(mm)", priority = -1000, trigEngine = te("w")}, {
		t"@ManyToMany", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "mo", descr = "(mo)", priority = -1000, trigEngine = te("w")}, {
		t"@ManyToOne", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "om", descr = "(om)", priority = -1000, trigEngine = te("w")}, {
		t"@OneToMany", i(1, "(cascade=CascadeType.ALL)", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "oo", descr = "(oo)", priority = -1000, trigEngine = te("w")}, {
		t"@OneToOne", nl(),
		i(1, "", {key = "i1"})
	}),
	s({trig = "im", descr = "(im) \"import\"", priority = -50, trigEngine = te("b")}, {
		t"import ", i(1, "java", {key = "i1"}), t".", i(2, "util", {key = "i2"}), t".", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "j.b", descr = "(j.b) \"java_beans_\"", priority = -50, trigEngine = te("i")}, {
		t"java.beans."
	}),
	s({trig = "j.i", descr = "(j.i) \"java_io\"", priority = -50, trigEngine = te("i")}, {
		t"java.io."
	}),
	s({trig = "j.m", descr = "(j.m) \"java_math\"", priority = -50, trigEngine = te("i")}, {
		t"java.math."
	}),
	s({trig = "j.n", descr = "(j.n) \"java_net_\"", priority = -50, trigEngine = te("i")}, {
		t"java.net."
	}),
	s({trig = "j.u", descr = "(j.u) \"java_util_\"", priority = -50, trigEngine = te("i")}, {
		t"java.util."
	}),
	s({trig = "cl", descr = "(cl) \"class\"", priority = -50, trigEngine = te("b")}, {
		t"public class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"java", 15}, "\nsnip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[15]), "r \"untitled\""}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "pcl", descr = "(pcl)", priority = -1000, trigEngine = te("w")}, {
		t"public class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1\", \"untitled\")")}, ""), {key = "i1"}) }) end), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "in", descr = "(in) \"interface\"", priority = -50, trigEngine = te("b")}, {
		t"interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"java", 17}, "snip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[17])}, ""), {key = "i1"}) }) end), t" ", c(2, {{t"extends ", i(1, "Parent", {key = "i3"}), t" "}, {i(1, jt({"extends ", "Parent", " "}))}}, {key = "i2"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "tc", descr = "(tc) \"test case\"", priority = -50, trigEngine = te("")}, {
		t"public class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"java", 18}, "snip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[18])}, ""), {key = "i1"}) }) end), t" extends ", i(2, "TestCase", {key = "i2"}), f(function(args, snip) return c_py({"java", 18}, "nl(snip)", python_globals, args, snip, "", am[18]) end, ae(am[18])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ext", descr = "(ext)", priority = -1000, trigEngine = te("w")}, {
		t"extends ", i(0, "", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"implements ", i(0, "", {key = "i0"})
	}),
	s({trig = "/*", descr = "(/*)", priority = -1000, trigEngine = te("w")}, {
		t"/*", nl(),
		t" * ", i(0, "", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "co", descr = "(co) \"constant\"", priority = -50, trigEngine = te("b")}, {
		t"public static final ", i(1, "String", {key = "i1"}), t" ", i(2, "var", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";", i(0, "", {key = "i0"})
	}),
	s({trig = "cos", descr = "(cos) \"constant string\"", priority = -50, trigEngine = te("b")}, {
		t"public static final String ", i(1, "var", {key = "i1"}), t" = \"", i(2, "", {key = "i2"}), t"\";", i(0, "", {key = "i0"})
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "el", descr = "(el) \"else\"", priority = -50, trigEngine = te("w")}, {
		t"else", f(function(args, snip) return c_py({"java", 26}, "nl(snip)", python_globals, args, snip, "", am[26]) end, ae(am[26])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i1"}), t") ", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if) \"if\"", priority = -50, trigEngine = te("b")}, {
		t"if (", i(1, "", {key = "i1"}), t")", f(function(args, snip) return c_py({"java", 28}, "nl(snip)", python_globals, args, snip, "", am[28]) end, ae(am[28])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"}"
	}),
	s({trig = "sw", descr = "(sw) \"switch\"", priority = -50, trigEngine = te("b")}, {
		t"switch (", i(1, "", {key = "i1"}), t")", f(function(args, snip) return c_py({"java", 29}, "nl(snip)", python_globals, args, snip, "", am[29]) end, ae(am[29])), t"{", nl(),
		t"\tcase ", i(2, "", {key = "i2"}), t": ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "m", descr = "(m) \"method\"", priority = -50, trigEngine = te("b")}, {
		i(1, "private", {key = "i1"}), t" ", i(2, "void", {key = "i2"}), t" ", i(3, "method", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "v", descr = "(v)", priority = -1000, trigEngine = te("w")}, {
		i(1, "String", {key = "i1"}), t" ", i(2, "var", {key = "i2"}), i(3, " = null", {key = "i3"}), i(4, "", {key = "i4"}), t";"
	}),
	s({trig = "d.al", descr = "(d.al)", priority = -1000, trigEngine = te("w")}, {
		t"List<", i(1, "Object", {key = "i1"}), t"> ", i(2, "list", {key = "i2"}), t" = new ArrayList<", cp(1), t">();", i(0, "", {key = "i0"})
	}),
	s({trig = "d.hm", descr = "(d.hm)", priority = -1000, trigEngine = te("w")}, {
		t"Map<", i(1, "Object", {key = "i1"}), t", ", i(2, "Object", {key = "i2"}), t"> ", i(3, "map", {key = "i3"}), t" = new HashMap<", cp(1), t", ", cp(2), t">();", i(0, "", {key = "i0"})
	}),
	s({trig = "d.hs", descr = "(d.hs)", priority = -1000, trigEngine = te("w")}, {
		t"Set<", i(1, "Object", {key = "i1"}), t"> ", i(2, "set", {key = "i2"}), t" = new HashSet<", cp(1), t">();", i(0, "", {key = "i0"})
	}),
	s({trig = "d.st", descr = "(d.st)", priority = -1000, trigEngine = te("w")}, {
		t"Stack<", i(1, "Object", {key = "i1"}), t"> ", i(2, "stack", {key = "i2"}), t" = new Stack<", cp(1), t">();", i(0, "", {key = "i0"})
	}),
	s({trig = "singlet", descr = "(singlet)", priority = -1000, trigEngine = te("w")}, {
		t"private static class Holder {", nl(),
		t"\tprivate static final ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1\")")}, "\t"), {key = "i1"}) }) end), t" INSTANCE = new ", cp(1), t"();", nl(),
		t"}", nl(),
		nl(),
		t"private ", cp(1), t"() { }", nl(),
		nl(),
		t"public static ", cp(1), t" getInstance() {", nl(),
		t"\treturn Holder.INSTANCE;", nl(),
		t"}"
	}),
	s({trig = "ab", descr = "(ab) \"abstract\"", priority = -50, trigEngine = te("b")}, {
		t"abstract ", i(0, "", {key = "i0"})
	}),
	s({trig = "fi", descr = "(fi) \"final\"", priority = -50, trigEngine = te("b")}, {
		t"final ", i(0, "", {key = "i0"})
	}),
	s({trig = "st", descr = "(st) \"static\"", priority = -50, trigEngine = te("")}, {
		t"static ", i(0, "", {key = "i0"})
	}),
	s({trig = "sy", descr = "(sy) \"synchronized\"", priority = -50, trigEngine = te("")}, {
		t"synchronized ", i(0, "", {key = "i0"})
	}),
	s({trig = "err", descr = "(err)", priority = -1000, trigEngine = te("w")}, {
		t"System.err.print(\"", i(0, "Message", {key = "i0"}), t"\");"
	}),
	s({trig = "errf", descr = "(errf)", priority = -1000, trigEngine = te("w")}, {
		t"System.err.printf(\"", i(1, "Message", {key = "i1"}), t"\", ", i(0, "exception", {key = "i0"}), t");"
	}),
	s({trig = "errln", descr = "(errln)", priority = -1000, trigEngine = te("w")}, {
		t"System.err.println(\"", i(0, "Message", {key = "i0"}), t"\");"
	}),
	s({trig = "as", descr = "(as) \"assert\"", priority = -50, trigEngine = te("b")}, {
		t"assert ", i(1, "test", {key = "i1"}), tr(2, "(.+)", "(?1: \\: \")"), i(2, "Failure message", {key = "i2"}), tr(2, "(.+)", "(?1:\")"), t";"
	}),
	s({trig = "ae", descr = "(ae) \"assert equals\"", priority = -50, trigEngine = te("b")}, {
		t"assertEquals(", i(1, "expected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"}), t");"
	}),
	s({trig = "aae", descr = "(aae)", priority = -1000, trigEngine = te("w")}, {
		t"assertArrayEquals(\"", i(1, "Failure message", {key = "i1"}), t"\", ", i(2, "expecteds", {key = "i2"}), t", ", i(3, "actuals", {key = "i3"}), t");"
	}),
	s({trig = "af", descr = "(af) \"assert false\"", priority = -50, trigEngine = te("b")}, {
		t"assertFalse(", i(1, "actual", {key = "i1"}), t");"
	}),
	s({trig = "at", descr = "(at) \"assert true\"", priority = -50, trigEngine = te("b")}, {
		t"assertTrue(", i(1, "actual", {key = "i1"}), t");"
	}),
	s({trig = "an", descr = "(an)", priority = -1000, trigEngine = te("w")}, {
		t"assertNull(\"", i(1, "Failure message", {key = "i1"}), t"\", ", i(2, "object", {key = "i2"}), t");"
	}),
	s({trig = "ann", descr = "(ann)", priority = -1000, trigEngine = te("w")}, {
		t"assertNotNull(\"", i(1, "Failure message", {key = "i1"}), t"\", ", i(2, "object", {key = "i2"}), t");"
	}),
	s({trig = "ass", descr = "(ass)", priority = -1000, trigEngine = te("w")}, {
		t"assertSame(\"", i(1, "Failure message", {key = "i1"}), t"\", ", i(2, "expected", {key = "i2"}), t", ", i(3, "actual", {key = "i3"}), t");"
	}),
	s({trig = "asns", descr = "(asns)", priority = -1000, trigEngine = te("w")}, {
		t"assertNotSame(\"", i(1, "Failure message", {key = "i1"}), t"\", ", i(2, "expected", {key = "i2"}), t", ", i(3, "actual", {key = "i3"}), t");"
	}),
	s({trig = "fa", descr = "(fa)", priority = -1000, trigEngine = te("w")}, {
		t"fail(\"", i(1, "Failure message", {key = "i1"}), t"\");"
	}),
	s({trig = "ca", descr = "(ca) \"catch\"", priority = -50, trigEngine = te("b")}, {
		t"catch (", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t")", f(function(args, snip) return c_py({"java", 54}, "nl(snip)", python_globals, args, snip, "", am[54]) end, ae(am[54])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "thr", descr = "(thr)", priority = -1000, trigEngine = te("w")}, {
		t"throw ", i(0, "", {key = "i0"})
	}),
	s({trig = "ths", descr = "(ths)", priority = -1000, trigEngine = te("w")}, {
		t"throws ", i(0, "", {key = "i0"})
	}),
	s({trig = "try", descr = "(try) \"try/catch\"", priority = -50, trigEngine = te("b")}, {
		t"try {", nl(),
		t"\t", i(1, "", {key = "i1"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"} catch(", i(2, "Exception", {key = "i2"}), t" ", i(3, "e", {key = "i3"}), t"){", nl(),
		t"\t", i(4, "e.printStackTrace();", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch(", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t") {", nl(),
		t"} finally {", nl(),
		t"}"
	}),
	s({trig = "findall", descr = "(findall)", priority = -1000, trigEngine = te("w")}, {
		t"List<", i(1, "listName", {key = "i1"}), t"> ", i(2, "items", {key = "i2"}), t" = ", cp(1), t".findAll();"
	}),
	s({trig = "findbyid", descr = "(findbyid)", priority = -1000, trigEngine = te("w")}, {
		i(1, "var", {key = "i1"}), t" ", i(2, "item", {key = "i2"}), t" = ", cp(1), t".findById(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "/**", descr = "(/**)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(0, "", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "@au", descr = "(@au)", priority = -1000, trigEngine = te("w")}, {
		t"@author ", f(function(args, snip) return c_viml("system(\"grep `id -un` /etc/passwd | cut -d \\\":\\\" -f5 | cut -d \\\",\\\" -f1\")") end)
	}),
	s({trig = "@br", descr = "(@br)", priority = -1000, trigEngine = te("w")}, {
		t"@brief ", i(0, "Description", {key = "i0"})
	}),
	s({trig = "@fi", descr = "(@fi)", priority = -1000, trigEngine = te("w")}, {
		t"@file ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\"$1\")")}, ""), {key = "i0"}) }) end), t".java"
	}),
	s({trig = "@pa", descr = "(@pa)", priority = -1000, trigEngine = te("w")}, {
		t"@param ", i(0, "param", {key = "i0"})
	}),
	s({trig = "@re", descr = "(@re)", priority = -1000, trigEngine = te("w")}, {
		t"@return ", i(0, "param", {key = "i0"})
	}),
	s({trig = "debug", descr = "(debug)", priority = -1000, trigEngine = te("w")}, {
		t"Logger.debug(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "error", descr = "(error)", priority = -1000, trigEngine = te("w")}, {
		t"Logger.error(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "info", descr = "(info)", priority = -1000, trigEngine = te("w")}, {
		t"Logger.info(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "warn", descr = "(warn)", priority = -1000, trigEngine = te("w")}, {
		t"Logger.warn(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "enfor", descr = "(enfor)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "", {key = "i1"}), t" : ", i(2, "", {key = "i2"}), t") ", i(0, "", {key = "i0"})
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = -50, trigEngine = te("b")}, {
		t"for (", i(1, "", {key = "i1"}), t"; ", i(2, "", {key = "i2"}), t"; ", i(3, "", {key = "i3"}), t")", f(function(args, snip) return c_py({"java", 72}, "nl(snip)", python_globals, args, snip, "", am[72]) end, ae(am[72])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) \"while\"", priority = -50, trigEngine = te("b")}, {
		t"while (", i(1, "", {key = "i1"}), t")", f(function(args, snip) return c_py({"java", 73}, "nl(snip)", python_globals, args, snip, "", am[73]) end, ae(am[73])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wht", descr = "(wht)", priority = -1000, trigEngine = te("w")}, {
		t"while (true) ", i(0, "", {key = "i0"})
	}),
	s({trig = "psvm", descr = "(psvm)", priority = -1000, trigEngine = te("w")}, {
		t"public static void main (String[] args) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "main", descr = "(main) \"method (main)\"", priority = -50, trigEngine = te("b")}, {
		t"public static void main(String[] args)", f(function(args, snip) return c_py({"java", 76}, "nl(snip)", python_globals, args, snip, "", am[76]) end, ae(am[76])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "sout", descr = "(sout)", priority = -1000, trigEngine = te("w")}, {
		t"System.out.println(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "serr", descr = "(serr)", priority = -1000, trigEngine = te("w")}, {
		t"System.err.println(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "print", descr = "(print)", priority = -1000, trigEngine = te("w")}, {
		t"System.out.print(\"", i(0, "Message", {key = "i0"}), t"\");"
	}),
	s({trig = "printf", descr = "(printf)", priority = -1000, trigEngine = te("w")}, {
		t"System.out.printf(\"", i(1, "Message", {key = "i1"}), t"\", ", i(0, "args", {key = "i0"}), t");"
	}),
	s({trig = "println", descr = "(println)", priority = -1000, trigEngine = te("w")}, {
		t"System.out.println(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "printlna", descr = "(printlna)", priority = -1000, trigEngine = te("w")}, {
		t"System.out.println(Arrays.toString(", i(0, "", {key = "i0"}), t"));"
	}),
	s({trig = "ren", descr = "(ren)", priority = -1000, trigEngine = te("w")}, {
		t"render(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "rena", descr = "(rena)", priority = -1000, trigEngine = te("w")}, {
		t"renderArgs.put(\"", i(1, "", {key = "i1"}), t"\", ", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "renb", descr = "(renb)", priority = -1000, trigEngine = te("w")}, {
		t"renderBinary(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "renj", descr = "(renj)", priority = -1000, trigEngine = te("w")}, {
		t"renderJSON(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "renx", descr = "(renx)", priority = -1000, trigEngine = te("w")}, {
		t"renderXml(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "set", descr = "(set) \"Collections Set\"", priority = -50, trigEngine = te("b")}, {
		t"Set<", i(1, "String", {key = "i1"}), t"> ", i(2, "set", {key = "i2"}), t" = new ", i(3, "Hash", {key = "i3"}), t"Set<", cp(1), t">();"
	}),
	s({trig = "get", descr = "(get)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" ", i(2, "String", {key = "i2"}), t" get", i(3, "", {key = "i3"}), t"(){", nl(),
		t"\treturn this.", i(0, "", {key = "i0"}), t";", nl(),
		t"}"
	}),
	s({trig = "re", descr = "(re) \"return\"", priority = -50, trigEngine = te("b")}, {
		t"return ", i(0, "", {key = "i0"})
	}),
	s({trig = "br", descr = "(br) \"break\"", priority = -50, trigEngine = te("")}, {
		t"break;", nl()
	}),
	s({trig = "t", descr = "(t) \"test\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"java", 92}, "junit(snip)", python_globals, args, snip, "", am[92]) end, ae(am[92])), t"public void test", i(1, "Name", {key = "i1"}), t"() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"@Test", nl(),
		t"public void test", i(1, "Name", {key = "i1"}), t"() throws Exception {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "Sc", descr = "(Sc)", priority = -1000, trigEngine = te("w")}, {
		t"Scanner"
	}),
	s({trig = "action", descr = "(action)", priority = -1000, trigEngine = te("w")}, {
		t"public static void ", i(1, "index", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "rnf", descr = "(rnf)", priority = -1000, trigEngine = te("w")}, {
		t"notFound(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "rnfin", descr = "(rnfin)", priority = -1000, trigEngine = te("w")}, {
		t"notFoundIfNull(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "rr", descr = "(rr)", priority = -1000, trigEngine = te("w")}, {
		t"redirect(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "ru", descr = "(ru)", priority = -1000, trigEngine = te("w")}, {
		t"unauthorized(", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"(unless=", i(1, "param", {key = "i1"}), t");"
	}),
	s({trig = "sleep", descr = "(sleep) \"try sleep catch\"", priority = -50, trigEngine = te("b")}, {
		t"try {", nl(),
		t"\tThread.sleep(", i(1, "1000", {key = "i1"}), t");", nl(),
		t"} catch (InterruptedException e){", nl(),
		t"\te.printStackTrace();", nl(),
		t"}"
	}),
	s({trig = "i|n", descr = "(i|n) \"new primitive or int\"", priority = -50, trigEngine = te("br")}, {
		i(1, "int", {key = "i1"}), t" ", i(2, "i", {key = "i2"}), t" = ", i(3, "1", {key = "i3"}), t";", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "o|v", descr = "(o|v) \"new Object or variable\"", priority = -50, trigEngine = te("br")}, {
		i(1, "Object", {key = "i1"}), t" ", i(2, "var", {key = "i2"}), t" = new ", cp(1), t"(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "f", descr = "(f) \"field\"", priority = -50, trigEngine = te("b")}, {
		i(1, "private", {key = "i1"}), t" ", i(2, "String", {key = "i2"}), t" ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_py({"java", 104}, "snip.rv = t[2].lower()", python_globals, args, snip, "", am[104])}, "  "), {key = "i3"}) }) end), t";"
	}),
	s({trig = "cs", descr = "(cs) \"case\"", priority = -50, trigEngine = te("b")}, {
		t"case ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "cle", descr = "(cle) \"class extends\"", priority = -50, trigEngine = te("b")}, {
		t"public class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"java", 106}, "\nsnip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[106]), "r \"untitled\""}, ""), {key = "i1"}) }) end), t" ", c(2, {{t"extends ", i(1, "Parent", {key = "i3"}), t" "}, {i(1, jt({"extends ", "Parent", " "}))}}, {key = "i2"}), c(3, {{t"implements ", i(1, "Interface", {key = "i5"}), t" "}, {i(1, jt({"implements ", "Interface", " "}))}}, {key = "i4"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "clc", descr = "(clc) \"class and constructor\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"public class ", f(function(args, snip) return c_py({"java", 107}, "\nsnip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[107]) end, ae(am[107])), t" {", nl(),
			f(function(args, snip) return c_py({"java", 107}, "\nargs = getArgs(t[1])\nif len(args) == 0: snip.rv = \"\"\nfor i in args:\n\tsnip.rv += \"\\n\\tprivate \" + i[0] + \" \" + i[1]+ \";\"\nif len(args) > 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[107]) end, ae(am[107])), nl(),
			t"\tpublic ", f(function(args, snip) return c_py({"java", 107}, "snip.rv = snip.basename or \"unknown\"", python_globals, args, snip, "", am[107]) end, ae(am[107])), t"(", i(1, "", {key = "i1"}), t") {", f(function(args, snip) return c_py({"java", 107}, "\nargs = getArgs(t[1])\nfor i in args:\n\tsnip.rv += \"\\n\\t\\tthis.\" + i[1] + \" = \" + i[1] + \";\"\nif len(args) == 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[107]) end, ae(am[107])), nl(),
			t"\t}", i(0, "", {key = "i0"}), nl(),
			f(function(args, snip) return c_py({"java", 107}, "\nargs = getArgs(t[1])\nif len(args) == 0: snip.rv = \"\"\nfor i in args:\n\tsnip.rv += \"\\n\\tpublic void set\" + camel(i[1]) + \"(\" + i[0] + \" \" + i[1] + \") {\\n\" + \"\\\n\t\\tthis.\" + i[1] + \" = \" + i[1] + \";\\n\\t}\\n\"\n\n\tsnip.rv += \"\\n\\tpublic \" + i[0] + \" get\" + camel(i[1]) + \"() {\\n\\\n\t\\treturn \" + i[1] + \";\\n\\t}\\n\"\n", python_globals, args, snip, "", am[107]) end, ae(am[107])), nl(),
			t"}"
		},
		{
			t"public class ", f(function(args, snip) return c_py({"java", 108}, "\nsnip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[108]) end, ae(am[108])), t" {", nl(),
			f(function(args, snip) return c_py({"java", 108}, "\nargs = getArgs(t[1])\nfor i in args:\n\tsnip.rv += \"\\n\\tprivate \" + i[0] + \" \" + i[1]+ \";\"\nif len(args) > 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[108]) end, ae(am[108])), nl(),
			t"\tpublic ", f(function(args, snip) return c_py({"java", 108}, "snip.rv = snip.basename or \"unknown\"", python_globals, args, snip, "", am[108]) end, ae(am[108])), t"(", i(1, "", {key = "i1"}), t") {", f(function(args, snip) return c_py({"java", 108}, "\nargs = getArgs(t[1])\nfor i in args:\n\tsnip.rv += \"\\n\\t\\tthis.%s = %s;\" % (i[1], i[1])\nif len(args) == 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[108]) end, ae(am[108])), nl(),
			t"\t}", nl(),
			t"}"
		},
		{
			t"public class ", f(function(args, snip) return c_py({"java", 109}, "\nsnip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[109]) end, ae(am[109])), t" {", nl(),
			nl(),
			t"\tpublic ", f(function(args, snip) return c_py({"java", 109}, "snip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[109]) end, ae(am[109])), t"(", i(1, "", {key = "i2"}), t") {", nl(),
			t"\t\t", i(0, "", {key = "i0"}), nl(),
			t"\t}", nl(),
			t"}"
		},
	})),
	s({trig = "de", descr = "(de) \"default\"", priority = -50, trigEngine = te("b")}, {
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "elif", descr = "(elif) \"else if\"", priority = -50, trigEngine = te("")}, {
		t"else if (", i(1, "", {key = "i1"}), t")", f(function(args, snip) return c_py({"java", 111}, "nl(snip)", python_globals, args, snip, "", am[111]) end, ae(am[111])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore) \"for (each)\"", priority = -50, trigEngine = te("b")}, {
		t"for (", i(1, "", {key = "i1"}), t" : ", i(2, "", {key = "i2"}), t")", f(function(args, snip) return c_py({"java", 112}, "nl(snip)", python_globals, args, snip, "", am[112]) end, ae(am[112])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fori", descr = "(fori) \"for\"", priority = -50, trigEngine = te("b")}, {
		t"for (int ", i(1, "i", {key = "i1"}), t" = 0; ", cp(1), t" < ", i(2, "10", {key = "i2"}), t"; ", cp(1), t"++)", f(function(args, snip) return c_py({"java", 113}, "nl(snip)", python_globals, args, snip, "", am[113]) end, ae(am[113])), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "imt", descr = "(imt) \"import junit_framework_TestCase;\"", priority = -50, trigEngine = te("b")}, {
		t"import junit.framework.TestCase;", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "cc", descr = "(cc) \"constructor call or setter body\"", priority = -50, trigEngine = te("")}, {
		t"this.", i(1, "var", {key = "i1"}), t" = ", cp(1), t";"
	}),
	s({trig = "list", descr = "(list) \"Collections List\"", priority = -50, trigEngine = te("b")}, {
		t"List<", i(1, "String", {key = "i1"}), t"> ", i(2, "list", {key = "i2"}), t" = new ", i(3, "Array", {key = "i3"}), t"List<", cp(1), t">();"
	}),
	s({trig = "map", descr = "(map) \"Collections Map\"", priority = -50, trigEngine = te("b")}, {
		t"Map<", i(1, "String", {key = "i1"}), t", ", i(2, "String", {key = "i2"}), t"> ", i(3, "map", {key = "i3"}), t" = new ", i(4, "Hash", {key = "i4"}), t"Map<", cp(1), t", ", cp(2), t">();"
	}),
	s({trig = "Str?|str", descr = "(Str?|str) \"String\"", priority = -50, trigEngine = te("br")}, {
		t"String ", i(0, "", {key = "i0"})
	}),
	s({trig = "cn", descr = "(cn) \"constructor, \\w fields + assigments\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"public ", f(function(args, snip) return c_py({"java", 119}, "snip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[119]) end, ae(am[119])), t"(", i(1, "", {key = "i1"}), t") {", nl(),
			t"\t", i(0, "", {key = "i0"}), nl(),
			t"}"
		},
		{
			t"\t", f(function(args, snip) return c_py({"java", 120}, "\nargs = getArgs(t[1])\nfor i in args:\n\tsnip.rv += \"\\n\\tprivate \" + i[0] + \" \" + i[1]+ \";\"\nif len(args) > 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[120]) end, ae(am[120])), nl(),
			t"public ", f(function(args, snip) return c_py({"java", 120}, "snip.rv = snip.basename or \"unknown\"", python_globals, args, snip, "", am[120]) end, ae(am[120])), t"(", i(1, "", {key = "i1"}), t") {", f(function(args, snip) return c_py({"java", 120}, "\nargs = getArgs(t[1])\nfor i in args:\n\tsnip.rv += \"\\n\\t\\tthis.%s = %s;\" % (i[1], i[1])\nif len(args) == 0:\n\tsnip.rv += \"\\n\"", python_globals, args, snip, "", am[120]) end, ae(am[120])), nl(),
			t"}"
		},
	})),
	s({trig = "mt", descr = "(mt) \"method throws\"", priority = -50, trigEngine = te("b")}, {
		i(1, "private", {key = "i1"}), t" ", i(2, "void", {key = "i2"}), t" ", i(3, "method", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t") ", c(5, {{t"throws ", i(1, "", {key = "i6"}), t" "}, {i(1, jt({"throws ", "", " "}))}}, {key = "i5"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "md", descr = "(md) \"Method With javadoc\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(6, "Short Description", {key = "i7"}), f(function(args, snip) return c_py({"java", 122}, "\nfor i in getArgs(t[4]):\n\tsnip.rv += \"\\n\\t * @param \" + i[1] + \" usage...\"", python_globals, args, snip, "", am[122]) end, ae(am[122])), nl(),
		t" *", f(function(args, snip) return c_py({"java", 122}, "\nif \"throws\" in t[5]:\n\tsnip.rv = \"\\n\\t * @throws \" + t[6]\nelse:\n\tsnip.rv = \"\"", python_globals, args, snip, "", am[122]) end, ae(am[122])), f(function(args, snip) return c_py({"java", 122}, "\nif not \"void\" in t[2]:\n\tsnip.rv = \"\\n\\t * @return object\"\nelse:\n\tsnip.rv = \"\"", python_globals, args, snip, "", am[122]) end, ae(am[122])), nl(),
		t" **/", nl(),
		i(1, "public", {key = "i1"}), t" ", i(2, "void", {key = "i2"}), t" ", i(3, "method", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t") ", c(5, {{t"throws ", i(1, "", {key = "i6"}), t" "}, {i(1, jt({"throws ", "", " "}))}}, {key = "i5"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "get(ter)?", descr = "(get(ter)?) \"getter\"", priority = -50, trigEngine = te("br")}, {
		t"public ", i(1, "String", {key = "i1"}), t" get", i(2, "Name", {key = "i2"}), t"() {", nl(),
		t"\treturn ", f(function(args, snip) return c_py({"java", 123}, "snip.rv = mixedCase(t[2])", python_globals, args, snip, "", am[123]) end, ae(am[123])), t";", nl(),
		t"}"
	}),
	s({trig = "set(ter)?", descr = "(set(ter)?) \"setter\"", priority = -50, trigEngine = te("br")}, {
		t"public void set", i(1, "Name", {key = "i1"}), t"(", i(2, "String", {key = "i2"}), t" ", f(function(args, snip) return c_py({"java", 124}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[124]) end, ae(am[124])), t") {", nl(),
		t"\tthis.", f(function(args, snip) return c_py({"java", 124}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[124]) end, ae(am[124])), t" = ", f(function(args, snip) return c_py({"java", 124}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[124]) end, ae(am[124])), t";", nl(),
		t"}"
	}),
	s({trig = "se?tge?t|ge?tse?t|gs", descr = "(se?tge?t|ge?tse?t|gs) \"setter and getter\"", priority = -50, trigEngine = te("br")}, {
		t"public void set", i(1, "Name", {key = "i1"}), t"(", i(2, "String", {key = "i2"}), t" ", f(function(args, snip) return c_py({"java", 125}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[125]) end, ae(am[125])), t") {", nl(),
		t"\tthis.", f(function(args, snip) return c_py({"java", 125}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[125]) end, ae(am[125])), t" = ", f(function(args, snip) return c_py({"java", 125}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[125]) end, ae(am[125])), t";", nl(),
		t"}", f(function(args, snip) return c_py({"java", 125}, "snip.rv += \"\\n\"", python_globals, args, snip, "", am[125]) end, ae(am[125])), nl(),
		t"public ", cp(2), t" get", cp(1), t"() {", nl(),
		t"\treturn ", f(function(args, snip) return c_py({"java", 125}, "snip.rv = mixedCase(t[1])", python_globals, args, snip, "", am[125]) end, ae(am[125])), t";", nl(),
		t"}"
	}),
	s({trig = "pa", descr = "(pa) \"package\"", priority = -50, trigEngine = te("b")}, {
		t"package ", i(0, "", {key = "i0"})
	}),
	s({trig = "p", descr = "(p) \"print\"", priority = -50, trigEngine = te("b")}, {
		t"System.out.print(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "pl", descr = "(pl) \"println\"", priority = -50, trigEngine = te("b")}, {
		t"System.out.println(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "tt", descr = "(tt) \"test throws\"", priority = -50, trigEngine = te("b")}, {
		f(function(args, snip) return c_py({"java", 129}, "junit(snip)", python_globals, args, snip, "", am[129]) end, ae(am[129])), t"public void test", i(1, "Name", {key = "i1"}), t"() ", i(2, "throws Exception ", {key = "i2"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "th", descr = "(th) \"throw\"", priority = -50, trigEngine = te("b")}, {
		t"throw new ", i(0, "", {key = "i0"})
	}),
})
