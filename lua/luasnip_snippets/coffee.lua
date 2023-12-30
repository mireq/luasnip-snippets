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
	2,
	1,
	3,
	1,
	3,
	2,
	2,
	3,
	4,
	4,
	3,
	4,
	{{1, 1}, {2, 2}, {3, 4}, {4, 5}},
	3,
	{{1, 2}},
	1,
	{{1, 2}},
	2,
	2,
	4,
	4,
	1,
	0,
	0,
	0,
	2,
	3,
	2,
	4,
	2,
	3,
	3,
	4,
	3,
	3,
	4,
	4,
	5,
	2,
	3,
	3,
	3,
	2,
	3,
	3,
	3,
	1,
	2,
	3,
	4,
	2,
	2,
	2,
	6,
	1,
	2,
	2,
	2,
	2,
	2,
	6,
	1,
	1,
	2,
	1,
	3,
	2,
	2,
	3,
	5,
	2,
	3,
	2,
	0,
	2,
	1,
	1,
	2,
	1,
	3,
	2,
	1,
	1,
	2,
	2,
	2,
	2,
	2,
	1,
	1,
	3,
	2,
	5,
	0,
	2,
	2,
	2,
	1,
	1,
	2,
	3,
	4,
	2,
	2,
	2,
	3,
	2,
	3,
	1,
	4,
	1,
	2,
	3,
	2,
	3,
	4,
	2,
	2,
	2,
	3,
	1,
	2,
	1,
	1,
	1,
	2,
	2,
	0,
	3,
	2,
	1,
	2,
	1,
	3,
	2,
	2,
	3,
	2,
	2,
	2,
	2,
	2,
	2,
	1,
	2,
	2,
	0,
	2,
	2,
	2,
	4,
	2,
	1,
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
	2,
	2,
	2,
	1,
	3,
	2,
	2,
	0,
	3,
	3,
	1,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	3,
	2,
	4,
	1,
	1,
	4,
	3,
	1,
	1,
	1,
	2,
	2,
	3,
	1,
	1,
	1,
	2,
	2,
	2,
	2,
	3,
	3,
	2,
	2,
	2,
	3,
	3,
	0,
	1,
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
	2,
	2,
	2,
	2,
	1,
	1,
	2,
	2,
	2,
	1,
	3,
	2,
	4,
	2,
	2,
	2,
	2,
	0,
	0,
	4,
	2,
	2,
	2,
	2,
	1,
	1,
	2,
	4,
	1,
	2,
	1,
	2,
	2,
	2,
}
ls.add_snippets("coffee", {
	s({trig = "fun", descr = "(fun) \"Function\"", priority = -50, trigEngine = te("b")}, {
		i(1, "name", {key = "i1"}), t" = ", f(function(args, snip) return c_py({"coffee", 1}, "snip.rv = \"(\" if t[2] else \"\"", python_globals, args, snip, "", am[1]) end, ae(am[1])), i(2, "args", {key = "i2"}), f(function(args, snip) return c_py({"coffee", 1}, "snip.rv = \") \" if t[2] else \"\"", python_globals, args, snip, "", am[1]) end, ae(am[1])), t"->", nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "bfun", descr = "(bfun) \"Function (bound)\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"coffee", 2}, "snip.rv = \"(\" if t[1] else \"\"", python_globals, args, snip, "", am[2]) end, ae(am[2])), i(1, "args", {key = "i1"}), f(function(args, snip) return c_py({"coffee", 2}, "snip.rv = \") \" if t[1] else \"\"", python_globals, args, snip, "", am[2]) end, ae(am[2])), t"=>", f(function(args, snip) return c_py({"coffee", 2}, "snip.rv = \" \" if t[2] and not t[2].startswith(\"\\n\") else \"\"", python_globals, args, snip, "", am[2]) end, ae(am[2])), i(2, "expr", {key = "i2"})
	}),
	s({trig = "if", descr = "(if) \"If\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "ife", descr = "(ife) \"If .. Else\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(3, "# body...", {key = "i3"})
	}),
	s({trig = "elif", descr = "(elif) \"Else if\"", priority = -50, trigEngine = te("b")}, {
		t"else if ", i(1, "condition", {key = "i1"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "ifte", descr = "(ifte) \"Ternary if\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), t" then ", i(2, "value", {key = "i2"}), t" else ", i(3, "other", {key = "i3"})
	}),
	s({trig = "unl", descr = "(unl) \"Unless\"", priority = -50, trigEngine = te("b")}, {
		i(1, "action", {key = "i1"}), t" unless ", i(2, "condition", {key = "i2"})
	}),
	s({trig = "fora", descr = "(fora) \"Array Comprehension\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "foro", descr = "(foro) \"Object Comprehension\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "key", {key = "i1"}), t", ", i(2, "value", {key = "i2"}), t" of ", i(3, "Object", {key = "i3"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "forr", descr = "(forr) \"Range Comprehension (inclusive)\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in [", i(2, "start", {key = "i2"}), t"..", i(3, "finish", {key = "i3"}), t"]", f(function(args, snip) return c_py({"coffee", 10}, "snip.rv = \" by \" if t[4] else \"\"", python_globals, args, snip, "", am[10]) end, ae(am[10])), i(4, "step", {key = "i4"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "forrex", descr = "(forrex) \"Range Comprehension (exclusive)\"", priority = -50, trigEngine = te("b")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in [", i(2, "start", {key = "i2"}), t"...", i(3, "finish", {key = "i3"}), t"]", f(function(args, snip) return c_py({"coffee", 11}, "snip.rv = \" by \" if t[4] else \"\"", python_globals, args, snip, "", am[11]) end, ae(am[11])), i(4, "step", {key = "i4"}), nl(),
		t"\t", i(0, "# body...", {key = "i0"})
	}),
	s({trig = "swi", descr = "(swi) \"Switch\"", priority = -50, trigEngine = te("b")}, {
		t"switch ", i(1, "object", {key = "i1"}), nl(),
		t"\twhen ", i(2, "value", {key = "i2"}), nl(),
		t"\t\t", i(3, "# body...", {key = "i3"}), nl(),
		t"\telse", nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "swit", descr = "(swit) \"Switch when .. then\"", priority = -50, trigEngine = te("b")}, {
		t"switch ", i(1, "object", {key = "i1"}), nl(),
		t"\twhen ", i(2, "condition", {key = "i2"}), f(function(args, snip) return c_py({"coffee", 13}, "snip.rv = \" then \" if t[3] else \"\"", python_globals, args, snip, "", am[13]) end, ae(am[13])), i(3, "value", {key = "i3"}), nl(),
		t"\telse", f(function(args, snip) return c_py({"coffee", 13}, "snip.rv = \" \" if t[4] and not t[4].startswith(\"\\n\") else \"\"", python_globals, args, snip, "", am[13]) end, ae(am[13])), i(4, "value", {key = "i4"})
	}),
	s({trig = "cla", descr = "(cla) \"Class\"", priority = -50, trigEngine = te("b")}, {
		t"class ", i(1, "ClassName", {key = "i1"}), f(function(args, snip) return c_py({"coffee", 14}, "snip.rv = \" extends \" if t[2] else \"\"", python_globals, args, snip, "", am[14]) end, ae(am[14])), i(2, "Ancestor", {key = "i2"}), nl(),
		nl(),
		t"\t", t"constructor:", f(function(args, snip) return c_py({"coffee", 14}, "snip.rv = \" (\" if t[4] else \"\"", python_globals, args, snip, "", am[14]) end, ae(am[14])), i(3, "args", {key = "i3"}), f(function(args, snip) return c_py({"coffee", 14}, "snip.rv = \")\" if t[4] else \"\"", python_globals, args, snip, "", am[14]) end, ae(am[14])), t" ->", nl(),
t"\t", i(4, "# body...", {key = "i4"}), nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "try", descr = "(try) \"Try .. Catch\"", priority = -50, trigEngine = te("b")}, {
		t"try", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"catch ", i(2, "error", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "req", descr = "(req) \"Require\"", priority = -50, trigEngine = te("b")}, {
		tr(1, "^\'?(\\w+)\'?$", "\\L$1\\E"), t" = require(", t"\'", i(1, "sys", {key = "i1"}), t"\'", t")"
	}),
	s({trig = "#", descr = "(#) \"Interpolated Code\"", priority = -50, trigEngine = te("i")}, {
		t"#{", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "log", descr = "(log) \"Log\"", priority = -50, trigEngine = te("b")}, {
		t"console.log ", t"\"", i(1, "msg", {key = "i1"}), t"\""
	}),
	s({trig = "kv", descr = "(kv) \"Key:value for object\"", priority = -50, trigEngine = te("b")}, {
		i(1, "key", {key = "i1"}), t":", i(2, "value", {key = "i2"})
	}),
	s({trig = "forindo", descr = "(forindo)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), nl(),
		t"\tdo (", cp(1), t") ->", nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "forrb", descr = "(forrb)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in [", i(2, "start", {key = "i2"}), t"..", i(3, "finish", {key = "i3"}), t"] by ", i(4, "step", {key = "i4"}), nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "forrexb", descr = "(forrexb)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "name", {key = "i1"}), t" in [", i(2, "start", {key = "i2"}), t"...", i(3, "finish", {key = "i3"}), t"] by ", i(4, "step", {key = "i4"}), nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"else if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		i(0, "root", {key = "i0"}), t" = exports ? this", nl()
	}),
	s({trig = "jsonp", descr = "(jsonp)", priority = -1000, trigEngine = te("w")}, {
		t"JSON.parse ", i(0, "jstr", {key = "i0"})
	}),
	s({trig = "jsons", descr = "(jsons)", priority = -1000, trigEngine = te("w")}, {
		t"JSON.stringify ", i(0, "object", {key = "i0"})
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"define [\"", i(1, "#dependencies1", {key = "i1"}), t"\"], (", i(2, "#dependencies2", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "TARGET", {key = "i0"}), nl()
	}),
	s({trig = "defn", descr = "(defn)", priority = -1000, trigEngine = te("w")}, {
		t"define \"", i(1, "#name", {key = "i1"}), t"\", [\"", i(2, "#dependencies1", {key = "i2"}), t"\"], (", i(3, "#dependencies2", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "TARGET", {key = "i0"}), nl()
	}),
	s({trig = "reqjs", descr = "(reqjs)", priority = -1000, trigEngine = te("w")}, {
		t"require [\"", i(1, "#dependencies1", {key = "i1"}), t"\"], (", i(2, "#dependencies2", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "TARGET", {key = "i0"})
	}),
	s({trig = "ngc", descr = "(ngc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "controllerName", {key = "i1"}), t" = (", i(2, "scope", {key = "i2"}), t", ", i(3, "injectables", {key = "i3"}), t") ->", nl(),
		t"\t", i(4, "", {key = "i4"})
	}),
	s({trig = "ngfor", descr = "(ngfor)", priority = -1000, trigEngine = te("w")}, {
		t"angular.forEach ", i(1, "iterateOver", {key = "i1"}), t", (value, key) ->", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ngm", descr = "(ngm)", priority = -1000, trigEngine = te("w")}, {
		t"angular.module \'", i(1, "moduleName", {key = "i1"}), t"\', [", i(2, "moduleDependencies", {key = "i2"}), t"]", nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "ngma", descr = "(ngma)", priority = -1000, trigEngine = te("w")}, {
		i(1, "moduleName", {key = "i1"}), t" = angular.module \'", cp(1), t"\', [", i(2, "moduleDeps", {key = "i2"}), t"]", nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "ngmc", descr = "(ngmc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "moduleName", {key = "i1"}), t" = angular.module(\'", cp(1), t"\', [", i(2, "moduleDeps", {key = "i2"}), t"], (", i(3, "configDeps", {key = "i3"}), t") ->", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t")"
	}),
	s({trig = "ngmfa", descr = "(ngmfa)", priority = -1000, trigEngine = te("w")}, {
		t"factory \'", i(1, "factoryName", {key = "i1"}), t"\', (", i(2, "dependencies", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "ngms", descr = "(ngms)", priority = -1000, trigEngine = te("w")}, {
		t"service \'", i(1, "serviceName", {key = "i1"}), t"\', (", i(2, "injectables", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "ngmfi", descr = "(ngmfi)", priority = -1000, trigEngine = te("w")}, {
		t"filter \'", i(1, "filterName", {key = "i1"}), t"\', (", i(2, "injectables", {key = "i2"}), t") ->", nl(),
		t"\t(input, ", i(3, "args", {key = "i3"}), t") ->", nl(),
		t"\t\t", i(4, "", {key = "i4"})
	}),
	s({trig = "ngrw", descr = "(ngrw)", priority = -1000, trigEngine = te("w")}, {
		t"$routeProvider.when \'", i(1, "url", {key = "i1"}), t"\',", nl(),
		t"\ttemplateUrl: \'", i(2, "templateUrl", {key = "i2"}), t"\'", nl(),
		t"\tcontroller: \'", i(3, "controller", {key = "i3"}), t"\'", nl(),
		i(4, "", {key = "i4"})
	}),
	s({trig = "ngrwr", descr = "(ngrwr)", priority = -1000, trigEngine = te("w")}, {
		t"$routeProvider.when \'", i(1, "url", {key = "i1"}), t"\',", nl(),
		t"\ttemplateUrl: \'", i(2, "templateUrl", {key = "i2"}), t"\'", nl(),
		t"\tcontroller: \'", i(3, "controller", {key = "i3"}), t"\'", nl(),
		t"\tresolve:", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		i(5, "", {key = "i5"})
	}),
	s({trig = "ngro", descr = "(ngro)", priority = -1000, trigEngine = te("w")}, {
		t"$routeProvider.otherwise redirectTo: \'", i(1, "url", {key = "i1"}), t"\'", nl(),
		i(2, "", {key = "i2"})
	}),
	s({trig = "$f", descr = "($f)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.", i(1, "functionName", {key = "i1"}), t" = (", i(2, "args", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "$v", descr = "($v)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.", i(1, "variable", {key = "i1"}), t" = ", i(2, "value", {key = "i2"}), nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "$va", descr = "($va)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.", i(1, "variable", {key = "i1"}), t" = ", i(2, "variable", {key = "i2"}), nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "$w", descr = "($w)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.$watch \'", i(1, "watchExpr", {key = "i1"}), t"\', (newValue, oldValue) ->", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "$on", descr = "($on)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.$on \'", i(1, "eventName", {key = "i1"}), t"\', (event, ", i(2, "args", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "$b", descr = "($b)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.$broadcast \'", i(1, "eventName", {key = "i1"}), t"\', ", i(2, "eventArgs", {key = "i2"}), nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "$e", descr = "($e)", priority = -1000, trigEngine = te("w")}, {
		t"$scope.$emit \'", i(1, "eventName", {key = "i1"}), t"\', ", i(2, "eventArgs", {key = "i2"}), nl(),
		i(3, "", {key = "i3"})
	}),
	s({trig = "ngdcf", descr = "(ngdcf)", priority = -1000, trigEngine = te("w")}, {
		t"compile = (tElement, tAttrs, transclude) ->", nl(),
		t"\t(scope, element, attrs) ->", nl(),
		t"\t\t", i(1, "", {key = "i1"})
	}),
	s({trig = "ngdlf", descr = "(ngdlf)", priority = -1000, trigEngine = te("w")}, {
		t"(scope, element, attrs", i(1, "ctrl", {key = "i1"}), t") ->", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ngdc", descr = "(ngdc)", priority = -1000, trigEngine = te("w")}, {
		t"directive \'", i(1, "directiveName", {key = "i1"}), t"\', factory = (", i(2, "injectables", {key = "i2"}), t") ->", nl(),
		t"\tdirectiveDefinitionObject =", nl(),
		t"\t\t", i(3, "directiveAttrs", {key = "i3"}), nl(),
		t"\t\tcompile: compile = (tElement, tAttrs, transclude) ->", nl(),
		t"\t\t\t(scope, element, attrs) ->", nl(),
		t"\tdirectiveDefinitionObject"
	}),
	s({trig = "ngdl", descr = "(ngdl)", priority = -1000, trigEngine = te("w")}, {
		t".directive(\'", i(1, "directiveName", {key = "i1"}), t"\', (", i(2, "directiveDeps", {key = "i2"}), t") ->", nl(),
		t"\t(scope, element, attrs", i(3, "ctrl", {key = "i3"}), t") ->", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl()
	}),
	s({trig = "add", descr = "(add)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".add(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "addClass", descr = "(addClass)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".addClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "after", descr = "(after)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".after(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "ajax", descr = "(ajax)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajax", nl(),
		t"  url: \"", i(1, "mydomain.com/url", {key = "i1"}), t"\"", nl(),
		t"  type: \"", i(2, "POST", {key = "i2"}), t"\"", nl(),
		t"  dataType: \"", i(3, "xml/html/script/json", {key = "i3"}), t"\"", nl(),
		t"  data: ", i(4, "data", {key = "i4"}), nl(),
		t"  complete: (jqXHR, textStatus) ->", nl(),
		t"\t", i(5, "// callback", {key = "i5"}), nl(),
		t"  success: (data, textStatus, jqXHR) ->", nl(),
		t"\t", i(6, "// success callback", {key = "i6"}), nl(),
		t"  error: (jqXHR, textStatus, errorThrown) ->", nl(),
		t"\t", i(0, "// error callback", {key = "i0"})
	}),
	s({trig = "ajaxcomplete", descr = "(ajaxcomplete)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxComplete (", i(1, "e", {key = "i1"}), t", xhr, settings) ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "ajaxerror", descr = "(ajaxerror)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxError (", i(1, "e", {key = "i1"}), t", xhr, settings, thrownError) ->", nl(),
		t"\t", i(2, "// error callback", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxget", descr = "(ajaxget)", priority = -1000, trigEngine = te("w")}, {
		t"$.get \'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\t(data, textStatus, jqXHR) ->", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"})
	}),
	s({trig = "ajaxpost", descr = "(ajaxpost)", priority = -1000, trigEngine = te("w")}, {
		t"$.post \'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\t(data, textStatus, jqXHR) ->", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"})
	}),
	s({trig = "ajaxprefilter", descr = "(ajaxprefilter)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxPrefilter (", i(1, "options", {key = "i1"}), t", ", i(2, "originalOptions", {key = "i2"}), t", jqXHR) ->", nl(),
		t"\t", i(0, " // Modify options, control originalOptions, store jqXHR, etc", {key = "i0"})
	}),
	s({trig = "ajaxsend", descr = "(ajaxsend)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".ajaxSend (", i(1, "request, settings", {key = "i1"}), t") ->", nl(),
		t"\t", i(2, "// error callback", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxsetup", descr = "(ajaxsetup)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxSetup({", nl(),
		t"\turl: \"", i(1, "mydomain.com/url", {key = "i1"}), t"\",", nl(),
		t"\ttype: \"", i(2, "POST", {key = "i2"}), t"\",", nl(),
		t"\tdataType: \"", i(3, "xml/html/script/json", {key = "i3"}), t"\",", nl(),
		t"\tdata: $.param( $(\"", i(4, "Element or Expression", {key = "i4"}), t"\") ),", nl(),
		t"\tcomplete: (jqXHR, textStatus) ->", nl(),
		t"\t\t", i(5, "// callback", {key = "i5"}), nl(),
		t"\t,", nl(),
		t"\tsuccess: (data, textStatus, jqXHR) ->", nl(),
		t"\t\t", i(6, "// success callback", {key = "i6"}), nl(),
		t"\t,", nl(),
		t"\terror: (jqXHR, textStatus, errorThrown) ->", nl(),
		t"\t\t", i(0, "// error callback", {key = "i0"}), nl(),
		t"})"
	}),
	s({trig = "ajaxstart", descr = "(ajaxstart)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxStart ->", nl(),
		t"\t", i(1, "// handler for when an AJAX call is started and no other AJAX calls are in progress", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxstop", descr = "(ajaxstop)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxStop ->", nl(),
		t"\t", i(1, "// handler for when all AJAX calls have been completed", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ajaxsuccess", descr = "(ajaxsuccess)", priority = -1000, trigEngine = te("w")}, {
		t"$.ajaxSuccess (", i(1, "e", {key = "i1"}), t", xhr, settings) ->", nl(),
		t"\t", i(2, "// handler for when any AJAX call is successfully completed", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "andself", descr = "(andself)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".andSelf()"
	}),
	s({trig = "animate", descr = "(animate)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".animate({", i(2, "param1: value1, param2: value2", {key = "i2"}), t"}, ", i(3, "speed", {key = "i3"}), t")"
	}),
	s({trig = "append", descr = "(append)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".append(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "appendTo", descr = "(appendTo)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".appendTo(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "attr", descr = "(attr)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".attr(\'", i(2, "attribute", {key = "i2"}), t"\', \'", i(3, "value", {key = "i3"}), t"\')"
	}),
	s({trig = "attrm", descr = "(attrm)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".attr({\'", i(2, "attr1", {key = "i2"}), t"\': \'", i(3, "value1", {key = "i3"}), t"\', \'", i(4, "attr2", {key = "i4"}), t"\': \'", i(5, "value2", {key = "i5"}), t"\'})"
	}),
	s({trig = "before", descr = "(before)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".before(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "bind", descr = "(bind)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".bind(\'", i(2, "event name", {key = "i2"}), t"\', (", i(3, "e", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "blur", descr = "(blur)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".blur (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "C", descr = "(C)", priority = -1000, trigEngine = te("w")}, {
		t"$.Callbacks()"
	}),
	s({trig = "Cadd", descr = "(Cadd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".add(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Cdis", descr = "(Cdis)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".disable()"
	}),
	s({trig = "Cempty", descr = "(Cempty)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".empty()"
	}),
	s({trig = "Cfire", descr = "(Cfire)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fire(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Cfired", descr = "(Cfired)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fired()"
	}),
	s({trig = "Cfirew", descr = "(Cfirew)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".fireWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Chas", descr = "(Chas)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".has(", i(2, "callback", {key = "i2"}), t")"
	}),
	s({trig = "Clock", descr = "(Clock)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".lock()"
	}),
	s({trig = "Clocked", descr = "(Clocked)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".locked()"
	}),
	s({trig = "Crem", descr = "(Crem)", priority = -1000, trigEngine = te("w")}, {
		i(1, "callbacks", {key = "i1"}), t".remove(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "change", descr = "(change)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".change (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "children", descr = "(children)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".children(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "clearq", descr = "(clearq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".clearQueue(", i(2, "\'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "click", descr = "(click)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".click (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "clone", descr = "(clone)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".clone()"
	}),
	s({trig = "contains", descr = "(contains)", priority = -1000, trigEngine = te("w")}, {
		t"$.contains(", i(1, "container", {key = "i1"}), t", ", i(0, "contents", {key = "i0"}), t")"
	}),
	s({trig = "css", descr = "(css)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".css(\'", i(2, "attribute", {key = "i2"}), t"\', \'", i(3, "value", {key = "i3"}), t"\')"
	}),
	s({trig = "csshooks", descr = "(csshooks)", priority = -1000, trigEngine = te("w")}, {
		t"$.cssHooks[\'", i(1, "CSS prop", {key = "i1"}), t"\'] = {", nl(),
		t"\tget: (elem, computed, extra) ->", nl(),
		t"\t\t", i(2, " // handle getting the CSS property", {key = "i2"}), nl(),
		t"\tset: (elem, value) ->", nl(),
		t"\t\t", i(0, " // handle setting the CSS value", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cssm", descr = "(cssm)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".css({", i(2, "attribute1", {key = "i2"}), t": \'", i(3, "value1", {key = "i3"}), t"\', ", i(4, "attribute2", {key = "i4"}), t": \'", i(5, "value2", {key = "i5"}), t"\'})"
	}),
	s({trig = "D", descr = "(D)", priority = -1000, trigEngine = te("w")}, {
		t"$.Deferred()"
	}),
	s({trig = "Dalways", descr = "(Dalways)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".always(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Ddone", descr = "(Ddone)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".done(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Dfail", descr = "(Dfail)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".fail(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Disrej", descr = "(Disrej)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".isRejected()"
	}),
	s({trig = "Disres", descr = "(Disres)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".isResolved()"
	}),
	s({trig = "Dnotify", descr = "(Dnotify)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".notify(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Dnotifyw", descr = "(Dnotifyw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".notifyWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dpipe", descr = "(Dpipe)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".then(", i(2, "doneFilter", {key = "i2"}), t", ", i(3, "failFilter", {key = "i3"}), t", ", i(4, "progressFilter", {key = "i4"}), t")"
	}),
	s({trig = "Dprog", descr = "(Dprog)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".progress(", i(2, "callbacks", {key = "i2"}), t")"
	}),
	s({trig = "Dprom", descr = "(Dprom)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".promise(", i(2, "target", {key = "i2"}), t")"
	}),
	s({trig = "Drej", descr = "(Drej)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".reject(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Drejw", descr = "(Drejw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".rejectWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dres", descr = "(Dres)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".resolve(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "Dresw", descr = "(Dresw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".resolveWith(", i(2, "this", {key = "i2"}), t", ", i(3, "args", {key = "i3"}), t")"
	}),
	s({trig = "Dstate", descr = "(Dstate)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".state()"
	}),
	s({trig = "Dthen", descr = "(Dthen)", priority = -1000, trigEngine = te("w")}, {
		i(1, "deferred", {key = "i1"}), t".then(", i(2, "doneCallbacks", {key = "i2"}), t", ", i(3, "failCallbacks", {key = "i3"}), t", ", i(4, "progressCallbacks", {key = "i4"}), t")"
	}),
	s({trig = "Dwhen", descr = "(Dwhen)", priority = -1000, trigEngine = te("w")}, {
		t"$.when(", i(1, "deferreds", {key = "i1"}), t")"
	}),
	s({trig = "data", descr = "(data)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".data(", i(2, "obj", {key = "i2"}), t")"
	}),
	s({trig = "dataa", descr = "(dataa)", priority = -1000, trigEngine = te("w")}, {
		t"$.data(\'", i(1, "selector expression", {key = "i1"}), t"\', \'", i(2, "key", {key = "i2"}), t"\'", i(3, ", \'value\'", {key = "i3"}), t")"
	}),
	s({trig = "dblclick", descr = "(dblclick)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".dblclick (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "delay", descr = "(delay)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".delay(\'", i(2, "slow/400/fast", {key = "i2"}), t"\'", i(3, ", \'queue name\'", {key = "i3"}), t")"
	}),
	s({trig = "dele", descr = "(dele)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".delegate \'", i(2, "selector expression", {key = "i2"}), t"\', \'", i(3, "event name", {key = "i3"}), t"\', (", i(4, "e", {key = "i4"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "deq", descr = "(deq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".dequeue(", i(2, "\'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "deqq", descr = "(deqq)", priority = -1000, trigEngine = te("w")}, {
		t"$.dequeue(\'", i(1, "selector expression", {key = "i1"}), t"\'", i(2, ", \'queue name\'", {key = "i2"}), t")"
	}),
	s({trig = "detach", descr = "(detach)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".detach(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "die", descr = "(die)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".die(", i(2, "event", {key = "i2"}), t", ", i(3, "handler", {key = "i3"}), t")"
	}),
	s({trig = "each", descr = "(each)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".each (index) ->", nl(),
		t"\t", i(0, "this.innerHTML = this + \" is the element, \" + index + \" is the position\"", {key = "i0"})
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"$(\'<", i(1, "", {key = "i1"}), t"/>\'", i(2, ", {}", {key = "i2"}), t")"
	}),
	s({trig = "eltrim", descr = "(eltrim)", priority = -1000, trigEngine = te("w")}, {
		t"$.trim(\'", i(1, "string", {key = "i1"}), t"\')"
	}),
	s({trig = "empty", descr = "(empty)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".empty()"
	}),
	s({trig = "end", descr = "(end)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".end()"
	}),
	s({trig = "eq", descr = "(eq)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".eq(", i(2, "element index", {key = "i2"}), t")"
	}),
	s({trig = "error", descr = "(error)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".error (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "eventsmap", descr = "(eventsmap)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t:f", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "extend", descr = "(extend)", priority = -1000, trigEngine = te("w")}, {
		t"$.extend(", i(1, "true, ", {key = "i1"}), i(2, "target", {key = "i2"}), t", ", i(3, "obj", {key = "i3"}), t")"
	}),
	s({trig = "fadein", descr = "(fadein)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeIn(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "fadeinc", descr = "(fadeinc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeIn \'slow/400/fast\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "fadeout", descr = "(fadeout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeOut(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "fadeoutc", descr = "(fadeoutc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeOut \'slow/400/fast\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "fadeto", descr = "(fadeto)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeTo(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', ", i(3, "0.5", {key = "i3"}), t")"
	}),
	s({trig = "fadetoc", descr = "(fadetoc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".fadeTo \'slow/400/fast\', ", i(2, "0.5", {key = "i2"}), t", ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".filter(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "filtert", descr = "(filtert)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".filter (", i(2, "index", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "", {key = "i3"})
	}),
	s({trig = "find", descr = "(find)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".find(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "focus", descr = "(focus)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focus (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "focusin", descr = "(focusin)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focusIn (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "focusout", descr = "(focusout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".focusOut (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "get", descr = "(get)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".get(", i(2, "element index", {key = "i2"}), t")"
	}),
	s({trig = "getjson", descr = "(getjson)", priority = -1000, trigEngine = te("w")}, {
		t"$.getJSON \'", i(1, "mydomain.com/url", {key = "i1"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\t(data, textStatus, jqXHR) ->", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"})
	}),
	s({trig = "getscript", descr = "(getscript)", priority = -1000, trigEngine = te("w")}, {
		t"$.getScript \'", i(1, "mydomain.com/url", {key = "i1"}), t"\', (script, textStatus, jqXHR) ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "grep", descr = "(grep)", priority = -1000, trigEngine = te("w")}, {
		t"$.grep(", i(1, "array", {key = "i1"}), t", (item, index) >", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		i(0, ", true", {key = "i0"}), t")"
	}),
	s({trig = "hasc", descr = "(hasc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hasClass(\'", i(2, "className", {key = "i2"}), t"\')"
	}),
	s({trig = "hasd", descr = "(hasd)", priority = -1000, trigEngine = te("w")}, {
		t"$.hasData(\'", i(0, "selector expression", {key = "i0"}), t"\')"
	}),
	s({trig = "height", descr = "(height)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".height(", i(2, "integer", {key = "i2"}), t")"
	}),
	s({trig = "hide", descr = "(hide)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hide(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "hidec", descr = "(hidec)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hide \'", i(2, "slow/400/fast", {key = "i2"}), t"\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "hover", descr = "(hover)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".hover (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "// event handler", {key = "i3"}), nl(),
		t", (", cp(2), t") ->", nl(),
		t"\t", i(4, "// event handler", {key = "i4"})
	}),
	s({trig = "html", descr = "(html)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".html(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "inarr", descr = "(inarr)", priority = -1000, trigEngine = te("w")}, {
		t"$.inArray(", i(1, "value", {key = "i1"}), t", ", i(0, "array", {key = "i0"}), t")"
	}),
	s({trig = "insa", descr = "(insa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".insertAfter(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "insb", descr = "(insb)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".insertBefore(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".is(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "isarr", descr = "(isarr)", priority = -1000, trigEngine = te("w")}, {
		t"$.isArray(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isempty", descr = "(isempty)", priority = -1000, trigEngine = te("w")}, {
		t"$.isEmptyObject(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isfunc", descr = "(isfunc)", priority = -1000, trigEngine = te("w")}, {
		t"$.isFunction(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isnum", descr = "(isnum)", priority = -1000, trigEngine = te("w")}, {
		t"$.isNumeric(", i(1, "value", {key = "i1"}), t")"
	}),
	s({trig = "isobj", descr = "(isobj)", priority = -1000, trigEngine = te("w")}, {
		t"$.isPlainObject(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "iswin", descr = "(iswin)", priority = -1000, trigEngine = te("w")}, {
		t"$.isWindow(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "isxml", descr = "(isxml)", priority = -1000, trigEngine = te("w")}, {
		t"$.isXMLDoc(", i(1, "node", {key = "i1"}), t")"
	}),
	s({trig = "jj", descr = "(jj)", priority = -1000, trigEngine = te("w")}, {
		t"$(\'", i(1, "selector", {key = "i1"}), t"\')"
	}),
	s({trig = "kdown", descr = "(kdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keydown (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "kpress", descr = "(kpress)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keypress (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "kup", descr = "(kup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".keyup (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "last", descr = "(last)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".last(\'", i(1, "selector expression", {key = "i1"}), t"\')"
	}),
	s({trig = "live", descr = "(live)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".live \'", i(2, "events", {key = "i2"}), t"\', (", i(3, "e", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "load", descr = "(load)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".load (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "loadf", descr = "(loadf)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".load(\'", i(2, "mydomain.com/url", {key = "i2"}), t"\',", nl(),
		t"\t", i(2, "{ param1: value1 },", {key = "i2"}), nl(),
		t"\t(responseText, textStatus, xhr) ->", nl(),
		t"\t\t", i(0, "// success callback", {key = "i0"}), nl(),
		t"})"
	}),
	s({trig = "makearray", descr = "(makearray)", priority = -1000, trigEngine = te("w")}, {
		t"$.makeArray(", i(0, "obj", {key = "i0"}), t")"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".map (", i(2, "index", {key = "i2"}), t", ", i(3, "element", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "mapp", descr = "(mapp)", priority = -1000, trigEngine = te("w")}, {
		t"$.map ", i(1, "arrayOrObject", {key = "i1"}), t", (", i(2, "value", {key = "i2"}), t", ", i(3, "indexOrKey", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "merge", descr = "(merge)", priority = -1000, trigEngine = te("w")}, {
		t"$.merge(", i(1, "target", {key = "i1"}), t", ", i(0, "original", {key = "i0"}), t")"
	}),
	s({trig = "mdown", descr = "(mdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mousedown (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "menter", descr = "(menter)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseenter (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "mleave", descr = "(mleave)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseleave (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "mmove", descr = "(mmove)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mousemove (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "mout", descr = "(mout)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseout (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "mover", descr = "(mover)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseover (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "mup", descr = "(mup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".mouseup (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "next", descr = "(next)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".next(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "nexta", descr = "(nexta)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".nextAll(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "nextu", descr = "(nextu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".nextUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "not", descr = "(not)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".not(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "off", descr = "(off)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".off(\'", i(2, "events", {key = "i2"}), t"\', \'", i(3, "selector expression", {key = "i3"}), t"\'", i(4, ", handler", {key = "i4"}), t")"
	}),
	s({trig = "offset", descr = "(offset)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".offset()"
	}),
	s({trig = "offsetp", descr = "(offsetp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".offsetParent()"
	}),
	s({trig = "on", descr = "(on)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".on \'", i(2, "events", {key = "i2"}), t"\', \'", i(3, "selector expression", {key = "i3"}), t"\', (", i(4, "e", {key = "i4"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "one", descr = "(one)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".one \'", i(2, "event name", {key = "i2"}), t"\', (", i(3, "e", {key = "i3"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "outerh", descr = "(outerh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".outerHeight()"
	}),
	s({trig = "outerw", descr = "(outerw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".outerWidth()"
	}),
	s({trig = "param", descr = "(param)", priority = -1000, trigEngine = te("w")}, {
		t"$.param(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "parent", descr = "(parent)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parent(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "parents", descr = "(parents)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parents(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "parentsu", descr = "(parentsu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".parentsUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "parsejson", descr = "(parsejson)", priority = -1000, trigEngine = te("w")}, {
		t"$.parseJSON(", i(1, "data", {key = "i1"}), t")"
	}),
	s({trig = "parsexml", descr = "(parsexml)", priority = -1000, trigEngine = te("w")}, {
		t"$.parseXML(", i(1, "data", {key = "i1"}), t")"
	}),
	s({trig = "pos", descr = "(pos)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".position()"
	}),
	s({trig = "prepend", descr = "(prepend)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prepend(\'", i(2, "Some text <b>and bold!</b>", {key = "i2"}), t"\')"
	}),
	s({trig = "prependto", descr = "(prependto)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prependTo(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "prev", descr = "(prev)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prev(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "preva", descr = "(preva)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prevAll(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "prevu", descr = "(prevu)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prevUntil(\'", i(2, "selector expression", {key = "i2"}), t"\'", i(3, ", \'filter expression\'", {key = "i3"}), t")"
	}),
	s({trig = "promise", descr = "(promise)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".promise(", i(2, "\'fx\'", {key = "i2"}), t", ", i(3, "target", {key = "i3"}), t")"
	}),
	s({trig = "prop", descr = "(prop)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".prop(\'", i(2, "property name", {key = "i2"}), t"\')"
	}),
	s({trig = "proxy", descr = "(proxy)", priority = -1000, trigEngine = te("w")}, {
		t"$.proxy(", i(1, "function", {key = "i1"}), t", ", i(2, "this", {key = "i2"}), t")"
	}),
	s({trig = "pushstack", descr = "(pushstack)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".pushStack(", i(2, "elements", {key = "i2"}), t")"
	}),
	s({trig = "queue", descr = "(queue)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".queue(", i(2, "name", {key = "i2"}), i(3, ", newQueue", {key = "i3"}), t")"
	}),
	s({trig = "queuee", descr = "(queuee)", priority = -1000, trigEngine = te("w")}, {
		t"$.queue(", i(1, "element", {key = "i1"}), i(2, ", name", {key = "i2"}), i(3, ", newQueue", {key = "i3"}), t")"
	}),
	s({trig = "ready", descr = "(ready)", priority = -1000, trigEngine = te("w")}, {
		t"$(() ->", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t")"
	}),
	s({trig = "rem", descr = "(rem)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".remove()"
	}),
	s({trig = "rema", descr = "(rema)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeAttr(\'", i(2, "attribute name", {key = "i2"}), t"\')"
	}),
	s({trig = "remc", descr = "(remc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "remd", descr = "(remd)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeData(\'", i(2, "key name", {key = "i2"}), t"\')"
	}),
	s({trig = "remdd", descr = "(remdd)", priority = -1000, trigEngine = te("w")}, {
		t"$.removeData(", i(1, "element", {key = "i1"}), i(2, ", \'key name", {key = "i2"}), t"\')"
	}),
	s({trig = "remp", descr = "(remp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".removeProp(\'", i(2, "property name", {key = "i2"}), t"\')"
	}),
	s({trig = "repa", descr = "(repa)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".replaceAll(", i(2, "target", {key = "i2"}), t")"
	}),
	s({trig = "repw", descr = "(repw)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".replaceWith(", i(2, "content", {key = "i2"}), t")"
	}),
	s({trig = "reset", descr = "(reset)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".reset (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "resize", descr = "(resize)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".resize (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "scroll", descr = "(scroll)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scroll (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "scrolll", descr = "(scrolll)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scrollLeft(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "scrollt", descr = "(scrollt)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".scrollTop(", i(2, "value", {key = "i2"}), t")"
	}),
	s({trig = "sdown", descr = "(sdown)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideDown(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "sdownc", descr = "(sdownc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideDown(\'", i(2, "slow/400/fast", {key = "i2"}), t"\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "select", descr = "(select)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".select (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "serialize", descr = "(serialize)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".serialize()"
	}),
	s({trig = "serializea", descr = "(serializea)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".serializeArray()"
	}),
	s({trig = "show", descr = "(show)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".show(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "showc", descr = "(showc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".show \'", i(2, "slow/400/fast", {key = "i2"}), t"\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "sib", descr = "(sib)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".siblings(\'", i(2, "selector expression", {key = "i2"}), t"\')"
	}),
	s({trig = "size", descr = "(size)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".size()"
	}),
	s({trig = "slice", descr = "(slice)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slice(", i(2, "start", {key = "i2"}), i(3, ", end", {key = "i3"}), t")"
	}),
	s({trig = "stoggle", descr = "(stoggle)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideToggle(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "stop", descr = "(stop)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".stop(\'", i(2, "queue", {key = "i2"}), t"\', ", i(3, "false", {key = "i3"}), t", ", i(4, "false", {key = "i4"}), t")"
	}),
	s({trig = "submit", descr = "(submit)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".submit (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "sup", descr = "(sup)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideUp(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "supc", descr = "(supc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".slideUp \'", i(2, "slow/400/fast", {key = "i2"}), t"\', ->", nl(),
		t"\t", i(0, "// callback", {key = "i0"})
	}),
	s({trig = "text", descr = "(text)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".text(", i(2, "\'some text\'", {key = "i2"}), t")"
	}),
	s({trig = "this", descr = "(this)", priority = -1000, trigEngine = te("w")}, {
		t"$(this)"
	}),
	s({trig = "toarr", descr = "(toarr)", priority = -1000, trigEngine = te("w")}, {
		i(0, "obj", {key = "i0"}), t".toArray()"
	}),
	s({trig = "tog", descr = "(tog)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggle  (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(3, "// event handler", {key = "i3"}), nl(),
		t", (", cp(2), t") ->", nl(),
		t"\t", i(4, "// event handler", {key = "i4"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "togclass", descr = "(togclass)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggleClass(\'", i(2, "class name", {key = "i2"}), t"\')"
	}),
	s({trig = "togsh", descr = "(togsh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".toggle(\'", i(2, "slow/400/fast", {key = "i2"}), t"\')"
	}),
	s({trig = "trig", descr = "(trig)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".trigger(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "trigh", descr = "(trigh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".triggerHandler(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "$trim", descr = "($trim)", priority = -1000, trigEngine = te("w")}, {
		t"$.trim(", i(1, "str", {key = "i1"}), t")"
	}),
	s({trig = "$type", descr = "($type)", priority = -1000, trigEngine = te("w")}, {
		t"$.type(", i(1, "obj", {key = "i1"}), t")"
	}),
	s({trig = "unbind", descr = "(unbind)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unbind(\'", i(2, "event name", {key = "i2"}), t"\')"
	}),
	s({trig = "undele", descr = "(undele)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".undelegate(", i(2, "selector expression", {key = "i2"}), t", ", i(3, "event", {key = "i3"}), t", ", i(4, "handler", {key = "i4"}), t")"
	}),
	s({trig = "uniq", descr = "(uniq)", priority = -1000, trigEngine = te("w")}, {
		t"$.unique(", i(1, "array", {key = "i1"}), t")"
	}),
	s({trig = "unload", descr = "(unload)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unload (", i(2, "e", {key = "i2"}), t") ->", nl(),
		t"\t", i(0, "// event handler", {key = "i0"})
	}),
	s({trig = "unwrap", descr = "(unwrap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".unwrap()"
	}),
	s({trig = "val", descr = "(val)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".val(\'", i(2, "text", {key = "i2"}), t"\')"
	}),
	s({trig = "width", descr = "(width)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".width(", i(2, "integer", {key = "i2"}), t")"
	}),
	s({trig = "wrap", descr = "(wrap)", priority = -1000, trigEngine = te("w")}, {
		i(1, "obj", {key = "i1"}), t".wrap(\'", i(2, "&ltdiv class=\"extra-wrapper\"&gt&lt/div&gt", {key = "i2"}), t"\')"
	}),
})
