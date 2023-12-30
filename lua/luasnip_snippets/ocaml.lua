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
	1,
	2,
	3,
	3,
	3,
	4,
	2,
	1,
	3,
	2,
	3,
	2,
	2,
	4,
	3,
	3,
	2,
	{{1, 2}},
	{{1, 2}},
	2,
	1,
	3,
	2,
	3,
	{{1, 2}},
	3,
	4,
	5,
	2,
	3,
	1,
	2,
	0,
	0,
	1,
	1,
	2,
	1,
	0,
	1,
}
ls.add_snippets("ocaml", {
	s({trig = "rs", descr = "(rs) \"raise\"", priority = -50, trigEngine = te("b")}, {
		t"raise (", i(1, "Not_found", {key = "i1"}), t")"
	}),
	s({trig = "open", descr = "(open) \"open\"", priority = -50, trigEngine = te("")}, {
		t"let open ", i(1, "module", {key = "i1"}), t" in", nl(),
		i(2, "e", {key = "i2"})
	}),
	s({trig = "try", descr = "(try) \"try\"", priority = -50, trigEngine = te("")}, {
		t"try ", i(1, "e", {key = "i1"}), nl(),
		t"with ", i(2, "Not_found", {key = "i2"}), t" -> ", i(3, "()", {key = "i3"})
	}),
	s({trig = "ref", descr = "(ref) \"ref\"", priority = -50, trigEngine = te("")}, {
		t"let ", i(1, "name", {key = "i1"}), t" = ref ", i(2, "val", {key = "i2"}), t" in", nl(),
		i(3, "e", {key = "i3"})
	}),
	s({trig = "matchl", descr = "(matchl) \"pattern match on a list\"", priority = -50, trigEngine = te("")}, {
		t"match ", i(1, "list", {key = "i1"}), t" with", nl(),
		t"| [] -> ", i(2, "()", {key = "i2"}), nl(),
		t"| x::xs -> ", i(3, "()", {key = "i3"})
	}),
	s({trig = "matcho", descr = "(matcho) \"pattern match on an option type\"", priority = -50, trigEngine = te("")}, {
		t"match ", i(1, "x", {key = "i1"}), t" with", nl(),
		t"| Some(", i(2, "y", {key = "i2"}), t") -> ", i(3, "()", {key = "i3"}), nl(),
		t"| None -> ", i(4, "()", {key = "i4"})
	}),
	s({trig = "fun", descr = "(fun) \"anonymous function\"", priority = -50, trigEngine = te("")}, {
		t"(fun ", i(1, "x", {key = "i1"}), t" -> ", i(2, "x", {key = "i2"}), t")"
	}),
	s({trig = "cc", descr = "(cc) \"commment\"", priority = -50, trigEngine = te("")}, {
		t"(* ", i(1, "comment", {key = "i1"}), t" *)"
	}),
	s({trig = "let", descr = "(let) \"let .. in binding\"", priority = -50, trigEngine = te("")}, {
		t"let ", i(1, "x", {key = "i1"}), t" = ", i(2, "v", {key = "i2"}), t" in", nl(),
		i(3, "e", {key = "i3"})
	}),
	s({trig = "lr", descr = "(lr) \"let rec\"", priority = -50, trigEngine = te("")}, {
		t"let rec ", i(1, "f", {key = "i1"}), t" =", nl(),
		t"\t", i(2, "expr", {key = "i2"})
	}),
	s({trig = "if", descr = "(if) \"if\"", priority = -50, trigEngine = te("")}, {
		t"if ", i(1, "(* condition *)", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "(* A *)", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(3, "(* B *)", {key = "i3"})
	}),
	s({trig = "If", descr = "(If) \"If\"", priority = -50, trigEngine = te("")}, {
		t"if ", i(1, "(* condition *)", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "(* A *)", {key = "i2"})
	}),
	s({trig = "while", descr = "(while) \"while\"", priority = -50, trigEngine = te("")}, {
		t"while ", i(1, "(* condition *)", {key = "i1"}), t" do", nl(),
		t"\t", i(2, "(* A *)", {key = "i2"}), nl(),
		t"done"
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = -50, trigEngine = te("")}, {
		t"for ", i(1, "i", {key = "i1"}), t" = ", i(2, "1", {key = "i2"}), t" to ", i(3, "10", {key = "i3"}), t" do", nl(),
		t"\t", i(4, "(* BODY *)", {key = "i4"}), nl(),
		t"done"
	}),
	s({trig = "match", descr = "(match) \"match\"", priority = -50, trigEngine = te("")}, {
		t"match ", i(1, "(* e1 *)", {key = "i1"}), t" with", nl(),
		t"| ", i(2, "p", {key = "i2"}), t" -> ", i(3, "e2", {key = "i3"})
	}),
	s({trig = "Match", descr = "(Match) \"match\"", priority = -50, trigEngine = te("")}, {
		t"match ", i(1, "(* e1 *)", {key = "i1"}), t" with", nl(),
		t"| ", i(2, "p", {key = "i2"}), t" -> ", i(3, "e2", {key = "i3"})
	}),
	s({trig = "class", descr = "(class) \"class\"", priority = -50, trigEngine = te("")}, {
		t"class ", i(1, "name", {key = "i1"}), t" = object", nl(),
		t"\t", i(2, "methods", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "obj", descr = "(obj) \"obj\"", priority = -50, trigEngine = te("")}, {
		t"object", nl(),
		t"\t", i(1, "methods", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "Obj", descr = "(Obj) \"object\"", priority = -50, trigEngine = te("")}, {
		t"object (self)", nl(),
		t"\t", i(1, "methods", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "{{", descr = "({{) \"object functional update\"", priority = -50, trigEngine = te("")}, {
		t"{< ", i(1, "x", {key = "i1"}), t" = ", i(2, "y", {key = "i2"}), t" >}"
	}),
	s({trig = "beg", descr = "(beg) \"beg\"", priority = -50, trigEngine = te("")}, {
		t"begin", nl(),
		t"\t", i(1, "block", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "ml", descr = "(ml) \"module instantiantion with functor\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "Mod", {key = "i1"}), t" = ", i(2, "Functor", {key = "i2"}), t"(", i(3, "Arg", {key = "i3"}), t")"
	}),
	s({trig = "mod", descr = "(mod) \"module - no signature\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "(* Name *)", {key = "i1"}), t" = struct", nl(),
		t"\t", i(2, "(* BODY *)", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "Mod", descr = "(Mod) \"module with signature\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "(* Name *)", {key = "i1"}), t" : ", i(2, "(* SIG *)", {key = "i2"}), t" = struct", nl(),
		t"\t", i(3, "(* BODY *)", {key = "i3"}), nl(),
		t"end"
	}),
	s({trig = "sig", descr = "(sig) \"anonymous signature\"", priority = -50, trigEngine = te("")}, {
		t"sig", nl(),
		t"\t", i(1, "(* BODY *)", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "sigf", descr = "(sigf) \"functor signature or anonymous functor\"", priority = -50, trigEngine = te("")}, {
		t"functor (", i(1, "Arg", {key = "i1"}), t" : ", i(2, "ARG", {key = "i2"}), t") -> ", i(3, "(* BODY *)", {key = "i3"})
	}),
	s({trig = "func", descr = "(func) \"define functor - no signature\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "M", {key = "i1"}), t" (", i(2, "Arg", {key = "i2"}), t" : ", i(3, "ARG", {key = "i3"}), t") = struct", nl(),
		t"\t", i(4, "(* BODY *)", {key = "i4"}), nl(),
		t"end"
	}),
	s({trig = "Func", descr = "(Func) \"define functor - with signature\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "M", {key = "i1"}), t" (", i(2, "Arg", {key = "i2"}), t" : ", i(3, "ARG", {key = "i3"}), t") : ", i(4, "SIG", {key = "i4"}), t" = struct", nl(),
		t"\t", i(5, "(* BODY *)", {key = "i5"}), nl(),
		t"end"
	}),
	s({trig = "mot", descr = "(mot) \"Declare module signature\"", priority = -50, trigEngine = te("")}, {
		t"module type ", i(1, "(* Name *)", {key = "i1"}), t" = sig", nl(),
		t"\t", i(2, "(* BODY *)", {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "module", descr = "(module) \"Module with anonymous signature\"", priority = -50, trigEngine = te("")}, {
		t"module ", i(1, "(* Name *)", {key = "i1"}), t" : sig", nl(),
		t"\t", i(2, "(* SIGNATURE *)", {key = "i2"}), nl(),
		t"end = struct", nl(),
		t"\t", i(3, "(* BODY *)", {key = "i3"}), nl(),
		t"end"
	}),
	s({trig = "oo", descr = "(oo) \"odoc\"", priority = -50, trigEngine = te("")}, {
		t"(** ", i(1, "odoc", {key = "i1"}), t" *)"
	}),
	s({trig = "qt", descr = "(qt) \"inline qtest\"", priority = -50, trigEngine = te("")}, {
		t"(*$T ", i(1, "name", {key = "i1"}), nl(),
		t"\t", i(2, "test", {key = "i2"}), nl(),
		t"*)"
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"(** ", i(0, "", {key = "i0"}), t" *)"
	}),
	s({trig = "comment", descr = "(comment)", priority = -1000, trigEngine = te("w")}, {
		t"(* ", i(0, "", {key = "i0"}), t" *)"
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "modty", descr = "(modty)", priority = -1000, trigEngine = te("w")}, {
		t"module type ", i(1, "", {key = "i1"}), t" = sig", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "sw", descr = "(sw)", priority = -1000, trigEngine = te("w")}, {
		t"match ", i(1, "", {key = "i1"}), t" with", nl(),
		t"| ", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "|", descr = "(|)", priority = -1000, trigEngine = te("w")}, {
		t"| ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"})
	}),
	s({trig = "fnr", descr = "(fnr)", priority = -1000, trigEngine = te("w")}, {
		t"let rec ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
})
