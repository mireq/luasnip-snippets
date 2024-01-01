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
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{},
}
ls.add_snippets("dart-flutter", {
	s({trig = "stless", descr = "(stless)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends StatelessWidget {", nl(),
		t"\tconst ", cp(1), t"({super.key});", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tWidget build(BuildContext context) {", nl(),
		t"\t\treturn Container(", nl(),
		t"\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "stful", descr = "(stful)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends StatefulWidget {", nl(),
		t"\tconst ", cp(1), t"({super.key});", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tState<", cp(1), t"> createState() => _", cp(1), t"State();", nl(),
		t"}", nl(),
		nl(),
		t"class _", cp(1), t"State extends State<", cp(1), t"> {", nl(),
		t"\t@override", nl(),
		t"\tWidget build(BuildContext context) {", nl(),
		t"\t\treturn Container(", nl(),
		t"\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "stanim", descr = "(stanim)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends StatefulWidget {", nl(),
		t"\tconst ", cp(1), t"({super.key});", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tState<", cp(1), t"> createState() => _", cp(1), t"State();", nl(),
		t"}", nl(),
		nl(),
		t"class _", cp(1), t"State extends State<", cp(1), t">", nl(),
		t"\t\twith SingleTickerProviderStateMixin {", nl(),
		t"\tAnimationController _controller;", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tvoid initState() {", nl(),
		t"\t\tsuper.initState();", nl(),
		t"\t\t_controller = AnimationController(vsync: this);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tvoid dispose() {", nl(),
		t"\t\tsuper.dispose();", nl(),
		t"\t\t_controller.dispose();", nl(),
		t"\t}", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tWidget build(BuildContext context) {", nl(),
		t"\t\treturn Container(", nl(),
		t"\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "fsa", descr = "(fsa)", priority = -1000, trigEngine = te("w")}, {
		t"void main() {", nl(),
		t"\trunApp(", nl(),
		t"\t\tMaterialApp(", nl(),
		t"\t\t\ttitle: \'Flutter Demo\',", nl(),
		t"\t\t\ttheme: ThemeData(", nl(),
		t"\t\t\t\tprimarySwatch: Colors.blue,", nl(),
		t"\t\t\t),", nl(),
		t"\t\t\tdebugShowCheckedModeBanner: false,", nl(),
		t"\t\t\thome: const HomePage(),", nl(),
		t"\t\t),", nl(),
		t"\t);", nl(),
		t"}", nl(),
		nl(),
		t"class HomePage extends StatelessWidget {", nl(),
		t"\tconst HomePage({Key? key}) : super(key: key);", nl(),
		nl(),
		t"\t@override", nl(),
		t"\tWidget build(BuildContext context) {", nl(),
		t"\t\treturn Scaffold(", nl(),
		t"\t\t\tappBar: AppBar(", nl(),
		t"\t\t\t\ttitle: const Text(\'Home Page\'),", nl(),
		t"\t\t\t),", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}"
	}),
})
