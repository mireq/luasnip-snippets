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
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1, 2},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0, 1},
	{},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{},
}
ls.add_snippets("scala", {
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "ifn", descr = "(ifn)", priority = -1000, trigEngine = te("w")}, {
		t"if (!", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ifelif", descr = "(ifelif)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else if (", i(3, "", {key = "i3"}), t")", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"else if (", i(1, "", {key = "i3"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "obj", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "item", {key = "i1"}), t" <- ", i(2, "obj", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fori", descr = "(fori)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "i", {key = "i1"}), t" <- ", i(2, "0", {key = "i2"}), t" to ", i(3, "obj", {key = "i3"}), t".length) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fory", descr = "(fory)", priority = -1000, trigEngine = te("w")}, {
		t"for {", nl(),
		t"\t", i(1, "item", {key = "i1"}), t" <- ", i(2, "obj", {key = "i2"}), nl(),
		t"} yield ", i(0, "", {key = "i0"})
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"} catch {", nl(),
		t"\tcase e: FileNotFoundException => ", i(2, "", {key = "i2"}), nl(),
		t"\tcase e: IOException => ", i(3, "", {key = "i3"}), nl(),
		t"} finally {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mat", descr = "(mat)", priority = -1000, trigEngine = te("w")}, {
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" match {", nl(),
		t"\tcase ", i(2, "", {key = "i2"}), t" => ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "match", descr = "(match)", priority = -1000, trigEngine = te("w")}, {
		i(1, " obj", {key = "i1"}), t" match {", nl(),
		t"\tcase ", i(2, "e", {key = "i2"}), t" => ", i(3, "", {key = "i3"}), nl(),
		t"\tcase _ => ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" => ", i(0, "", {key = "i0"})
	}),
	s({trig = "arg", descr = "(arg)", priority = -1000, trigEngine = te("w")}, {
		i(1, "a", {key = "i1"}), t": ", i(2, "T", {key = "i2"}), i(0, ", arg", {key = "i0"})
	}),
	s({trig = "args", descr = "(args)", priority = -1000, trigEngine = te("w")}, {
		i(1, "args", {key = "i1"}), t": ", i(0, "T", {key = "i0"}), t"*"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t"(", i(2, "arg", {key = "i2"}), t") = ", i(0, "", {key = "i0"})
	}),
	s({trig = "prdef", descr = "(prdef)", priority = -1000, trigEngine = te("w")}, {
		t"private def ", i(1, "name", {key = "i1"}), t"(", i(2, "arg", {key = "i2"}), t") = ", i(0, "", {key = "i0"})
	}),
	s({trig = "ovdef", descr = "(ovdef)", priority = -1000, trigEngine = te("w")}, {
		t"override def ", i(1, "name", {key = "i1"}), t"(", i(2, "arg", {key = "i2"}), t") = ", i(0, "", {key = "i0"})
	}),
	s({trig = "fcf", descr = "(fcf)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "a", {key = "i1"}), t": ", i(2, "T", {key = "i2"}), t") => ", cp(1), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "=>", descr = "(=>)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t" => ", i(0, "", {key = "i0"})
	}),
	s({trig = "rec", descr = "(rec)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t"(", i(0, "arg", {key = "i0"}), t") =", nl(),
		t"\tif(", i(2, "", {key = "i2"}), t") ", cp(2), nl(),
		t"\telse ", cp(1), t"(", cp(2), t")"
	}),
	s({trig = "crdef", descr = "(crdef)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t"(", i(2, "arg", {key = "i2"}), t")(", i(3, "arg", {key = "i3"}), t") = ", i(0, "", {key = "i0"})
	}),
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"def main(args: Array[String]):", i(1, "T", {key = "i1"}), t" = ", i(0, "", {key = "i0"})
	}),
	s({trig = "T", descr = "(T) Boolean", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"dbl"
		},
		{
			t"int"
		},
		{
			t"lng"
		},
		{
			t"chr"
		},
		{
			t"str"
		},
		{
			t"arr"
		},
		{
			t"buf"
		},
		{
			t"list"
		},
		{
			t"tpl"
		},
		{
			t"set"
		},
		{
			t"map"
		},
		{
			t"hset"
		},
		{
			t"hmap"
		},
		{
			t"bool"
		},
	})),
	s({trig = "bool", descr = "(bool)", priority = -1000, trigEngine = te("w")}, {
		t"Boolean"
	}),
	s({trig = "anyr", descr = "(anyr)", priority = -1000, trigEngine = te("w")}, {
		t"AnyRef"
	}),
	s({trig = "dbl", descr = "(dbl)", priority = -1000, trigEngine = te("w")}, {
		t"Double"
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		t"Int"
	}),
	s({trig = "str", descr = "(str)", priority = -1000, trigEngine = te("w")}, {
		t"String"
	}),
	s({trig = "chr", descr = "(chr)", priority = -1000, trigEngine = te("w")}, {
		t"Char"
	}),
	s({trig = "lng", descr = "(lng)", priority = -1000, trigEngine = te("w")}, {
		t"Long"
	}),
	s({trig = "arr", descr = "(arr)", priority = -1000, trigEngine = te("w")}, {
		t"Array", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "buf", descr = "(buf)", priority = -1000, trigEngine = te("w")}, {
		t"Buffer", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "list", descr = "(list)", priority = -1000, trigEngine = te("w")}, {
		t"List", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "tpl", descr = "(tpl)", priority = -1000, trigEngine = te("w")}, {
		t"Tuple", i(1, "2", {key = "i1"}), t"[", i(2, "T", {key = "i2"}), t",", i(0, "T", {key = "i0"}), t"]"
	}),
	s({trig = "set", descr = "(set)", priority = -1000, trigEngine = te("w")}, {
		t"Set", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "hset", descr = "(hset)", priority = -1000, trigEngine = te("w")}, {
		t"HashSet", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "mhset", descr = "(mhset)", priority = -1000, trigEngine = te("w")}, {
		t"mutable.HashSet", i(1, "[T]", {key = "i1"}), i(0, "()", {key = "i0"})
	}),
	s({trig = "keyval", descr = "(keyval)", priority = -1000, trigEngine = te("w")}, {
		i(1, "key", {key = "i1"}), t"->", i(2, "val", {key = "i2"}), i(0, ", keyval", {key = "i0"})
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"Map[", i(1, "T", {key = "i1"}), t",", i(2, "T", {key = "i2"}), t"]", i(0, "(keyval)", {key = "i0"})
	}),
	s({trig = "hmap", descr = "(hmap)", priority = -1000, trigEngine = te("w")}, {
		t"HashMap[", i(1, "T", {key = "i1"}), t",", i(2, "T", {key = "i2"}), t"]", i(0, "(keyval)", {key = "i0"})
	}),
	s({trig = "mmap", descr = "(mmap)", priority = -1000, trigEngine = te("w")}, {
		t"mutable.Map[", i(1, "T", {key = "i1"}), t",", i(2, "T", {key = "i2"}), t"]", i(0, "(keyval)", {key = "i0"})
	}),
	s({trig = "mhmap", descr = "(mhmap)", priority = -1000, trigEngine = te("w")}, {
		t"mutable.HashMap[", i(1, "T", {key = "i1"}), t",", i(2, "T", {key = "i2"}), t"]", i(0, "(keyval)", {key = "i0"})
	}),
	s({trig = "as", descr = "(as)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".asInstanceOf[", i(2, "T", {key = "i2"}), t"]"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".isInstanceOf[", i(2, "T", {key = "i2"}), t"]", nl()
	}),
	s({trig = "(a", descr = "((a)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "a", {key = "i1"}), t" => ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "{(", descr = "({()", priority = -1000, trigEngine = te("w")}, {
		t"{(", i(1, "a", {key = "i1"}), t",", i(2, "b", {key = "i2"}), t") =>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		i(0, "name", {key = "i0"}), t".filter (a"
	}),
	s({trig = "mapf", descr = "(mapf)", priority = -1000, trigEngine = te("w")}, {
		i(0, "name", {key = "i0"}), t".map (a"
	}),
	s({trig = "flatmap", descr = "(flatmap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".flatMap", i(0, "[T]", {key = "i0"}), t"(a"
	}),
	s({trig = "fldl", descr = "(fldl)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".foldLeft(", i(0, "first", {key = "i0"}), t") {("
	}),
	s({trig = "fldr", descr = "(fldr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".foldRight(", i(0, "first", {key = "i0"}), t") {("
	}),
	s({trig = "/:", descr = "(/:)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "first", {key = "i1"}), t"/:", i(2, "name", {key = "i2"}), t")(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = ":\\", descr = "(:\\)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "first", {key = "i1"}), t":${2:name})(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "redl", descr = "(redl)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".reduceLeft[", i(0, "T", {key = "i0"}), t"] {("
	}),
	s({trig = "redr", descr = "(redr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".reduceRight[", i(0, "T", {key = "i0"}), t"] {("
	}),
	s({trig = "zipwi", descr = "(zipwi)", priority = -1000, trigEngine = te("w")}, {
		i(0, "name", {key = "i0"}), t".view.zipWithIndex"
	}),
	s({trig = "spl", descr = "(spl)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t".split(\"", i(0, ",", {key = "i0"}), t"\")"
	}),
	s({trig = "val", descr = "(val)", priority = -1000, trigEngine = te("w")}, {
		t"val ", i(1, "name", {key = "i1"}), i(2, ": T", {key = "i2"}), t" = ", i(0, "value", {key = "i0"})
	}),
	s({trig = "var", descr = "(var)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "name", {key = "i1"}), i(2, ": T", {key = "i2"}), t" = ", i(0, "value", {key = "i0"})
	}),
	s({trig = "extends", descr = "(extends)", priority = -1000, trigEngine = te("w")}, {
		t"extends ", i(0, "what", {key = "i0"})
	}),
	s({trig = "with", descr = "(with)", priority = -1000, trigEngine = te("w")}, {
		t"with ", i(1, "what", {key = "i1"}), i(0, " with", {key = "i0"})
	}),
	s({trig = "athis", descr = "(athis)", priority = -1000, trigEngine = te("w")}, {
		t"def this(arg) = this(arg)"
	}),
	s({trig = "abstract", descr = "(abstract)", priority = -1000, trigEngine = te("w")}, {
		t"abstract class ", i(1, "name", {key = "i1"}), i(2, "(arg)", {key = "i2"}), i(3, " extends ", {key = "i3"}), i(4, " with", {key = "i4"}), t" {", nl(),
		t"\t", d(5, function(args, snip) return sn(nil, { i(1, jt({"override def toString = \"", args[1], "\""}, "\t"), {key = "i5"}) }) end, {k"i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "name", {key = "i1"}), i(2, "(arg)", {key = "i2"}), i(3, " extends ", {key = "i3"}), i(4, " with", {key = "i4"}), t" {", nl(),
		t"\t", d(5, function(args, snip) return sn(nil, { i(1, jt({"override def toString = \"", args[1], "\""}, "\t"), {key = "i5"}) }) end, {k"i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "object", descr = "(object)", priority = -1000, trigEngine = te("w")}, {
		t"object ", i(1, "name", {key = "i1"}), i(2, "(arg)", {key = "i2"}), i(3, " extends ", {key = "i3"}), i(4, " with", {key = "i4"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "trait", descr = "(trait)", priority = -1000, trigEngine = te("w")}, {
		t"trait ", i(1, "name", {key = "i1"}), i(2, " extends ", {key = "i2"}), i(3, " with", {key = "i3"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ordered", descr = "(ordered)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "name", {key = "i1"}), i(2, "(arg)", {key = "i2"}), t" extends Ordered[", cp(1), t"] ", i(3, " with", {key = "i3"}), t" {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({"override def toString = \"", args[1], "\""}, "\t"), {key = "i4"}) }) end, {k"i1"}), nl(),
		t"\tdef compare(that: ", cp(1), t") = ", i(5, "this - that", {key = "i5"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "casecl", descr = "(casecl)", priority = -1000, trigEngine = te("w")}, {
		t"case class ", i(1, "name", {key = "i1"}), i(2, "(arg)", {key = "i2"}), i(3, " extends ", {key = "i3"}), i(4, " with", {key = "i4"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "scalatest", descr = "(scalatest)", priority = -1000, trigEngine = te("w")}, {
		i(1, "import org.scalatest.Suite", {key = "i1"}), nl(),
		i(0, "import org.scalatest.FunSuite", {key = "i0"})
	}),
	s({trig = "assert", descr = "(assert)", priority = -1000, trigEngine = te("w")}, {
		t"assert(", i(1, "a", {key = "i1"}), t" === ", i(0, "b", {key = "i0"}), t")"
	}),
	s({trig = "ensuring", descr = "(ensuring)", priority = -1000, trigEngine = te("w")}, {
		t"ifel ensuring(", i(1, "a", {key = "i1"}), t"==", i(0, "b", {key = "i0"}), t")"
	}),
	s({trig = "expect", descr = "(expect)", priority = -1000, trigEngine = te("w")}, {
		t"expect(", i(1, "what", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "intercept", descr = "(intercept)", priority = -1000, trigEngine = te("w")}, {
		t"intercept[", i(1, "IllegalArgumentException", {key = "i1"}), t"] {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"test(\"", i(1, "description", {key = "i1"}), t"\") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "suite", descr = "(suite)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(0, "name", {key = "i0"}), t" extends Suite {", nl(),
		t"\tdef test() {", nl(),
		t"}"
	}),
	s({trig = "fsuite", descr = "(fsuite)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "name", {key = "i1"}), t" extends FunSuite {", nl(),
		t"\ttest(\"", i(0, "description", {key = "i0"}), t"\") {", nl(),
		t"}"
	}),
	s({trig = "webproject", descr = "(webproject)", priority = -1000, trigEngine = te("w")}, {
		t"import sbt._", nl(),
		nl(),
		t"class ", i(1, "Name", {key = "i1"}), t"(info: ProjectInfo) extends DefaultWebProject(info) {", nl(),
		t"\tval liftVersion = \"", i(0, "2.3", {key = "i0"}), t"\"", nl(),
		nl(),
		t"\toverride def libraryDependencies = Set(", nl(),
		nl(),
		t"\t) ++ super.libraryDependencies", nl(),
		nl(),
		t"\tval snapshots = ScalaToolsSnapshots", nl(),
		t"}"
	}),
	s({trig = "liftjar", descr = "(liftjar)", priority = -1000, trigEngine = te("w")}, {
		t"\"net.liftweb\" %% \"", i(0, "lib", {key = "i0"}), t"\" % liftVersion % \"compile->default\","
	}),
	s({trig = "jettyjar", descr = "(jettyjar)", priority = -1000, trigEngine = te("w")}, {
		t"\"org.mortbay.jetty\" % \"jetty\" % \"", i(0, "version", {key = "i0"}), t"\" % \"test->default\","
	}),
	s({trig = "liftimports", descr = "(liftimports)", priority = -1000, trigEngine = te("w")}, {
		t"import _root_.net.liftweb.http._", nl(),
		t"import S._", nl(),
		t"import _root_.net.liftweb.util._", nl(),
		t"import Helpers._", nl(),
		t"import _root_.scala.xml._"
	}),
})
