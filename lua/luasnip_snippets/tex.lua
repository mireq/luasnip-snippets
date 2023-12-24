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
	0,
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
	1,
	{{1, 1}, {2, 3}, {3, 5}},
	0,
	2,
	5,
	0,
	0,
	0,
	0,
	{{1, 2}},
	{{1, 2}},
	0,
	0,
	1,
	1,
	2,
	0,
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
	3,
	3,
	2,
	2,
	{{1, 2}, {2, 3}, {3, 4}},
	2,
	0,
	{{1, 1}, {2, 2}, {3, 4}},
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	{{1, 1}, {2, 2}, {3, 4}, {4, 5}},
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	2,
	1,
	1,
	1,
	1,
	2,
	3,
	3,
	2,
	3,
	2,
	1,
	0,
	2,
	0,
	2,
	1,
	0,
	{{1, 2}},
	0,
	0,
	0,
	3,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	1,
	2,
	0,
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
	1,
	0,
	1,
	2,
	2,
	2,
	2,
	1,
	1,
	1,
	1,
	2,
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
	1,
	1,
	1,
	1,
	1,
	4,
	5,
	1,
	1,
	2,
	3,
	1,
	1,
	1,
	1,
	1,
	0,
	1,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	2,
	0,
	1,
	1,
	1,
	2,
	3,
	2,
	1,
	1,
	1,
	1,
	0,
	0,
	4,
	0,
}

local python_globals = {
	[[
def create_table(snip):
	rows = snip.buffer[snip.line].split('x')[0]
	cols = snip.buffer[snip.line].split('x')[1]
	int_val = lambda string: int(''.join(s for s in string if s.isdigit()))
	rows = int_val(rows)
	cols = int_val(cols)
	offset = cols + 1
	old_spacing = snip.buffer[snip.line][:snip.buffer[snip.line].rfind('\t') + 1]
	snip.buffer[snip.line] = ''
	final_str = old_spacing + "\\begin{tabular}{|" + "|".join(['$' + str(i + 1) for i in range(cols)]) + "|}\n"
	for i in range(rows):
		final_str += old_spacing + '\t'
		final_str += " & ".join(['$' + str(i * cols + j + offset) for j in range(cols)])
		final_str += " \\\\\\\n"
	final_str += old_spacing + "\\end{tabular}\n$0"
	snip.expand_anon(final_str)

def add_row(snip):
	row_len = int(''.join(s for s in snip.buffer[snip.line] if s.isdigit()))
	old_spacing = snip.buffer[snip.line][:snip.buffer[snip.line].rfind('\t') + 1]
	snip.buffer[snip.line] = ''
	final_str = old_spacing
	final_str += " & ".join(['$' + str(j + 1) for j in range(row_len)])
	final_str += " \\\\\\"
	snip.expand_anon(final_str)]]
}


ls.add_snippets("tex", {
	s({trig = "lemma", descr = "(lemma) \"Lemma\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{lemma}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{lemma}"
	}),
	s({trig = "prop", descr = "(prop) \"Proposition\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{prop}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{prop}"
	}),
	s({trig = "thrm", descr = "(thrm) \"Theorem\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{theorem}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{theorem}"
	}),
	s({trig = "post", descr = "(post) \"postulate\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{postulate}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{postulate}"
	}),
	s({trig = "prf", descr = "(prf) \"Proof\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{myproof}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{myproof}"
	}),
	s({trig = "def", descr = "(def) \"Definition\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{definition}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{definition}"
	}),
	s({trig = "nte", descr = "(nte) \"Note\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{note}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{note}"
	}),
	s({trig = "prob", descr = "(prob) \"Problem\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{problem}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{problem}"
	}),
	s({trig = "corl", descr = "(corl) \"Corollary\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{corollary}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{corollary}"
	}),
	s({trig = "example", descr = "(example) \"Example\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{example}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{example}"
	}),
	s({trig = "notion", descr = "(notion) \"Notation\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{notation}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"\\end{notation}"
	}),
	s({trig = "conc", descr = "(conc) \"Conclusion\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{conclusion}[", i(1, "", {key = "i1"}), t"]", nl(),
		t"\t", i(0, "", {key = "i0"}), f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"\\end{conclusion}"
	}),
	s({trig = "fig", descr = "(fig) \"Figure environment\"", priority = 0, trigEngine = te("bi")}, {
		t"\\begin{figure}[", i(1, "htpb", {key = "i1"}), t"]", nl(),
		t"\t\\centering", nl(),
		t"\t", t"\\includegraphics[width=0.8\\textwidth]{", i(2, "", {key = "i3"}), t"}", nl(),
		t"\t\\caption{", cp(3), t"}", nl(),
		t"\t\\label{fig:", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "\\W+", "-")}, "\t"), {key = "i5"}) }) end, k{"i2"}), t"}", nl(),
		t"\\end{figure}"
	}),
	s({trig = "abs", descr = "(abs) \"abstract environment\"", priority = 0, trigEngine = te("b")}, {
		t"\\begin{abstract}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t".\\end{abstract}"
	}),
	s({trig = "tab", descr = "(tab) \"tabular / array environment\"", priority = 0, trigEngine = te("b")}, {
		t"\\begin{", i(1, "t", {key = "i1"}), tr(1, "(t)$|(a)$|(.*)", "(?1:abular)(?2:rray)"), t"}{", i(2, "c", {key = "i2"}), t"}", nl(),
		i(0, "", {key = "i0"}), tr(2, "(?<=.)(c|l|r)|.", "(?1: & )"), nl(),
		t"\\end{", cp(1), tr(1, "(t)$|(a)$|(.*)", "(?1:abular)(?2:rray)"), t"}"
	}),
	s({trig = "table", descr = "(table) \"Table environment\"", priority = 0, trigEngine = te("b")}, {
		t"\\begin{table}[", i(1, "htpb", {key = "i1"}), t"]", nl(),
		t"\t\\centering", nl(),
		t"\t\\caption{", i(2, "caption", {key = "i2"}), t"}", nl(),
		t"\t\\label{tab:", i(3, "label", {key = "i3"}), t"}", nl(),
		nl(),
		t"\t\\begin{", i(4, "t", {key = "i4"}), tr(4, "(t)$|(a)$|(.*)", "(?1:abular)(?2:rray)"), t"}{", i(5, "c", {key = "i5"}), t"}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), tr(5, "(?<=.)(c|l|r)|.", "(?1: & )"), nl(),
		t"\t\\end{", cp(4), tr(4, "(t)$|(a)$|(.*)", "(?1:abular)(?2:rray)"), t"}", nl(),
		t"\\end{table}"
	}),
	s({trig = "cc", descr = "(cc) \"subset\"", priority = 0, trigEngine = te("w")}, {
		t"\\subset "
	}),
	s({trig = "inn", descr = "(inn) \"in \"", priority = 0, trigEngine = te("w")}, {
		t"\\in "
	}),
	s({trig = "Nn", descr = "(Nn) \"cap\"", priority = 0, trigEngine = te("w")}, {
		t"\\cap "
	}),
	s({trig = "UU", descr = "(UU) \"cup\"", priority = 0, trigEngine = te("w")}, {
		t"\\cup "
	}),
	s({trig = "uuu", descr = "(uuu) \"bigcup\"", priority = 0, trigEngine = te("w")}, {
		t"\\bigcup_{", t"i \\in ", i(1, " I", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "nnn", descr = "(nnn) \"bigcap\"", priority = 0, trigEngine = te("w")}, {
		t"\\bigcap_{", t"i \\in ", i(1, " I", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "HH", descr = "(HH) \"H\"", priority = 0, trigEngine = te("w")}, {
		t"\\mathbb{H}"
	}),
	s({trig = "DD", descr = "(DD) \"D\"", priority = 0, trigEngine = te("w")}, {
		t"\\mathbb{D}"
	}),
	s({trig = "inmath", descr = "(inmath) \"Inline Math\"", priority = 0, trigEngine = te("w")}, {
		t"\\(", i(1, "", {key = "i1"}), t"\\) ", i(0, "", {key = "i0"})
	}),
	s({trig = "dm", descr = "(dm) \"Display Math\"", priority = 0, trigEngine = te("w")}, {
		t"\\[", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\]", i(0, "", {key = "i0"})
	}),
	s({trig = "frac", descr = "(frac) \"Fraction\"", priority = 0, trigEngine = te("w")}, {
		t"\\frac{", i(1, "", {key = "i1"}), t"}{", i(2, "", {key = "i2"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "compl", descr = "(compl) \"Complement\"", priority = 0, trigEngine = te("i")}, {
		t"^{c}"
	}),
	s({trig = "ss", descr = "(ss) \"Super Script\"", priority = 0, trigEngine = te("i")}, {
		t"^{", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "__", descr = "(__) \"subscript\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Aw")}, {
		t"_{", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "srt", descr = "(srt) \"Square Root\"", priority = 0, trigEngine = te("wi")}, {
		t"\\sqrt{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "srto", descr = "(srto) \"... Root\"", priority = 0, trigEngine = te("wi")}, {
		t"\\sqrt[", i(1, "", {key = "i1"}), t"]{", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "ceil", descr = "(ceil) \"Ceil\"", priority = 0, trigEngine = te("w")}, {
		t"\\left\\lceil ", i(1, "", {key = "i1"}), t" \\right\\rceil ", i(0, "", {key = "i0"})
	}),
	s({trig = "floor", descr = "(floor) \"Floor\"", priority = 0, trigEngine = te("w")}, {
		t"\\left\\lfloor ", i(1, "", {key = "i1"}), t" \\right\\rfloor", i(0, "", {key = "i0"})
	}),
	s({trig = "pmat", descr = "(pmat) \"Pmat\"", priority = 0, trigEngine = te("w")}, {
		t"\\begin{pmatrix} ", i(1, "", {key = "i1"}), t" \\end{pmatrix} ", i(0, "", {key = "i0"})
	}),
	s({trig = "bmat", descr = "(bmat) \"Bmat\"", priority = 0, trigEngine = te("w")}, {
		t"\\begin{bmatrix} ", i(1, "", {key = "i1"}), t" \\end{bmatrix} ", i(0, "", {key = "i0"})
	}),
	s({trig = "lrb", descr = "(lrb) \"left\\{ right\\}\"", priority = 0, trigEngine = te("i")}, {
		t"\\left\\{ ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right\\} ", i(0, "", {key = "i0"})
	}),
	s({trig = "lra", descr = "(lra) \"leftangle rightangle\"", priority = 0, trigEngine = te("wi")}, {
		t"\\left<", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right>", i(0, "", {key = "i0"})
	}),
	s({trig = "conj", descr = "(conj) \"conjugate\"", priority = 0, trigEngine = te("w")}, {
		t"\\overline{", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "sum", descr = "(sum) \"sum\"", priority = 0, trigEngine = te("w")}, {
		t"\\sum_{n=", i(1, "1", {key = "i1"}), t"}^{", i(2, "\\infty", {key = "i2"}), t"} ", i(3, "a_n z^n", {key = "i3"})
	}),
	s({trig = "taylor", descr = "(taylor) \"taylor\"", priority = 0, trigEngine = te("w")}, {
		t"\\sum_{", i(1, "k", {key = "i1"}), t"=", i(2, "0", {key = "i2"}), t"}^{", i(3, "\\infty", {key = "i3"}), t"} ", t"c_", cp(1), t" (x-a)^", cp(1), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "lim", descr = "(lim) \"limit\"", priority = 0, trigEngine = te("w")}, {
		t"\\lim_{", i(1, "n", {key = "i1"}), t" \\to ", i(2, "\\infty", {key = "i2"}), t"} "
	}),
	s({trig = "limsup", descr = "(limsup) \"limsup\"", priority = 0, trigEngine = te("w")}, {
		t"\\limsup_{", i(1, "n", {key = "i1"}), t" \\to ", i(2, "\\infty", {key = "i2"}), t"} "
	}),
	s({trig = "prod", descr = "(prod) \"product\"", priority = 0, trigEngine = te("w")}, {
		t"\\prod_{", t"n=", i(1, "1", {key = "i1"}), t"}^{", i(2, "\\infty", {key = "i2"}), t"} ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i4"}) }) end), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "part", descr = "(part) \"d/dx\"", priority = 0, trigEngine = te("w")}, {
		t"\\frac{\\partial ", i(1, "V", {key = "i1"}), t"}{\\partial ", i(2, "x", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "ooo", descr = "(ooo) \"\\infty\"", priority = 0, trigEngine = te("w")}, {
		t"\\infty"
	}),
	s({trig = "rij", descr = "(rij) \"mrij\"", priority = 0, trigEngine = te("i")}, {
		t"(", i(1, "x", {key = "i1"}), t"_", i(2, "n", {key = "i2"}), t")_{", cp(2), t"\\in", i(3, "\\N", {key = "i3"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "=>", descr = "(=>) \"Implies\"", priority = 0, trigEngine = te("w")}, {
		t"\\implies"
	}),
	s({trig = "=<", descr = "(=<) \"Implied by\"", priority = 0, trigEngine = te("w")}, {
		t"\\impliedby"
	}),
	s({trig = "iff", descr = "(iff) \"iff\"", priority = 0, trigEngine = te("w")}, {
		t"\\iff"
	}),
	s({trig = "==", descr = "(==) \"Equals\"", priority = 0, trigEngine = te("w")}, {
		t"&= ", i(1, "", {key = "i1"}), t" \\\\"
	}),
	s({trig = "!=", descr = "(!=) \"Not Equal\"", priority = 0, trigEngine = te("w")}, {
		t"\\neq "
	}),
	s({trig = "<=", descr = "(<=) \"leq\"", priority = 0, trigEngine = te("w")}, {
		t"\\le "
	}),
	s({trig = ">=", descr = "(>=) \"geq\"", priority = 0, trigEngine = te("w")}, {
		t"\\ge "
	}),
	s({trig = "nn", descr = "(nn) \"Tikz node\"", priority = 0, trigEngine = te("w")}, {
		t"\\node[", i(4, "", {key = "i5"}), t"] (", tr(1, "[^0-9a-zA-Z]", ""), i(2, "", {key = "i2"}), t") ", t"at (", i(3, "0,0", {key = "i3"}), t") ", t"{$", i(1, "", {key = "i1"}), t"$};", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "lll", descr = "(lll) \"l\"", priority = 0, trigEngine = te("w")}, {
		t"\\ell"
	}),
	s({trig = "xx", descr = "(xx) \"cross\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Aw")}, {
		t"\\times "
	}),
	s({trig = "(?<!\\\\)(sin|cos|arccot|cot|csc|ln|log|exp|star|perp)", descr = "((?<!\\\\)(sin|cos|arccot|cot|csc|ln|log|exp|star|perp)) \"ln\"", priority = 0, trigEngine = te("rw")}, {
		t"\\", f(function(args, snip) return c_py({"tex", 58}, "snip.rv = match.group(1)", python_globals, args, snip, "", am[58]) end, ae(am[58]))
	}),
	s({trig = "<!", descr = "(<!) \"normal\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Aw")}, {
		t"\\triangleleft "
	}),
	s({trig = "((\\d|\\w)+)invs", descr = "(((\\d|\\w)+)invs) \"inverse\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Awr")}, {
		f(function(args, snip) return c_py({"tex", 60}, "snip.rv = match.group(1)", python_globals, args, snip, "", am[60]) end, ae(am[60])), t"^{-1}"
	}),
	s({trig = "!>", descr = "(!>) \"mapsto\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Aw")}, {
		t"\\mapsto "
	}),
	s({trig = "bar", descr = "(bar) \"bar\"", priority = 0, trigEngine = te("wi")}, {
		t"\\bar{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "\\<(.*?)\\|", descr = "(\\<(.*?)\\|) \"bra\"", priority = 0, trigEngine = te("wri")}, {
		t"\\bra{", f(function(args, snip) return c_py({"tex", 65}, "snip.rv = match.group(1).replace(\'q\', f\'\\psi\').replace(\'f\', f\'\\phi\')", python_globals, args, snip, "", am[65]) end, ae(am[65])), t"}"
	}),
	s({trig = "\\|(.*?)\\>", descr = "(\\|(.*?)\\>) \"ket\"", priority = 0, trigEngine = te("wri")}, {
		t"\\ket{", f(function(args, snip) return c_py({"tex", 66}, "snip.rv = match.group(1).replace(\'q\', f\'\\psi\').replace(\'f\', f\'\\phi\')", python_globals, args, snip, "", am[66]) end, ae(am[66])), t"}"
	}),
	s({trig = "(.*)\\\\bra{(.*?)}([^\\|]*?)\\>", descr = "((.*)\\\\bra{(.*?)}([^\\|]*?)\\>) \"braket\"", snippetType = "autosnippet", priority = 0, trigEngine = te("Awri")}, {
		f(function(args, snip) return c_py({"tex", 67}, "snip.rv = match.group(1)", python_globals, args, snip, "", am[67]) end, ae(am[67])), t"\\braket{", f(function(args, snip) return c_py({"tex", 67}, "snip.rv = match.group(2)", python_globals, args, snip, "", am[67]) end, ae(am[67])), t"}{", f(function(args, snip) return c_py({"tex", 67}, "snip.rv = match.group(3).replace(\'q\', f\'\\psi\').replace(\'f\', f\'\\phi\')", python_globals, args, snip, "", am[67]) end, ae(am[67])), t"}"
	}),
	s({trig = "pac", descr = "(pac) \"usepackage - removes square braces if options removed\"", priority = 0, trigEngine = te("b")}, {
		t"\\usepackage", f(function(args, snip) return c_py({"tex", 68}, "snip.rv=\'[\' if t[1] else \"\"", python_globals, args, snip, "", am[68]) end, ae(am[68])), i(1, "options", {key = "i1"}), f(function(args, snip) return c_py({"tex", 68}, "snip.rv = \']\' if t[1] else \"\"", python_globals, args, snip, "", am[68]) end, ae(am[68])), t"{", i(2, "package", {key = "i2"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "docls", descr = "(docls) \"Document Class\"", snippetType = "autosnippet", priority = 0, trigEngine = te("bA")}, {
		t"\\documentclass{", i(1, "", {key = "i1"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "acl", descr = "(acl) \"Acroynm expanded\"", priority = 0, trigEngine = te("bi")}, {
		t"\\acl{", i(1, "acronym", {key = "i1"}), t"}"
	}),
	s({trig = "ac", descr = "(ac) \"Acroynm normal\"", priority = 0, trigEngine = te("bi")}, {
		t"\\ac{", i(1, "acronym", {key = "i1"}), t"}"
	}),
	s({trig = "dcl", descr = "(dcl) \\documentclass{}", priority = -1000, trigEngine = te("w")}, {
		t"\\documentclass{", i(1, "class", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "dclo", descr = "(dclo) \\documentclass[]{}", priority = -1000, trigEngine = te("w")}, {
		t"\\documentclass[", i(1, "options", {key = "i1"}), t"]{", i(2, "class", {key = "i2"}), t"} ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "tmplt", descr = "(tmplt) \"Template\"", priority = -1000, trigEngine = te("w")}, {
		t"\\documentclass{", i(1, "article", {key = "i1"}), t"}", nl(),
		nl(),
		t"\\usepackage{import}", nl(),
		t"\\usepackage{pdfpages}", nl(),
		t"\\usepackage{transparent}", nl(),
		t"\\usepackage{xcolor}", nl(),
		i(2, "", {key = "i2"}), nl(),
		nl(),
		t"\\newcommand{\\incfig}[2][1]{%", nl(),
		t"\t    \\def\\svgwidth{#1\\columnwidth}", nl(),
		t"\t    \\import{./figures/}{#2.pdf_tex}", nl(),
		t"}", nl(),
		i(3, "", {key = "i3"}), nl(),
		t"\\pdfsuppresswarningpagegroup=1", nl(),
		nl(),
		t"\\begin{document}", nl(),
		t"\t    ", i(0, "", {key = "i0"}), nl(),
		t"\\end{document}", nl()
	}),
	s({trig = "nc", descr = "(nc) \\newcommand", priority = -1000, trigEngine = te("w")}, {
		t"\\newcommand{\\", i(1, "cmd", {key = "i1"}), t"}[", i(2, "opt", {key = "i2"}), t"]{", i(3, "realcmd", {key = "i3"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "up", descr = "(up) \\usepackage", priority = -1000, trigEngine = te("w")}, {
		t"\\usepackage[", i(1, "options", {key = "i1"}), t"]{", i(2, "package", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "nuc", descr = "(nuc) \\newunicodechar", priority = -1000, trigEngine = te("w")}, {
		t"\\newunicodechar{", i(1, "", {key = "i1"}), t"}{", i(2, "\\ensuremath", {key = "i2"}), i(3, "tex-substitute", {key = "i3"}), t"}} ", i(0, "", {key = "i0"})
	}),
	s({trig = "dmo", descr = "(dmo) \\DeclareMathOperator", priority = -1000, trigEngine = te("w")}, {
		t"\\DeclareMathOperator{", i(1, "", {key = "i1"}), t"}{", i(2, "", {key = "i2"}), t"} ", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "begin", descr = "(begin) \\begin{} ... \\end{} block", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{", i(1, "env", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{", cp(1), t"}", nl()
	}),
	s({trig = "mkt", descr = "(mkt) maketitle", priority = -1000, trigEngine = te("w")}, {
		t"\\maketitle", nl()
	}),
	s({trig = "thm", descr = "(thm) thm (or arbitrary) environment with optional argument", priority = -1000, trigEngine = te("w")}, {
		t"\\begin[", i(1, "author", {key = "i1"}), t"]{", i(2, "thm", {key = "i2"}), t"}", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"\\end{", cp(2), t"}"
	}),
	s({trig = "center", descr = "(center) center environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{center}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{center}"
	}),
	s({trig = "ali", descr = "(ali) align(ed) environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{align", i(1, "ed", {key = "i1"}), t"}", nl(),
		t"\t\\label{eq:", i(2, "", {key = "i2"}), t"}", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"\\end{align", cp(1), t"}"
	}),
	s({trig = "gat", descr = "(gat) gather(ed) environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{gather", i(1, "ed", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{gather", cp(1), t"}"
	}),
	s({trig = "eq", descr = "(eq) equation environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{equation}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{equation}"
	}),
	s({trig = "eql", descr = "(eql) Labeled equation environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{equation}", nl(),
		t"\t\\label{eq:", i(1, "", {key = "i2"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"\\end{equation}"
	}),
	s({trig = "eq*", descr = "(eq*) unnumbered equation environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{equation*}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{equation*}"
	}),
	s({trig = "\\", descr = "(\\) unnumbered equation: \\[ ... \\]", priority = -1000, trigEngine = te("w")}, {
		t"\\[", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\]"
	}),
	s({trig = "eqnarray", descr = "(eqnarray) eqnarray environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{eqnarray}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{eqnarray}"
	}),
	s({trig = "lab", descr = "(lab) \\label", priority = -1000, trigEngine = te("w")}, {
		t"\\label{", i(1, "eq:", {key = "i1"}), i(2, "fig:", {key = "i2"}), i(3, "tab:", {key = "i3"}), i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "enum", descr = "(enum) enumerate environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{enumerate}", nl(),
		t"\t\\item ", i(0, "", {key = "i0"}), nl(),
		t"\\end{enumerate}"
	}),
	s({trig = "enuma", descr = "(enuma) enumerate environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{enumerate}[(a)]", nl(),
		t"\t\\item ", i(0, "", {key = "i0"}), nl(),
		t"\\end{enumerate}"
	}),
	s({trig = "enumi", descr = "(enumi) enumerate environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{enumerate}[(i)]", nl(),
		t"\t\\item ", i(0, "", {key = "i0"}), nl(),
		t"\\end{enumerate}"
	}),
	s({trig = "item", descr = "(item) itemize environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{itemize}", nl(),
		t"\t\\item ", i(0, "", {key = "i0"}), nl(),
		t"\\end{itemize}"
	}),
	s({trig = "it", descr = "(it) \\item", priority = -1000, trigEngine = te("w")}, {
		t"\\item ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end)
	}),
	s({trig = "desc", descr = "(desc) description environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{description}", nl(),
		t"\t\\item[", i(1, "", {key = "i1"}), t"] ", i(0, "", {key = "i0"}), nl(),
		t"\\end{description}"
	}),
	s({trig = "]i", descr = "(]i) \\item (recursive)", priority = -1000, trigEngine = te("w")}, {
		t"\\item ", i(1, "", {key = "i1"}), nl(),
		t"\t", i(0, "]i", {key = "i0"})
	}),
	s({trig = "mat", descr = "(mat) smart matrix environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{", i(1, "p/b/v/V/B/small", {key = "i1"}), t"matrix}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{", cp(1), t"matrix}"
	}),
	s({trig = "cas", descr = "(cas) cases environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{cases}", nl(),
		t"\t", i(1, "equation", {key = "i1"}), t", &\\text{ if }", i(2, "case", {key = "i2"}), t"\\", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"\\end{cases}"
	}),
	s({trig = "spl", descr = "(spl) split environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{split}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"\\end{split}"
	}),
	s({trig = "cha", descr = "(cha) \\chapter", priority = -1000, trigEngine = te("w")}, {
		t"\\chapter{", i(1, "chapter name", {key = "i1"}), t"}%", nl(),
		t"\\label{cha:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sec", descr = "(sec) \\section", priority = -1000, trigEngine = te("w")}, {
		t"\\section{", i(1, "section name", {key = "i1"}), t"}%", nl(),
		t"\\label{sec:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sec*", descr = "(sec*) \\section*", priority = -1000, trigEngine = te("w")}, {
		t"\\section*{", i(1, "section name", {key = "i1"}), t"}%", nl(),
		t"\\label{sec:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sub", descr = "(sub) \\subsection", priority = -1000, trigEngine = te("w")}, {
		t"\\subsection{", i(1, "subsection name", {key = "i1"}), t"}%", nl(),
		t"\\label{sub:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sub*", descr = "(sub*) \\subsection*", priority = -1000, trigEngine = te("w")}, {
		t"\\subsection*{", i(1, "subsection name", {key = "i1"}), t"}%", nl(),
		t"\\label{sub:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ssub", descr = "(ssub) \\subsubsection", priority = -1000, trigEngine = te("w")}, {
		t"\\subsubsection{", i(1, "subsubsection name", {key = "i1"}), t"}%", nl(),
		t"\\label{ssub:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ssub*", descr = "(ssub*) \\subsubsection*", priority = -1000, trigEngine = te("w")}, {
		t"\\subsubsection*{", i(1, "subsubsection name", {key = "i1"}), t"}%", nl(),
		t"\\label{ssub:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "par", descr = "(par) \\paragraph", priority = -1000, trigEngine = te("w")}, {
		t"\\paragraph{", i(1, "paragraph name", {key = "i1"}), t"}%", nl(),
		t"\\label{par:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "par*", descr = "(par*) \\paragraph*", priority = -1000, trigEngine = te("w")}, {
		t"\\paragraph*{", i(1, "paragraph name", {key = "i1"}), t"}%", nl(),
		t"\\label{par:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "subp", descr = "(subp) \\subparagraph", priority = -1000, trigEngine = te("w")}, {
		t"\\subparagraph{", i(1, "subparagraph name", {key = "i1"}), t"}%", nl(),
		t"\\label{subp:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "subp*", descr = "(subp*) \\subparagraph*", priority = -1000, trigEngine = te("w")}, {
		t"\\subparagraph*{", i(1, "subparagraph name", {key = "i1"}), t"}%", nl(),
		t"\\label{subp:", cp(1), t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ni", descr = "(ni) \\noindent", priority = -1000, trigEngine = te("w")}, {
		t"\\noindent", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "itd", descr = "(itd) description \\item", priority = -1000, trigEngine = te("w")}, {
		t"\\item[", i(1, "description", {key = "i1"}), t"] ", i(0, "item", {key = "i0"})
	}),
	s({trig = "figure", descr = "(figure) reference to a figure", priority = -1000, trigEngine = te("w")}, {
		i(1, "Figure", {key = "i1"}), t"~\\ref{", i(2, "fig:", {key = "i2"}), t"}"
	}),
	s({trig = "listing", descr = "(listing) reference to a listing", priority = -1000, trigEngine = te("w")}, {
		i(1, "Listing", {key = "i1"}), t"~\\ref{", i(2, "list", {key = "i2"}), t"}"
	}),
	s({trig = "section", descr = "(section) reference to a section", priority = -1000, trigEngine = te("w")}, {
		i(1, "Section", {key = "i1"}), t"~\\ref{sec:", i(2, "", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "page", descr = "(page) reference to a page", priority = -1000, trigEngine = te("w")}, {
		i(1, "page", {key = "i1"}), t"~\\pageref{", i(2, "", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "index", descr = "(index) \\index", priority = -1000, trigEngine = te("w")}, {
		t"\\index{", i(1, "index", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "citen", descr = "(citen) \\citen", priority = -1000, trigEngine = te("w")}, {
		t"\\citen{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "citep", descr = "(citep) \\citep", priority = -1000, trigEngine = te("w")}, {
		t"\\citep{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "citet", descr = "(citet) \\citet", priority = -1000, trigEngine = te("w")}, {
		t"\\citet{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "cite", descr = "(cite) \\cite[]{}", priority = -1000, trigEngine = te("w")}, {
		t"\\cite[", i(1, "", {key = "i1"}), t"]{", i(2, "", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "citea", descr = "(citea) \\citeauthor", priority = -1000, trigEngine = te("w")}, {
		t"\\citeauthor{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "citey", descr = "(citey) \\citeyear", priority = -1000, trigEngine = te("w")}, {
		t"\\citeyear{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "fcite", descr = "(fcite) \\footcite[]{}", priority = -1000, trigEngine = te("w")}, {
		t"\\footcite[", i(1, "", {key = "i1"}), t"]{", i(2, "", {key = "i2"}), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "ita", descr = "(ita) italic text", priority = -1000, trigEngine = te("w")}, {
		t"\\textit{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "bf", descr = "(bf) bold face text", priority = -1000, trigEngine = te("w")}, {
		t"\\textbf{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "under", descr = "(under) underline text", priority = -1000, trigEngine = te("w")}, {
		t"\\underline{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "over", descr = "(over) overline text", priority = -1000, trigEngine = te("w")}, {
		t"\\overline{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "emp", descr = "(emp) emphasize text", priority = -1000, trigEngine = te("w")}, {
		t"\\emph{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "sc", descr = "(sc) small caps text", priority = -1000, trigEngine = te("w")}, {
		t"\\textsc{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "sf", descr = "(sf) sans serife text", priority = -1000, trigEngine = te("w")}, {
		t"\\textsf{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "rm", descr = "(rm) roman font text", priority = -1000, trigEngine = te("w")}, {
		t"\\textrm{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "tt", descr = "(tt) typewriter (monospace) text", priority = -1000, trigEngine = te("w")}, {
		t"\\texttt{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "tsub", descr = "(tsub) subscripted text", priority = -1000, trigEngine = te("w")}, {
		t"\\textsubscript{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "tsup", descr = "(tsup) superscripted text", priority = -1000, trigEngine = te("w")}, {
		t"\\textsuperscript{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "mf", descr = "(mf) mathfrak", priority = -1000, trigEngine = te("w")}, {
		t"\\mathfrak{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "mc", descr = "(mc) mathcal", priority = -1000, trigEngine = te("w")}, {
		t"\\mathcal{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "ms", descr = "(ms) mathscr", priority = -1000, trigEngine = te("w")}, {
		t"\\mathscr{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "ft", descr = "(ft) \\footnote", priority = -1000, trigEngine = te("w")}, {
		t"\\footnote{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"}", i(0, "", {key = "i0"})
	}),
	s({trig = "tikz", descr = "(tikz) figure environment (tikzpicture)", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{figure}[htpb]", nl(),
		t"\\begin{center}", nl(),
		t"\\begin{tikzpicture}[scale=", i(1, "1", {key = "i1"}), t", transform shape]", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"\\end{tikzpicture}", nl(),
		t"\\end{center}", nl(),
		t"\\caption{", i(3, "", {key = "i3"}), t"}%", nl(),
		t"\\label{fig:", i(4, "", {key = "i4"}), t"}", nl(),
		t"\\end{figure}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "subfig", descr = "(subfig) subfigure environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{subfigure}[", i(1, "", {key = "i1"}), t"]{", i(2, "\\textwidth", {key = "i2"}), t"}", nl(),
		t"\\begin{center}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"\\end{center}", nl(),
		t"\\caption{", i(4, "", {key = "i4"}), t"}", nl(),
		t"\\label{fig:", i(5, "", {key = "i5"}), t"}", nl(),
		t"\\end{subfigure}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tikzcd", descr = "(tikzcd) tikzcd environment in equation", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{equation}", nl(),
		t"\\begin{tikzcd}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"\\end{tikzcd}", nl(),
		t"\\end{equation}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tikzcd*", descr = "(tikzcd*) tikzcd environment in equation*", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{equation*}", nl(),
		t"\\begin{tikzcd}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"\\end{tikzcd}", nl(),
		t"\\end{equation*}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "stackrel", descr = "(stackrel) \\stackrel{}{}", priority = -1000, trigEngine = te("w")}, {
		t"\\stackrel{", i(1, "above", {key = "i1"}), t"}{", i(2, "below", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "frame", descr = "(frame) frame environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{frame}[", i(1, "t", {key = "i1"}), t"]", nl(),
		t"\t\\frametitle{", i(2, "title", {key = "i2"}), t"}", nl(),
		t"\t\\framesubtitle{", i(3, "subtitle", {key = "i3"}), t"}", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i4"}) }) end), nl(),
		t"\\end{frame}"
	}),
	s({trig = "block", descr = "(block) block environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{block}{", i(1, "title", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{block}"
	}),
	s({trig = "alert", descr = "(alert) alert text", priority = -1000, trigEngine = te("w")}, {
		t"\\alert{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "alertblock", descr = "(alertblock) alertblock environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{alertblock}{", i(1, "title", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{alertblock}"
	}),
	s({trig = "col2", descr = "(col2) two-column environment", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{columns}", nl(),
		t"\t\\begin{column}{0.5\\textwidth}", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t\\end{column}", nl(),
		t"\t\\begin{column}{0.5\\textwidth}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\\end{column}", nl(),
		t"\\end{columns}"
	}),
	s({trig = "multicol2", descr = "(multicol2) two-column environment with multicol", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{multicols}{2}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"\t\\columnbreak", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\\end{multicols}"
	}),
	s({trig = "\\{", descr = "(\\{) \\{ \\}", priority = -1000, trigEngine = te("w")}, {
		t"\\{ ", i(0, "", {key = "i0"}), t" \\}"
	}),
	s({trig = "lr", descr = "(lr) left right", priority = -1000, trigEngine = te("w")}, {
		t"\\left", i(1, "", {key = "i1"}), t" ", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), t" \\right", cp(1)
	}),
	s({trig = "lr(", descr = "(lr() left( right)", priority = -1000, trigEngine = te("w")}, {
		t"\\left( ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right)"
	}),
	s({trig = "lr|", descr = "(lr|) left| right|", priority = -1000, trigEngine = te("w")}, {
		t"\\left| ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right|"
	}),
	s({trig = "lr{", descr = "(lr{) left\\{ right\\}", priority = -1000, trigEngine = te("w")}, {
		t"\\left\\{ ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right\\}"
	}),
	s({trig = "lr[", descr = "(lr[) left[ right]", priority = -1000, trigEngine = te("w")}, {
		t"\\left[ ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" \\right]"
	}),
	s({trig = "lst", descr = "(lst)", priority = -1000, trigEngine = te("w")}, {
		t"\\begin{listing}[language=", i(1, "language", {key = "i1"}), t"]", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"\\end{listing}"
	}),
	s({trig = "lsi", descr = "(lsi)", priority = -1000, trigEngine = te("w")}, {
		t"\\lstinline|", i(1, "", {key = "i1"}), t"| ", i(0, "", {key = "i0"})
	}),
	s({trig = "url", descr = "(url)", priority = -1000, trigEngine = te("w")}, {
		t"\\url{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "href", descr = "(href)", priority = -1000, trigEngine = te("w")}, {
		t"\\href{", i(1, "", {key = "i1"}), t"}{", i(2, "", {key = "i2"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "urlc", descr = "(urlc)", priority = -1000, trigEngine = te("w")}, {
		t"\\url{", f(function(args, snip) return c_viml("@+") end, {}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "hrefc", descr = "(hrefc)", priority = -1000, trigEngine = te("w")}, {
		t"\\href{", f(function(args, snip) return c_viml("@+") end, {}), t"}{", i(1, "", {key = "i1"}), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "enq", descr = "(enq) enquote", priority = -1000, trigEngine = te("w")}, {
		t"\\enquote{", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"} ", i(0, "", {key = "i0"})
	}),
	s({trig = "ddt", descr = "(ddt) time derivative", priority = -1000, trigEngine = te("w")}, {
		t"\\frac{d}{dt} {", i(1, "", {key = "i1"}), t"} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "pdv", descr = "(pdv) partial derivation", priority = -1000, trigEngine = te("w")}, {
		t"\\frac{\\partial {", i(1, "", {key = "i1"}), t"}}{\\partial {", i(2, "", {key = "i2"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "ppdv", descr = "(ppdv) second partial derivation", priority = -1000, trigEngine = te("w")}, {
		t"\\frac{\\partial^2 {", i(1, "", {key = "i1"}), t"}}{\\partial {", i(2, "", {key = "i2"}), t"} \\partial {", i(3, "", {key = "i3"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "dv", descr = "(dv) derivative", priority = -1000, trigEngine = te("w")}, {
		t"\\frac{d {", i(1, "", {key = "i1"}), t"}}{d {", i(2, "", {key = "i2"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "summ", descr = "(summ) summation", priority = -1000, trigEngine = te("w")}, {
		t"\\sum_{{", i(1, "", {key = "i1"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "dot", descr = "(dot) dot", priority = -1000, trigEngine = te("w")}, {
		t"\\dot{{", i(1, "", {key = "i1"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "ddot", descr = "(ddot) ddot", priority = -1000, trigEngine = te("w")}, {
		t"\\ddot{{", i(1, "", {key = "i1"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "vec", descr = "(vec) vector", priority = -1000, trigEngine = te("w")}, {
		t"\\vec{{", i(1, "", {key = "i1"}), t"}} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "\\x", descr = "(\\x) cross product", priority = -1000, trigEngine = te("w")}, {
		t"\\times {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = ".", descr = "(.) dot product", priority = -1000, trigEngine = te("w")}, {
		t"\\cdot {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "int", descr = "(int) integral", priority = -1000, trigEngine = te("w")}, {
		t"\\int_{{", i(1, "", {key = "i1"}), t"}}^{{", i(2, "", {key = "i2"}), t"}} {", i(3, "", {key = "i3"}), t"} \\: d{", i(4, "", {key = "i4"}), t"} {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "ra", descr = "(ra) rightarrow", priority = -1000, trigEngine = te("w")}, {
		t"\\rightarrow {", i(0, "", {key = "i0"}), t"}"
	}),
})
