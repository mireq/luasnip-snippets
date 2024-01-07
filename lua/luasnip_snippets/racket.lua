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
	{},
	{},
	{},
	{},
	{},
	{},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0},
}
ls.add_snippets("racket", {
	s({trig = "#r", descr = "(#r)", priority = -1000, trigEngine = te("w")}, {
		t"#lang racket"
	}),
	s({trig = "#tr", descr = "(#tr)", priority = -1000, trigEngine = te("w")}, {
		t"#lang typed/racket"
	}),
	s({trig = "#rg", descr = "(#rg)", priority = -1000, trigEngine = te("w")}, {
		t"#lang racket/gui"
	}),
	s({trig = "#sb", descr = "(#sb)", priority = -1000, trigEngine = te("w")}, {
		t"#lang scribble/base"
	}),
	s({trig = "#d", descr = "(#d)", priority = -1000, trigEngine = te("w")}, {
		t"#lang datalog"
	}),
	s({trig = "#wi", descr = "(#wi)", priority = -1000, trigEngine = te("w")}, {
		t"#lang web-server/insta", nl()
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"(define ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "defun", descr = "(defun)", priority = -1000, trigEngine = te("w")}, {
		t"(define (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "defv", descr = "(defv) \"define-values\"", priority = -1000, trigEngine = te("w")}, {
		t"(define-values (", i(1, "", {key = "i1"}), t") (", i(0, "", {key = "i0"}), t"))"
	}),
	s({trig = "defm", descr = "(defm) \"define/match\"", priority = -1000, trigEngine = te("w")}, {
		t"(define/match (", i(1, "", {key = "i1"}), t")", nl(),
		t"  [(", i(2, "", {key = "i2"}), t") ", i(3, "", {key = "i3"}), t"]", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "defs", descr = "(defs) \"define-syntax\"", priority = -1000, trigEngine = te("w")}, {
		t"(define-syntax (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"(if ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ifn", descr = "(ifn)", priority = -1000, trigEngine = te("w")}, {
		t"(if (not ", i(1, "", {key = "i1"}), t") ", i(2, "", {key = "i2"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ifl", descr = "(ifl)", priority = -1000, trigEngine = te("w")}, {
		t"(if ", i(1, "", {key = "i1"}), nl(),
		t"\t(let (", i(2, "", {key = "i2"}), t")", nl(),
		t"\t\t", i(3, "", {key = "i3"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ifnl", descr = "(ifnl)", priority = -1000, trigEngine = te("w")}, {
		t"(if (not ", i(1, "", {key = "i1"}), t")", nl(),
		t"\t(let (", i(2, "", {key = "i2"}), t")", nl(),
		t"\t\t", i(3, "", {key = "i3"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ifb", descr = "(ifb)", priority = -1000, trigEngine = te("w")}, {
		t"(if ", i(1, "", {key = "i1"}), nl(),
		t"\t(begin", nl(),
		t"\t\t", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ifnb", descr = "(ifnb)", priority = -1000, trigEngine = te("w")}, {
		t"(if (not ", i(1, "", {key = "i1"}), t")", nl(),
		t"\t(begin", nl(),
		t"\t\t", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"(when ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"(unless ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "cond", descr = "(cond)", priority = -1000, trigEngine = te("w")}, {
		t"(cond", nl(),
		t"\t[(", i(1, "", {key = "i1"}), t") ", i(0, "", {key = "i0"}), t"])"
	}),
	s({trig = "conde", descr = "(conde)", priority = -1000, trigEngine = te("w")}, {
		t"(cond", nl(),
		t"\t[(", i(1, "", {key = "i1"}), t") ", i(2, "", {key = "i2"}), t"]", nl(),
		t"\t[else ", i(0, "", {key = "i0"}), t"])"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"(case ", i(1, "", {key = "i1"}), nl(),
		t"\t[(", i(2, "", {key = "i2"}), t") ", i(0, "", {key = "i0"}), t"])"
	}),
	s({trig = "match", descr = "(match)", priority = -1000, trigEngine = te("w")}, {
		t"(match ", i(1, "", {key = "i1"}), nl(),
		t"\t[(", i(2, "", {key = "i2"}), t") ", i(0, "", {key = "i0"}), t"])", nl()
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"(for ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forl", descr = "(forl) \"for/list\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/list ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forf", descr = "(forf) \"for/fold\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/fold", nl(),
		t"\t([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t([", i(2, "", {key = "i2"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forfr", descr = "(forfr) \"for/foldr\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/foldr", nl(),
		t"\t([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t([", i(2, "", {key = "i2"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "fora", descr = "(fora) \"for/and\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/and ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "foro", descr = "(foro) \"for/or\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/or ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "fors", descr = "(fors) \"for/sum\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/sum ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forp", descr = "(forp) \"for/product\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/product ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forfi", descr = "(forfi) \"for/first\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/first ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "forla", descr = "(forla) \"for/last\"", priority = -1000, trigEngine = te("w")}, {
		t"(for/last ([", i(1, "", {key = "i1"}), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "lambda", descr = "(lambda)", priority = -1000, trigEngine = te("w")}, {
		t"(lambda (", i(1, "", {key = "i1"}), t") ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "apply", descr = "(apply)", priority = -1000, trigEngine = te("w")}, {
		t"(apply ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"(map ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		t"(filter ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "req", descr = "(req)", priority = -1000, trigEngine = te("w")}, {
		t"(require ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "prov", descr = "(prov)", priority = -1000, trigEngine = te("w")}, {
		t"(provide ", i(0, "", {key = "i0"}), t")", nl()
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"(let ([", i(1, "", {key = "i1"}), t"]) ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "letcc", descr = "(letcc)", priority = -1000, trigEngine = te("w")}, {
		t"(let/cc here (set! ", i(1, "", {key = "i1"}), t" here) ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "begin", descr = "(begin)", priority = -1000, trigEngine = te("w")}, {
		t"(begin", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
})
