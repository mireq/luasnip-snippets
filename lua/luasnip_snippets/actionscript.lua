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
local jt = su.join_text
local nl = su.new_line
local te = su.trig_engine
local ae = su.args_expand
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


local am = { -- argument mapping: token index to placeholder number
	0,
	2,
	2,
	2,
	1,
	1,
	1,
	1,
	2,
	2,
	3,
	2,
	1,
	2,
	{{1, 1}, {2, 2}, {3, 4}},
	1,
	0,
	2,
	3,
	4,
}
ls.add_snippets("actionscript", {
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"package {", nl(),
		t"\timport flash.display.*;", nl(),
		t"\timport flash.Events.*;", nl(),
		nl(),
		t"\tpublic class Main extends Sprite {", nl(),
		t"\t\tpublic function Main (\t) {", nl(),
		t"\t\t\ttrace(\"start\");", nl(),
		t"\t\t\tstage.scaleMode = StageScaleMode.NO_SCALE;", nl(),
		t"\t\t\tstage.addEventListener(Event.RESIZE, resizeListener);", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tprivate function resizeListener (e:Event):void {", nl(),
		t"\t\t\ttrace(\"The application window changed size!\");", nl(),
		t"\t\t\ttrace(\"New width:  \" + stage.stageWidth);", nl(),
		t"\t\t\ttrace(\"New height: \" + stage.stageHeight);", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t}", nl(),
		nl(),
		t"}"
	}),
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public|internal", {key = "i1"}), t" class ", i(2, "name", {key = "i2"}), t" ", i(0, "extends ", {key = "i0"}), t" {", nl(),
		t"\tpublic function ", cp(2), t" (\t) {", nl(),
		t"\t\t(\"start\");", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "all", descr = "(all)", priority = -1000, trigEngine = te("w")}, {
		t"package name {", nl(),
		nl(),
		t"\t", i(1, "public|internal|final", {key = "i1"}), t" class ", i(2, "name", {key = "i2"}), t" ", i(0, "extends ", {key = "i0"}), t" {", nl(),
		t"\t\tprivate|public| static const FOO = \"abc\";", nl(),
		t"\t\tprivate|public| static var BAR = \"abc\";", nl(),
		nl(),
		t"\t\t// class initializer - no JIT !! one time setup", nl(),
		t"\t\tif Cababilities.os == \"Linux|MacOS\" {", nl(),
		t"\t\t\tFOO = \"other\";", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\t// constructor:", nl(),
		t"\t\tpublic function ", cp(2), t" (\t){", nl(),
		t"\t\t\tsuper2();", nl(),
		t"\t\t\ttrace(\"start\");", nl(),
		t"\t\t}", nl(),
		t"\t\tpublic function name (a, b...){", nl(),
		t"\t\t\tsuper.name(..);", nl(),
		t"\t\t\tlable:break", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t"}", nl(),
		nl(),
		t"function A(){", nl(),
		t"\t// A can only be accessed within this file", nl(),
		t"}"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch(", i(1, "", {key = "i1"}), t"){", nl(),
		t"\tcase ", i(2, "", {key = "i2"}), t":", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tbreak;", nl(),
		t"\tdefault:", nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"\tcase ", i(1, "", {key = "i1"}), t":", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tbreak;"
	}),
	s({trig = "package", descr = "(package)", priority = -1000, trigEngine = te("w")}, {
		t"package ", i(1, "package", {key = "i1"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "cond", {key = "i1"}), t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} while (", i(1, "cond", {key = "i1"}), t")"
	}),
	s({trig = "for", descr = "(for) for (..) {..}", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"for (", i(1, "var", {key = "i1"}), t" in ", i(2, "object", {key = "i2"}), t"){", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"}"
		},
		{
			t"for each (", i(1, "var", {key = "i1"}), t" in ", i(2, "object", {key = "i2"}), t"){", nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			t"}"
		},
		{
			t"for (", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
			t"\t", i(4, "", {key = "i4"}), nl(),
			t"}"
		},
	})),
	s({trig = "get_set", descr = "(get_set)", priority = -1000, trigEngine = te("w")}, {
		t"function get ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\treturn ", i(2, "", {key = "i2"}), nl(),
		t"}", nl(),
		t"function set ", cp(1), t" (newValue) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "interface", descr = "(interface)", priority = -1000, trigEngine = te("w")}, {
		t"interface name {", nl(),
		t"\tfunction method(", i(1, "", {key = "i1"}), t"):", i(0, "returntype", {key = "i0"}), t";", nl(),
		t"}"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"} catch (error:ErrorType) {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} finally {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "forr", descr = "(forr)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "i", {key = "i1"}), t" = ", i(2, "0", {key = "i2"}), t"; ", cp(1), t" < 10", t"; ", cp(1), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"}"
	}),
	s({trig = "t", descr = "(t) Ternary: `condition ? true : false`", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ? ", i(2, "", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", i(3, "", {key = "i3"}), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "FlxSprite", descr = "(FlxSprite)", priority = -1000, trigEngine = te("w")}, {
		t"package", nl(),
		t"{", nl(),
		t"\timport org.flixel.*", nl(),
		nl(),
		t"\tpublic class ", i(1, "ClassName", {key = "i1"}), t" extends ", i(2, "FlxSprite", {key = "i2"}), nl(),
		t"\t{", nl(),
		t"\t\tpublic function ", cp(1), t"(", i(3, " X:Number, Y:Number", {key = "i3"}), t"):void", nl(),
		t"\t\t{", nl(),
		t"\t\t\tsuper(X,Y);", nl(),
		t"\t\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\toverride public function update():void", nl(),
		t"\t\t{", nl(),
		t"\t\t\tsuper.update();", nl(),
		t"\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t"}"
	}),
})
