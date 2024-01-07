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
	{0, 1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{},
	{1, 2, 3},
}
ls.add_snippets("vim", {
	s({trig = "header", descr = "(header) standard Vim script file header", priority = -1000, trigEngine = te("w")}, {
		t"\" File: ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t\')")}, ""), {key = "i1"}) }) end), nl(),
		t"\" Author: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i2"}) }) end), nl(),
		t"\" Description: ", i(3, "", {key = "i3"}), nl(),
		d(4, function(args, snip) return sn(nil, { i(1, jt({"\" Last Modified: ", c_viml("strftime(\"%B %d, %Y\")")}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "guard", descr = "(guard) \"script reload guard\"", priority = -50, trigEngine = te("b")}, {
		t"if exists(\'", d(1, function(args, snip) return sn(nil, { i(1, jt({"did_", c_py({"vim", 2}, "snip.rv = snip.fn.replace(\'.\',\'_\')", python_globals, args, snip, "", am[2])}, ""), {key = "i1"}) }) end), t"\') || &cp", i(2, " || version < 700", {key = "i2"}), nl(),
		t"\tfinish", nl(),
		t"endif", nl(),
		t"let ", cp(1), t" = 1", i(3, "", {key = "i3"})
	}),
	s({trig = "f", descr = "(f) \"function\"", priority = -50, trigEngine = te("b")}, {
		t"fun ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", i(3, "\" code", {key = "i3"}), nl(),
		t"endf"
	}),
	s({trig = "t", descr = "(t) try ... catch statement", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"catch ", i(2, "", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endtry"
	}),
	s({trig = "for", descr = "(for) for ... in loop", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"endfor"
	}),
	s({trig = "forkv", descr = "(forkv) for [key, value] in loop", priority = -1000, trigEngine = te("w")}, {
		t"for [", i(1, "", {key = "i1"}), t",", i(2, "", {key = "i2"}), t"] in items(", i(3, "", {key = "i3"}), t")", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tunlet ", cp(1), t" ", cp(2), nl(),
		t"endfor"
	}),
	s({trig = "wh", descr = "(wh) while loop", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"endw"
	}),
	s({trig = "if", descr = "(if) if statement", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"endif"
	}),
	s({trig = "ife", descr = "(ife) if ... else statement", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endif"
	}),
	s({trig = "au", descr = "(au) augroup ... autocmd block", priority = -1000, trigEngine = te("w")}, {
		t"augroup ", i(1, "AU_NAME", {key = "i1"}), nl(),
		t"\tautocmd!", nl(),
		t"\tautocmd ", i(2, "BufRead,BufNewFile", {key = "i2"}), t" ", i(3, "*.ext,*.ext3|<buffer[=N]>", {key = "i3"}), t" ", i(0, "", {key = "i0"}), nl(),
		t"augroup END"
	}),
	s({trig = "auv", descr = "(auv) augroupvisual ... autocmd block with visual placeholder", priority = -1000, trigEngine = te("w")}, {
		t"augroup ", i(1, "AU_NAME", {key = "i1"}), nl(),
		t"\tautocmd!", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"augroup END"
	}),
	s({trig = "bun", descr = "(bun) Vundle.vim Plugin definition", priority = -1000, trigEngine = te("w")}, {
		t"Plugin \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "plug", descr = "(plug) vim-plug Plugin definition", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "plugdo", descr = "(plugdo) vim-plug Plugin definition with { \'do\': \'\' }", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(1, "", {key = "i1"}), t"\', { \'do\': \'", i(0, "", {key = "i0"}), t"\' }"
	}),
	s({trig = "plugon", descr = "(plugon) vim-plug Plugin definition with { \'on\': \'\' }", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(1, "", {key = "i1"}), t"\', { \'on\': \'", i(0, "", {key = "i0"}), t"\' }"
	}),
	s({trig = "plugfor", descr = "(plugfor) vim-plug Plugin definition with { \'for\': \'\' }", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(1, "", {key = "i1"}), t"\', { \'for\': \'", i(0, "", {key = "i0"}), t"\' }"
	}),
	s({trig = "plugbr", descr = "(plugbr) vim-plug Plugin definition with { \'branch\': \'\' }", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(1, "", {key = "i1"}), t"\', { \'branch\': \'", i(0, "", {key = "i0"}), t"\' }"
	}),
	s({trig = "plugtag", descr = "(plugtag) vim-plug Plugin definition with { \'tag\': \'\' }", priority = -1000, trigEngine = te("w")}, {
		t"Plug \'", i(1, "", {key = "i1"}), t"\', { \'tag\': \'", i(0, "", {key = "i0"}), t"\' }"
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "variable", {key = "i1"}), t" = ", i(0, " value", {key = "i0"})
	}),
	s({trig = "se", descr = "(se)", priority = -1000, trigEngine = te("w")}, {
		t"set ", i(1, "setting", {key = "i1"}), t";"
	}),
	s({trig = "set", descr = "(set)", priority = -1000, trigEngine = te("w")}, {
		t"set ", i(1, "setting", {key = "i1"}), t" = ", i(0, "value", {key = "i0"})
	}),
	s({trig = "nn", descr = "(nn)", priority = -1000, trigEngine = te("w")}, {
		t"nnoremap ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t"<CR>"
	}),
	s({trig = "no", descr = "(no)", priority = -1000, trigEngine = te("w")}, {
		t"noremap ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"})
	}),
	s({trig = "vm", descr = "(vm)", priority = -1000, trigEngine = te("w")}, {
		t"vmap ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"})
	}),
	s({trig = "im", descr = "(im)", priority = -1000, trigEngine = te("w")}, {
		t"imap ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"})
	}),
	s({trig = "exe", descr = "(exe)", priority = -1000, trigEngine = te("w")}, {
		t"execute ", i(1, "", {key = "i1"})
	}),
	s({trig = "filename", descr = "(filename)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("Filename()") end, {})
	}),
	s({trig = "gvar", descr = "(gvar) \"Global / configuration variable\"", priority = -50, trigEngine = te("b")}, {
		t"if !exists(\"g:", i(1, "MyUltraImportantVar", {key = "i1"}), t"\")", nl(),
		t"\tlet g:", cp(1), t" = ", d(2, function(args) return sn(nil, {t"\"", i(1, "<tab>", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), nl(),
		t"endif"
	}),
})
