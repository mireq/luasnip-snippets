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
	{1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{},
	{},
	{},
	{0},
	{0, 1},
	{0, 1},
	{},
	{0},
	{0},
	{1},
	{},
	{1, 2},
	{0, 1},
	{0, 1, 2},
	{0},
	{0},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5},
	{1, 2},
	{1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{1},
	{0},
	{1, 2},
	{1},
	{0},
	{0},
	{},
	{0, 1, 2, 3},
	{},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{1, 2},
	{},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{1},
	{1, 2},
	{1},
	{1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{1, 2},
	{0, 1},
	{1},
	{1},
}
ls.add_snippets("go", {
	s({trig = "v", descr = "(v) \"shorthand variable declaration\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" := ", i(2, "", {key = "i2"}), nl()
	}),
	s({trig = "vr", descr = "(vr) \"variable initialization\"", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "t", {key = "i1"}), t" ", i(0, "string", {key = "i0"}), nl()
	}),
	s({trig = "var", descr = "(var) \"Variable declaration\"", priority = -50, trigEngine = te("b")}, {
		t"var ", i(1, "name", {key = "i1"}), tr(2, "(.+)", " "), i(2, "type", {key = "i2"}), c(3, {{t" = ", i(1, "value", {key = "i0"})}, {i(1, jt({" = ", "value"}))}}, {key = "i3"})
	}),
	s({trig = "vars", descr = "(vars) \"Variables declaration\"", priority = -50, trigEngine = te("b")}, {
		t"var (", nl(),
		t"\t", i(1, "name", {key = "i1"}), tr(2, "(.+)", " "), i(2, "type", {key = "i2"}), c(3, {{t" = ", i(1, "value", {key = "i0"}), t" "}, {i(1, jt({" = ", "value", " "}))}}, {key = "i3"}), nl(),
		t")"
	}),
	s({trig = "ap", descr = "(ap) \"append\"", priority = -1000, trigEngine = te("w")}, {
		t"append(", i(1, "slice", {key = "i1"}), t", ", i(0, "value", {key = "i0"}), t")", nl()
	}),
	s({trig = "bl", descr = "(bl) \"bool\"", priority = -1000, trigEngine = te("w")}, {
		t"bool", nl()
	}),
	s({trig = "bt", descr = "(bt) \"byte\"", priority = -1000, trigEngine = te("w")}, {
		t"byte", nl()
	}),
	s({trig = "br", descr = "(br) \"break\"", priority = -1000, trigEngine = te("w")}, {
		t"break", nl()
	}),
	s({trig = "ch", descr = "(ch) \"channel\"", priority = -1000, trigEngine = te("w")}, {
		t"chan ", i(0, "int", {key = "i0"}), nl()
	}),
	s({trig = "cs", descr = "(cs) \"case\"", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "value", {key = "i1"}), t":", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl()
	}),
	s({trig = "co", descr = "(co) \"constants with iota\"", priority = -1000, trigEngine = te("w")}, {
		t"const (", nl(),
		t"\t", i(1, "NAME1", {key = "i1"}), t" = iota", nl(),
		t"\t", i(0, "NAME2", {key = "i0"}), nl(),
		t")", nl()
	}),
	s({trig = "cn", descr = "(cn) \"continue\"", priority = -1000, trigEngine = te("w")}, {
		t"continue", nl()
	}),
	s({trig = "df", descr = "(df) \"defer\"", priority = -1000, trigEngine = te("w")}, {
		t"defer ", i(0, "func", {key = "i0"}), t"()", nl()
	}),
	s({trig = "dfr", descr = "(dfr) \"defer recover\"", priority = -1000, trigEngine = te("w")}, {
		t"defer func() {", nl(),
		t"\tif err := recover(); err != nil {", nl(),
		t"\t\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t}", nl(),
		t"}()", nl()
	}),
	s({trig = "im", descr = "(im) \"import\"", priority = -1000, trigEngine = te("w")}, {
		t"import (", nl(),
		t"\t\"", i(1, "package", {key = "i1"}), t"\"", nl(),
		t")", nl()
	}),
	s({trig = "in", descr = "(in) \"interface\"", priority = -1000, trigEngine = te("w")}, {
		t"interface{}", nl()
	}),
	s({trig = "inf", descr = "(inf) \"full interface \"", priority = -1000, trigEngine = te("w")}, {
		t"interface ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "/* methods */", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "if", descr = "(if) \"If statement\"", priority = -50, trigEngine = te("b")}, {
		t"if ", i(1, "condition", {key = "i1"}), tr(1, "(.+)", " "), t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if else condition\"", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "el", descr = "(el) \"else\"", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "ir", descr = "(ir) \"if error not nil, return err\"", priority = -1000, trigEngine = te("w")}, {
		t"if err != nil {", nl(),
		t"\treturn err", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "f", descr = "(f) \"false\"", priority = -1000, trigEngine = te("w")}, {
		t"false", nl()
	}),
	s({trig = "ft", descr = "(ft) \"fallthrough\"", priority = -1000, trigEngine = te("w")}, {
		t"fallthrough", nl()
	}),
	s({trig = "fl", descr = "(fl) \"float\"", priority = -1000, trigEngine = te("w")}, {
		t"float32", nl()
	}),
	s({trig = "f3", descr = "(f3) \"float32\"", priority = -1000, trigEngine = te("w")}, {
		t"float32", nl()
	}),
	s({trig = "f6", descr = "(f6) \"float64\"", priority = -1000, trigEngine = te("w")}, {
		t"float64", nl()
	}),
	s({trig = "for", descr = "(for) \"for loop\"", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "fori", descr = "(fori) \"for int loop\"", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(2, "i", {key = "i2"}), t" := 0; ", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; ", cp(2), i(3, "++", {key = "i3"}), t" {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "forr", descr = "(forr) \"for range loop\"", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "e", {key = "i1"}), t" := range ", i(2, "collection", {key = "i2"}), t" {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "fun", descr = "(fun) \"function\"", priority = -1000, trigEngine = te("w")}, {
		t"func ", i(1, "funcName", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") ", i(3, "error", {key = "i3"}), t" {", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "fum", descr = "(fum) \"method\"", priority = -1000, trigEngine = te("w")}, {
		t"func (", i(1, "receiver", {key = "i1"}), t" ", i(2, "type", {key = "i2"}), t") ", i(3, "funcName", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t") ", i(5, "error", {key = "i5"}), t" {", nl(),
		t"\t", i(6, "", {key = "i6"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "fumh", descr = "(fumh) \"http handler function on receiver\"", priority = -1000, trigEngine = te("w")}, {
		t"func (", i(1, "receiver", {key = "i1"}), t" ", i(2, "type", {key = "i2"}), t") ", i(3, "funcName", {key = "i3"}), t"(", i(4, "w", {key = "i4"}), t" http.ResponseWriter, ", i(5, "r", {key = "i5"}), t" *http.Request) {", nl(),
		t"\t", d(6, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "lf", descr = "(lf) \"log printf\"", priority = -1000, trigEngine = te("w")}, {
		t"log.Printf(\"%", i(1, "s", {key = "i1"}), t"\", ", i(2, "var", {key = "i2"}), t")", nl()
	}),
	s({trig = "lp", descr = "(lp) \"log println\"", priority = -1000, trigEngine = te("w")}, {
		t"log.Println(\"", i(1, "", {key = "i1"}), t"\")", nl()
	}),
	s({trig = "mk", descr = "(mk) \"make\"", priority = -1000, trigEngine = te("w")}, {
		t"make(", i(1, "[]string", {key = "i1"}), t", ", i(0, "0", {key = "i0"}), t")", nl()
	}),
	s({trig = "mp", descr = "(mp) \"map\"", priority = -1000, trigEngine = te("w")}, {
		t"map[", i(1, "string", {key = "i1"}), t"]", i(0, "int", {key = "i0"}), nl()
	}),
	s({trig = "main", descr = "(main) \"func main()\"", priority = -1000, trigEngine = te("w")}, {
		t"func main() {", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "nw", descr = "(nw) \"new\"", priority = -1000, trigEngine = te("w")}, {
		t"new(", i(0, "type", {key = "i0"}), t")", nl()
	}),
	s({trig = "pa", descr = "(pa) \"package\"", priority = -1000, trigEngine = te("w")}, {
		t"package ", i(1, "main", {key = "i1"}), nl()
	}),
	s({trig = "pn", descr = "(pn) \"panic\"", priority = -1000, trigEngine = te("w")}, {
		t"panic(\"", i(0, "msg", {key = "i0"}), t"\")", nl()
	}),
	s({trig = "pf", descr = "(pf) \"fmt.Printf()\"", priority = -1000, trigEngine = te("w")}, {
		t"fmt.Printf(\"%", i(1, "s", {key = "i1"}), t"\\n\", ", i(2, "var", {key = "i2"}), t")", nl()
	}),
	s({trig = "pl", descr = "(pl) \"fmt.Println()\"", priority = -1000, trigEngine = te("w")}, {
		t"fmt.Println(\"", i(1, "s", {key = "i1"}), t"\")", nl()
	}),
	s({trig = "rn", descr = "(rn) \"range\"", priority = -1000, trigEngine = te("w")}, {
		t"range ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "rt", descr = "(rt) \"return\"", priority = -1000, trigEngine = te("w")}, {
		t"return ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "rs", descr = "(rs) \"result\"", priority = -1000, trigEngine = te("w")}, {
		t"result", nl()
	}),
	s({trig = "sl", descr = "(sl) \"select\"", priority = -1000, trigEngine = te("w")}, {
		t"select {", nl(),
		t"case ", i(1, "v1", {key = "i1"}), t" := <-", i(2, "chan1", {key = "i2"}), nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "sr", descr = "(sr) \"string\"", priority = -1000, trigEngine = te("w")}, {
		t"string", nl()
	}),
	s({trig = "st", descr = "(st) \"struct\"", priority = -1000, trigEngine = te("w")}, {
		t"struct ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "/* data */", {key = "i2"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "sw", descr = "(sw) \"switch\"", priority = -1000, trigEngine = te("w")}, {
		t"switch ", i(1, "var", {key = "i1"}), t" {", nl(),
		t"case ", i(2, "value1", {key = "i2"}), t":", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"case ", i(4, "value2", {key = "i4"}), t":", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"default:", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "ps", descr = "(ps) \"fmt.Sprintf\"", priority = -1000, trigEngine = te("w")}, {
		t"fmt.Sprintf(\"%", i(1, "s", {key = "i1"}), t"\", ", i(2, "var", {key = "i2"}), t")", nl()
	}),
	s({trig = "t", descr = "(t) \"true\"", priority = -1000, trigEngine = te("w")}, {
		t"true", nl()
	}),
	s({trig = "g", descr = "(g) \"goroutine named function\"", priority = -1000, trigEngine = te("w")}, {
		t"go ", i(1, "funcName", {key = "i1"}), t"(", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "ga", descr = "(ga) \"goroutine anonymous function\"", priority = -1000, trigEngine = te("w")}, {
		t"go func(", i(1, "", {key = "i1"}), t" ", i(2, "type", {key = "i2"}), t") {", nl(),
		t"\t", i(3, "/* code */", {key = "i3"}), nl(),
		t"}(", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "test", descr = "(test) \"test function\"", priority = -1000, trigEngine = te("w")}, {
		t"func Test", i(1, "name", {key = "i1"}), t"(t *testing.T) {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}", nl()
	}),
	s({trig = "testt", descr = "(testt) \"table test function\"", priority = -1000, trigEngine = te("w")}, {
		t"func Test", i(1, "name", {key = "i1"}), t"(t *testing.T) {", nl(),
		t"\ttests := []struct {", nl(),
		t"\t\tname string", nl(),
		t"\t}{", nl(),
		t"\t\t{", nl(),
		t"\t\t\tname: \"", i(2, "test name", {key = "i2"}), t"\",", nl(),
		t"\t\t},", nl(),
		t"\t}", nl(),
		nl(),
		t"\tfor _, test := range tests {", nl(),
		t"\t\tt.Run(test.name, func(t *testing.T) {", nl(),
		t"\t\t\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t\t"), {key = "i0"}) }) end), nl(),
		t"\t\t})", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "bench", descr = "(bench) \"benchmark function\"", priority = -1000, trigEngine = te("w")}, {
		t"func Benchmark", i(1, "name", {key = "i1"}), t"(b *testing.B) {", nl(),
		t"\tfor i := 0; i < b.N; i++ {", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "cl", descr = "(cl) \"composite literals\"", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "name", {key = "i1"}), t" struct {", nl(),
		t"\t", i(2, "attrName", {key = "i2"}), t" ", i(3, "attrType", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "om", descr = "(om) \"if key in a map\"", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "value", {key = "i1"}), t", ok := ", i(2, "map", {key = "i2"}), t"[", i(3, "key", {key = "i3"}), t"]; ok == true {", nl(),
		t"\t", i(4, "/* code */", {key = "i4"}), nl(),
		t"}", nl(),
		nl()
	}),
	s({trig = "gg", descr = "(gg) \"Grouped globals with anonymous struct\"", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "var", {key = "i1"}), t" = struct{", nl(),
		t"\t", i(2, "name", {key = "i2"}), t" ", i(3, "type", {key = "i3"}), nl(),
		t"}{", nl(),
		t"\t", cp(2), t": ", i(4, "value", {key = "i4"}), t",", nl(),
		t"}", nl(),
		nl()
	}),
	s({trig = "ja", descr = "(ja) \"Marshalable json alias\"", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "parentType", {key = "i1"}), t"Alias ", cp(1), nl(),
		nl(),
		t"func (p *", cp(1), t") MarshalJSON() ([]byte, error) {", nl(),
		t"\treturn json.Marshal(&struct{ *", cp(1), t"Alias }{(*", cp(1), t"Alias)(p)})", nl(),
		t"}", nl(),
		nl()
	}),
	s({trig = "errwr", descr = "(errwr) \"Error handling with fmt.Errorf\"", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t"err != nil {", nl(),
		t"\treturn fmt.Errorf(\"", i(2, "", {key = "i2"}), t" %w\", err)", nl(),
		t"}"
	}),
	s({trig = "^import", descr = "(^import) \"Import declaration\"", priority = -50, trigEngine = te("r")}, {
		t"import (", nl(),
		t"\t\"", i(1, "package", {key = "i1"}), t"\"", nl(),
		t")"
	}),
	s({trig = "^package", descr = "(^package) \"Package declaration\"", priority = -50, trigEngine = te("r")}, {
		t"// Package ", cp(1), t" provides ...", nl(),
		t"package ", i(1, "main", {key = "i1"})
	}),
	s({trig = "^cons", descr = "(^cons) \"Constants declaration\"", priority = -50, trigEngine = te("r")}, {
		t"const (", nl(),
		t"\t", i(1, "constant", {key = "i1"}), tr(2, "(.+)", " "), i(2, "type", {key = "i2"}), t" = ", i(0, "value", {key = "i0"}), nl(),
		t")"
	}),
	s({trig = "^con", descr = "(^con) \"Constant declaration\"", priority = -50, trigEngine = te("r")}, {
		t"const ", i(1, "name", {key = "i1"}), tr(2, "(.+)", " "), i(2, "type", {key = "i2"}), t" = ", i(0, "value", {key = "i0"})
	}),
	s({trig = "iota", descr = "(iota) \"Iota constant generator\"", priority = -50, trigEngine = te("b")}, {
		t"const (", nl(),
		t"\t", i(1, "constant", {key = "i1"}), tr(2, "(.+)", " "), i(2, "type", {key = "i2"}), t" = iota", nl(),
		t")"
	}),
	s({trig = "struct", descr = "(struct) \"Struct declaration\"", priority = -50, trigEngine = te("b")}, {
		t"type ", i(1, "Struct", {key = "i1"}), t" struct {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "interface", descr = "(interface) \"Interface declaration\"", priority = -50, trigEngine = te("b")}, {
		t"type ", i(1, "Interface", {key = "i1"}), t" interface {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "switch", descr = "(switch) \"Switch statement\"", priority = -50, trigEngine = te("b")}, {
		t"switch ", i(1, "expression", {key = "i1"}), tr(1, "(.+)", " "), t"{", nl(),
		t"case", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "^main", descr = "(^main) \"Main function\"", priority = -50, trigEngine = te("r")}, {
		t"func main() {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "^meth", descr = "(^meth) \"Method\"", priority = -50, trigEngine = te("r")}, {
		t"func (", i(1, "receiver", {key = "i1"}), t" ", i(2, "type", {key = "i2"}), t") ", i(3, "name", {key = "i3"}), t"(", i(4, "params", {key = "i4"}), t")", tr(5, "(.+)", " "), i(5, "type", {key = "i5"}), t" {", nl(),
		t"\t", d(6, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "func", descr = "(func) \"Function\"", priority = -50, trigEngine = te("b")}, {
		t"func ", i(1, "name", {key = "i1"}), t"(", i(2, "params", {key = "i2"}), t")", tr(3, "(.+)", " "), i(3, "type", {key = "i3"}), t" {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "funch", descr = "(funch) \"HTTP handler\"", priority = -50, trigEngine = te("b")}, {
		t"func ", i(1, "handler", {key = "i1"}), t"(", i(2, "w", {key = "i2"}), t" http.ResponseWriter, ", i(3, "r", {key = "i3"}), t" *http.Request) {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "map", descr = "(map) \"Map type\"", priority = -50, trigEngine = te("b")}, {
		t"map[", i(1, "keytype", {key = "i1"}), t"]", i(2, "valtype", {key = "i2"})
	}),
	s({trig = ":", descr = "(:) \"Variable declaration :=\"", priority = -50, trigEngine = te("b")}, {
		i(1, "name", {key = "i1"}), t" := ", i(0, "value", {key = "i0"})
	}),
	s({trig = "json", descr = "(json) \"JSON field\"", priority = -50, trigEngine = te("")}, {
		t"`json:\"", i(1, "displayName", {key = "i1"}), t"\"`"
	}),
	s({trig = "err", descr = "(err) \"Basic error handling\"", priority = -50, trigEngine = te("b")}, {
		t"if err != nil {", nl(),
		t"\tlog.", i(1, "Fatal", {key = "i1"}), t"(err)", nl(),
		t"}"
	}),
})
