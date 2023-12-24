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
	2,
	1,
	1,
	2,
	0,
	0,
	2,
	3,
	2,
	1,
	1,
	2,
	2,
	3,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
	2,
	1,
	0,
	0,
	0,
	2,
	0,
	2,
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 9}},
	1,
	1,
	0,
	2,
	1,
	1,
	4,
	4,
	3,
	0,
	2,
	2,
	0,
	0,
	1,
	0,
	1,
	2,
	2,
	1,
	3,
	3,
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	3,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	4,
	3,
	3,
	3,
	3,
	3,
	2,
	2,
	2,
	2,
	3,
	2,
	2,
	2,
	2,
	3,
	2,
	2,
	2,
	2,
	1,
	1,
	1,
	0,
	2,
	2,
	2,
	1,
	2,
	3,
	1,
}
ls.add_snippets("cs", {
	s({trig = "namespace", descr = "(namespace) \"namespace\"", priority = -50, trigEngine = te("b")}, {
		t"namespace ", i(1, "MyNamespace", {key = "i1"}), nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "class", descr = "(class) \"class\"", priority = -50, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"cs", 2}, "snip.rv = snip.basename", python_globals, args, snip, "", am[2])}, " "), {key = "i2"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "struct", descr = "(struct) \"struct\"", priority = -50, trigEngine = te("w")}, {
		t"struct ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"cs", 3}, "snip.rv = snip.basename", python_globals, args, snip, "", am[3])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "interface", descr = "(interface) \"interface\"", priority = -50, trigEngine = te("w")}, {
		t"interface I", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"cs", 4}, "snip.rv = snip.basename", python_globals, args, snip, "", am[4])}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "enum", descr = "(enum) \"enumeration\"", priority = -50, trigEngine = te("b")}, {
		t"enum ", i(1, "MyEnum", {key = "i1"}), t" { ", i(2, "Item", {key = "i2"}), t" };"
	}),
	s({trig = "sim", descr = "(sim) \"static int main\"", priority = -50, trigEngine = te("b")}, {
		t"static int Main(string[] args)", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "svm", descr = "(svm) \"static void main\"", priority = -50, trigEngine = te("b")}, {
		t"static void Main(string[] args)", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "prop", descr = "(prop) \"Simple property declaration\"", priority = -50, trigEngine = te("b")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "MyProperty", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "propfull", descr = "(propfull) \"Full property declaration\"", priority = -50, trigEngine = te("b")}, {
		t"private ", i(1, "int", {key = "i1"}), t" ", i(2, "_myProperty", {key = "i2"}), t";", nl(),
		nl(),
		t"public ", cp(1), t" ", i(3, "MyProperty", {key = "i3"}), nl(),
		t"{", nl(),
		t"\tget { return ", cp(2), t"; }", nl(),
		t"\tset { ", cp(2), t" = value; }", nl(),
		t"}"
	}),
	s({trig = "propg", descr = "(propg) \"Property with a private setter\"", priority = -50, trigEngine = te("b")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "MyProperty", {key = "i2"}), t" { get; private set; }"
	}),
	s({trig = "#if", descr = "(#if) \"#if #endif\"", priority = -50, trigEngine = te("b")}, {
		t"#if ", i(1, "DEBUG", {key = "i1"}), nl(),
		f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"#endif"
	}),
	s({trig = "#region", descr = "(#region) \"#region #endregion\"", priority = -50, trigEngine = te("b")}, {
		t"#region ", i(1, "Region", {key = "i1"}), nl(),
		f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"#endregion"
	}),
	s({trig = "for", descr = "(for) \"for loop\"", priority = -50, trigEngine = te("b")}, {
		t"for (int ", i(1, "i", {key = "i1"}), t" = 0; ", cp(1), t" < ", i(2, "10", {key = "i2"}), t"; ", cp(1), t"++)", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr) \"for loop (reverse)\"", priority = -50, trigEngine = te("b")}, {
		t"for (int ", i(1, "i", {key = "i1"}), t" = ", i(2, "10", {key = "i2"}), t"; ", cp(1), t" >= 0; ", cp(1), t"--)", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "foreach", descr = "(foreach) \"foreach loop\"", priority = -50, trigEngine = te("b")}, {
		t"foreach (", i(3, "var", {key = "i3"}), t" ", i(2, "item", {key = "i2"}), t" in ", i(1, "items", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "while", descr = "(while) \"while loop\"", priority = -50, trigEngine = te("b")}, {
		t"while (", i(1, "true", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do) \"do loop\"", priority = -50, trigEngine = te("b")}, {
		t"do", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"} while (", i(1, "true", {key = "i1"}), t");"
	}),
	s({trig = "if", descr = "(if) \"if statement\"", priority = -50, trigEngine = te("b")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if else statement\"", priority = -50, trigEngine = te("b")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		t"else", nl(),
		t"{", nl(),
		t"}"
	}),
	s({trig = "elif", descr = "(elif) \"else if\"", priority = -50, trigEngine = te("b")}, {
		t"else if (", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "elseif", descr = "(elseif) \"else if\"", priority = -50, trigEngine = te("b")}, {
		t"else if (", i(1, "", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifnn", descr = "(ifnn) \"if not null\"", priority = -50, trigEngine = te("b")}, {
		t"if (", i(1, "", {key = "i1"}), t" != null)", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "switch", descr = "(switch) \"switch statement\"", priority = -50, trigEngine = te("b")}, {
		t"switch (", i(1, "statement", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\tcase ", i(2, "value", {key = "i2"}), t":", nl(),
		t"\t\tbreak;", nl(),
		nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t"break;", nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) \"case\"", priority = -50, trigEngine = te("b")}, {
		t"case ", i(1, "value", {key = "i1"}), t":", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\tbreak;"
	}),
	s({trig = "using", descr = "(using) \"using statement\"", priority = -50, trigEngine = te("b")}, {
		t"using (", i(1, "resource", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "unchecked", descr = "(unchecked) \"unchecked block\"", priority = -50, trigEngine = te("b")}, {
		t"unchecked", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "checked", descr = "(checked) \"checked block\"", priority = -50, trigEngine = te("b")}, {
		t"checked", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "unsafe", descr = "(unsafe) \"unsafe\"", priority = -50, trigEngine = te("b")}, {
		t"unsafe", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "try", descr = "(try) \"try catch block\"", priority = -50, trigEngine = te("b")}, {
		t"try", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		t"catch (", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\tthrow;", nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf) \"try finally block\"", priority = -50, trigEngine = te("b")}, {
		t"try", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		t"finally", nl(),
		t"{", nl(),
		t"}"
	}),
	s({trig = "throw", descr = "(throw) \"throw\"", priority = -50, trigEngine = te("")}, {
		t"throw new ", i(1, "", {key = "i1"}), t"Exception(\"", i(2, "", {key = "i2"}), t"\");"
	}),
	s({trig = "from", descr = "(from) \"LINQ syntax\"", priority = -50, trigEngine = te("b")}, {
		t"var ", i(1, "seq", {key = "i1"}), t" =", nl(),
		t"\tfrom ", i(2, "item1", {key = "i2"}), t" in ", i(3, "items1", {key = "i3"}), nl(),
		t"\tjoin ", i(4, "item2", {key = "i4"}), t" in ", i(5, "items2", {key = "i5"}), t" on ", cp(2), t".", i(6, "prop1", {key = "i6"}), t" equals ", cp(4), t".", i(7, "prop2", {key = "i7"}), nl(),
		t"\tselect ", cp(2), t".prop3", nl(),
		t"\twhere ", i(8, "clause", {key = "i8"})
	}),
	s({trig = "da", descr = "(da) \"Debug.Assert\"", priority = -50, trigEngine = te("b")}, {
		t"Debug.Assert(", i(1, "true", {key = "i1"}), t");"
	}),
	s({trig = "cw", descr = "(cw) \"Console.WriteLine\"", priority = -50, trigEngine = te("b")}, {
		t"Console.WriteLine(\"", i(1, "", {key = "i1"}), t"\");"
	}),
	s({trig = "cr", descr = "(cr) \"Console.ReadLine\"", priority = -50, trigEngine = te("b")}, {
		t"Console.ReadLine();"
	}),
	s({trig = "cwp", descr = "(cwp) \"Console.WriteLine with parameters\"", priority = -50, trigEngine = te("b")}, {
		t"Console.WriteLine(\"", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"cs", 36}, "\nsnip.rv = \' \'.join([\'{\' + str(i) + \'}\' for i in range(t[1].count(\',\'))])\n", python_globals, args, snip, "", am[36])}, ""), {key = "i2"}) }) end), t"\"", i(1, ", something", {key = "i1"}), t");"
	}),
	s({trig = "mbox", descr = "(mbox) \"Message box\"", priority = -50, trigEngine = te("b")}, {
		t"MessageBox.Show(\"", i(1, "message", {key = "i1"}), t"\");"
	}),
	s({trig = "equals", descr = "(equals) \"Equality for a type\"", priority = -50, trigEngine = te("b")}, {
		t"public override bool Equals(object obj) => Equals(obj as ", i(1, "TYPE", {key = "i1"}), t");", nl(),
		nl(),
		t"public bool Equals(", cp(1), t" other)  // IEquatable<", cp(1), t">", nl(),
		t"{", nl(),
		t"\tif (object.ReferenceEquals(other, null))", nl(),
		t"\t\treturn false;", nl(),
		t"\tif (object.ReferenceEquals(this, other))", nl(),
		t"\t\treturn true;", nl(),
		t"\tif (this.GetType() != other.GetType())", nl(),
		t"\t\treturn false;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\treturn base.Equals(other);", nl(),
		t"}", nl(),
		nl(),
		t"public override int GetHashCode() => base.GetHashCode();", nl(),
		nl(),
		t"public static bool operator ==(", cp(1), t" x, ", cp(1), t" y) =>", nl(),
		t"\t(object.ReferenceEquals(x, null) && object.ReferenceEquals(y, null))", nl(),
		t"\t|| (!object.ReferenceEquals(x, null) && x.Equals(y));", nl(),
		nl(),
		t"public static bool operator !=(", cp(1), t" x, ", cp(1), t" y) => !(x == y);", nl()
	}),
	s({trig = "mth", descr = "(mth) \"Method\"", priority = -50, trigEngine = te("b")}, {
		i(1, "public", {key = "i1"}), t" ", i(2, "void", {key = "i2"}), t" ", i(3, "MyMethod", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mths", descr = "(mths) \"Static method\"", priority = -50, trigEngine = te("b")}, {
		i(1, "public", {key = "i1"}), t" static ", i(2, "void", {key = "i2"}), t" ", i(3, "MyMethod", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ctor", descr = "(ctor) \"Constructor\"", priority = -50, trigEngine = te("b")}, {
		i(1, "public", {key = "i1"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"cs", 41}, "snip.rv = snip.basename or \"untitled\"", python_globals, args, snip, "", am[41])}, " "), {key = "i2"}) }) end), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "///", descr = "(///) \"XML summary comment\"", priority = -50, trigEngine = te("b")}, {
		t"/// <summary>", nl(),
		t"/// ", i(0, "", {key = "i0"}), nl(),
		t"/// </summary>"
	}),
	s({trig = "<p", descr = "(<p) \"XML pramameter comment\"", priority = -50, trigEngine = te("w")}, {
		t"<param name=\"", i(1, "", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), t"</param>"
	}),
	s({trig = "<ex", descr = "(<ex) \"XML exception comment\"", priority = -50, trigEngine = te("w")}, {
		t"<exception cref=\"", i(1, "System.Exception", {key = "i1"}), t"\">", i(2, "", {key = "i2"}), t"</exception>"
	}),
	s({trig = "<r", descr = "(<r) \"XML returns comment\"", priority = -50, trigEngine = te("w")}, {
		t"<returns>", i(0, "", {key = "i0"}), t"</returns>"
	}),
	s({trig = "<c", descr = "(<c) \"XML code comment\"", priority = -50, trigEngine = te("w")}, {
		t"<code>", i(0, "", {key = "i0"}), t"</code>"
	}),
	s({trig = "simc", descr = "(simc)", priority = -1000, trigEngine = te("w")}, {
		t"public class Application", nl(),
		t"{", nl(),
		t"\t", i(1, "public", {key = "i1"}), t" static int Main(string[] args)", nl(),
		t"\t{", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\treturn 0;", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ifs", descr = "(ifs)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "t", descr = "(t)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "?", descr = "(?)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "true", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"foreach (", i(1, "var", {key = "i1"}), t" ", i(2, "entry", {key = "i2"}), t" in ", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "each", descr = "(each)", priority = -1000, trigEngine = te("w")}, {
		t"foreach (", i(1, "var", {key = "i1"}), t" ", i(2, "entry", {key = "i2"}), t" in ", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "if+", descr = "(if+)", priority = -1000, trigEngine = te("w")}, {
		t"public interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls", descr = "(cls)", priority = -1000, trigEngine = te("w")}, {
		i(2, "public", {key = "i2"}), t" class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, " "), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls+", descr = "(cls+)", priority = -1000, trigEngine = te("w")}, {
		t"public class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls+^", descr = "(cls+^)", priority = -1000, trigEngine = te("w")}, {
		t"public static class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls&", descr = "(cls&)", priority = -1000, trigEngine = te("w")}, {
		t"internal class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls&^", descr = "(cls&^)", priority = -1000, trigEngine = te("w")}, {
		t"internal static class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls|", descr = "(cls|)", priority = -1000, trigEngine = te("w")}, {
		t"protected class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cls|%", descr = "(cls|%)", priority = -1000, trigEngine = te("w")}, {
		t"protected abstract class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" ", i(2, "int", {key = "i2"}), t" ", i(3, "", {key = "i3"}), t" { get; set; }"
	}),
	s({trig = "p+", descr = "(p+)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "p+&", descr = "(p+&)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; internal set; }"
	}),
	s({trig = "p+|", descr = "(p+|)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; protected set; }"
	}),
	s({trig = "p+-", descr = "(p+-)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; private set; }"
	}),
	s({trig = "p&", descr = "(p&)", priority = -1000, trigEngine = te("w")}, {
		t"internal ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "p&|", descr = "(p&|)", priority = -1000, trigEngine = te("w")}, {
		t"internal ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; protected set; }"
	}),
	s({trig = "p&-", descr = "(p&-)", priority = -1000, trigEngine = te("w")}, {
		t"internal ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; private set; }"
	}),
	s({trig = "p|", descr = "(p|)", priority = -1000, trigEngine = te("w")}, {
		t"protected ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "p|-", descr = "(p|-)", priority = -1000, trigEngine = te("w")}, {
		t"protected ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; private set; }"
	}),
	s({trig = "p-", descr = "(p-)", priority = -1000, trigEngine = te("w")}, {
		t"private ", i(1, "int", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "pi", descr = "(pi)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" int ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "pi+", descr = "(pi+)", priority = -1000, trigEngine = te("w")}, {
		t"public int ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pi+&", descr = "(pi+&)", priority = -1000, trigEngine = te("w")}, {
		t"public int ", i(1, "", {key = "i1"}), t" { get; internal set; }"
	}),
	s({trig = "pi+|", descr = "(pi+|)", priority = -1000, trigEngine = te("w")}, {
		t"public int ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "pi+-", descr = "(pi+-)", priority = -1000, trigEngine = te("w")}, {
		t"public int ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pi&", descr = "(pi&)", priority = -1000, trigEngine = te("w")}, {
		t"internal int ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pi&|", descr = "(pi&|)", priority = -1000, trigEngine = te("w")}, {
		t"internal int ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "pi&-", descr = "(pi&-)", priority = -1000, trigEngine = te("w")}, {
		t"internal int ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pi|", descr = "(pi|)", priority = -1000, trigEngine = te("w")}, {
		t"protected int ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pi|-", descr = "(pi|-)", priority = -1000, trigEngine = te("w")}, {
		t"protected int ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pi-", descr = "(pi-)", priority = -1000, trigEngine = te("w")}, {
		t"private int ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pb", descr = "(pb)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" bool ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "pb+", descr = "(pb+)", priority = -1000, trigEngine = te("w")}, {
		t"public bool ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pb+&", descr = "(pb+&)", priority = -1000, trigEngine = te("w")}, {
		t"public bool ", i(1, "", {key = "i1"}), t" { get; internal set; }"
	}),
	s({trig = "pb+|", descr = "(pb+|)", priority = -1000, trigEngine = te("w")}, {
		t"public bool ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "pb+-", descr = "(pb+-)", priority = -1000, trigEngine = te("w")}, {
		t"public bool ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pb&", descr = "(pb&)", priority = -1000, trigEngine = te("w")}, {
		t"internal bool ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pb&|", descr = "(pb&|)", priority = -1000, trigEngine = te("w")}, {
		t"internal bool ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "pb&-", descr = "(pb&-)", priority = -1000, trigEngine = te("w")}, {
		t"internal bool ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pb|", descr = "(pb|)", priority = -1000, trigEngine = te("w")}, {
		t"protected bool ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "pb|-", descr = "(pb|-)", priority = -1000, trigEngine = te("w")}, {
		t"protected bool ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "pb-", descr = "(pb-)", priority = -1000, trigEngine = te("w")}, {
		t"private bool ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "ps", descr = "(ps)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" string ", i(2, "", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "ps+", descr = "(ps+)", priority = -1000, trigEngine = te("w")}, {
		t"public string ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "ps+&", descr = "(ps+&)", priority = -1000, trigEngine = te("w")}, {
		t"public string ", i(1, "", {key = "i1"}), t" { get; internal set; }"
	}),
	s({trig = "ps+|", descr = "(ps+|)", priority = -1000, trigEngine = te("w")}, {
		t"public string ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "ps+-", descr = "(ps+-)", priority = -1000, trigEngine = te("w")}, {
		t"public string ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "ps&", descr = "(ps&)", priority = -1000, trigEngine = te("w")}, {
		t"internal string ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "ps&|", descr = "(ps&|)", priority = -1000, trigEngine = te("w")}, {
		t"internal string ", i(1, "", {key = "i1"}), t" { get; protected set; }"
	}),
	s({trig = "ps&-", descr = "(ps&-)", priority = -1000, trigEngine = te("w")}, {
		t"internal string ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "ps|", descr = "(ps|)", priority = -1000, trigEngine = te("w")}, {
		t"protected string ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "ps|-", descr = "(ps|-)", priority = -1000, trigEngine = te("w")}, {
		t"protected string ", i(1, "", {key = "i1"}), t" { get; private set; }"
	}),
	s({trig = "ps-", descr = "(ps-)", priority = -1000, trigEngine = te("w")}, {
		t"private string ", i(1, "", {key = "i1"}), t" { get; set; }"
	}),
	s({trig = "m", descr = "(m)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" ", i(2, "void", {key = "i2"}), t" ", i(3, "", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "m+", descr = "(m+)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "void", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "m&", descr = "(m&)", priority = -1000, trigEngine = te("w")}, {
		t"internal ", i(1, "void", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "m|", descr = "(m|)", priority = -1000, trigEngine = te("w")}, {
		t"protected ", i(1, "void", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "m-", descr = "(m-)", priority = -1000, trigEngine = te("w")}, {
		t"private ", i(1, "void", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mi", descr = "(mi)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" int ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return 0;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mi+", descr = "(mi+)", priority = -1000, trigEngine = te("w")}, {
		t"public int ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return 0;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mi&", descr = "(mi&)", priority = -1000, trigEngine = te("w")}, {
		t"internal int ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return 0;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mi|", descr = "(mi|)", priority = -1000, trigEngine = te("w")}, {
		t"protected int ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return 0;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mi-", descr = "(mi-)", priority = -1000, trigEngine = te("w")}, {
		t"private int ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return 0;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mb", descr = "(mb)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" bool ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return false;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mb+", descr = "(mb+)", priority = -1000, trigEngine = te("w")}, {
		t"public bool ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return false;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mb&", descr = "(mb&)", priority = -1000, trigEngine = te("w")}, {
		t"internal bool ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return false;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mb|", descr = "(mb|)", priority = -1000, trigEngine = te("w")}, {
		t"protected bool ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return false;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mb-", descr = "(mb-)", priority = -1000, trigEngine = te("w")}, {
		t"private bool ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return false;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ms", descr = "(ms)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public", {key = "i1"}), t" string ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return \"\";", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ms+", descr = "(ms+)", priority = -1000, trigEngine = te("w")}, {
		t"public string ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return \"\";", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ms&", descr = "(ms&)", priority = -1000, trigEngine = te("w")}, {
		t"internal string ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return \"\";", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ms|", descr = "(ms|)", priority = -1000, trigEngine = te("w")}, {
		t"protected string ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return \"\";", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ms-", descr = "(ms-)", priority = -1000, trigEngine = te("w")}, {
		t"private string ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "return \"\";", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "enum+", descr = "(enum+)", priority = -1000, trigEngine = te("w")}, {
		t"public enum ", i(1, "", {key = "i1"}), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "<s", descr = "(<s)", priority = -1000, trigEngine = te("w")}, {
		t"<see cref=\"", i(1, "", {key = "i1"}), t"\"/>"
	}),
	s({trig = "<rem", descr = "(<rem)", priority = -1000, trigEngine = te("w")}, {
		t"<remarks>", i(1, "", {key = "i1"}), t"</remarks>"
	}),
	s({trig = "eq", descr = "(eq)", priority = -1000, trigEngine = te("w")}, {
		t"public override bool Equals(object obj)", nl(),
		t"{", nl(),
		t"\tif (obj == null || GetType() != obj.GetType())", nl(),
		t"\t{", nl(),
		t"\t\treturn false;", nl(),
		t"\t}", nl(),
		t"\t", i(0, "throw new NotImplementedException();", {key = "i0"}), nl(),
		t"\treturn base.Equals(obj);", nl(),
		t"}"
	}),
	s({trig = "exc", descr = "(exc)", priority = -1000, trigEngine = te("w")}, {
		t"public class ", i(1, "MyException", {key = "i1"}), t" : ", i(2, "Exception", {key = "i2"}), nl(),
		t"{", nl(),
		t"\tpublic ", cp(1), t"() { }", nl(),
		t"\tpublic ", cp(1), t"(string message) : base(message) { }", nl(),
		t"\tpublic ", cp(1), t"(string message, Exception inner) : base(message, inner) { }", nl(),
		t"\tprotected ", cp(1), t"(", nl(),
		t"\t\tSystem.Runtime.Serialization.SerializationInfo info,", nl(),
		t"\t\tSystem.Runtime.Serialization.StreamingContext context)", nl(),
		t"\t\t\t: base(info, context) { }", nl(),
		t"}"
	}),
	s({trig = "index", descr = "(index)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "object", {key = "i1"}), t" this[", i(2, "int", {key = "i2"}), t" index]", nl(),
		t"{", nl(),
		t"\tget { ", i(0, "", {key = "i0"}), t" }", nl(),
		t"\tset { ", cp(0), t" }", nl(),
		t"}"
	}),
	s({trig = "inv", descr = "(inv)", priority = -1000, trigEngine = te("w")}, {
		t"EventHandler temp = ", i(1, "MyEvent", {key = "i1"}), t";", nl(),
		t"if (", i(2, "temp", {key = "i2"}), t" != null)", nl(),
		t"{", nl(),
		t"\t", cp(2), t"();", nl(),
		t"}"
	}),
	s({trig = "lock", descr = "(lock)", priority = -1000, trigEngine = te("w")}, {
		t"lock (", i(1, "this", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "propr", descr = "(propr)", priority = -1000, trigEngine = te("w")}, {
		t"public ", i(1, "int", {key = "i1"}), t" ", i(2, "MyProperty", {key = "i2"}), t" { get; set; }"
	}),
	s({trig = "propf", descr = "(propf)", priority = -1000, trigEngine = te("w")}, {
		t"private ", i(1, "int", {key = "i1"}), t" ", i(2, "myVar", {key = "i2"}), t";", nl(),
		t"public ", cp(1), t" ", i(3, "MyProperty", {key = "i3"}), nl(),
		t"{", nl(),
		t"\tget { return ", cp(2), t"; }", nl(),
		t"\tset { ", cp(2), t" = value; }", nl(),
		t"}"
	}),
	s({trig = "usi", descr = "(usi)", priority = -1000, trigEngine = te("w")}, {
		t"using (", i(1, "resource", {key = "i1"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
})
