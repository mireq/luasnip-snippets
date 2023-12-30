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
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	2,
	0,
	1,
	3,
	3,
	4,
	{{1, 1}, {2, 2}, {3, 4}},
	2,
	{{1, 1}, {2, 3}, {3, 4}},
	2,
	0,
	0,
	1,
	1,
	0,
	1,
}
ls.add_snippets("org", {
	s({trig = "begin", descr = "(begin)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_", i(1, "type", {key = "i1"}), t" ", i(2, "options", {key = "i2"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_", cp(1)
	}),
	s({trig = "<C", descr = "(<C)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_center", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_center"
	}),
	s({trig = "<c", descr = "(<c)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_comment", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_comment"
	}),
	s({trig = "<e", descr = "(<e)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_example", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_example"
	}),
	s({trig = "<a", descr = "(<a)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export ascii", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "<h", descr = "(<h)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export html", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "<l", descr = "(<l)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export latex", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "<p", descr = "(<p)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export python", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "<s", descr = "(<s)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export shell", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "dot", descr = "(dot)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_src dot :file ", i(1, "file", {key = "i1"}), t".", i(2, "svg", {key = "i2"}), t" :results file graphics", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_src"
	}),
	s({trig = "elisp", descr = "(elisp)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_src emacs-lisp :tangle yes", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_src"
	}),
	s({trig = "entry", descr = "(entry)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_html", nl(),
		t"---", nl(),
		t"layout: ", i(1, "default", {key = "i1"}), nl(),
		t"title: ", i(2, "title", {key = "i2"}), nl(),
		t"---", nl(),
		t"#+end_html", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ex", descr = "(ex)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_example", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_example"
	}),
	s({trig = "export", descr = "(export)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_export ", i(1, "type", {key = "i1"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_export"
	}),
	s({trig = "fig", descr = "(fig)", priority = -1000, trigEngine = te("w")}, {
		t"#+caption: ", i(1, "caption", {key = "i1"}), nl(),
		t"#+attr_latex: ", i(2, "scale=0.75", {key = "i2"}), nl(),
		t"#+name: fig-", i(3, "label", {key = "i3"})
	}),
	s({trig = "head", descr = "(head)", priority = -1000, trigEngine = te("w")}, {
		t"#+title:     ", i(1, "untitled document", {key = "i1"}), nl(),
		t"#+author:    ", i(2, "user-full-name", {key = "i2"}), nl(),
		t"#+email:     ", i(3, "user-mail-address", {key = "i3"})
	}),
	s({trig = "img", descr = "(img)", priority = -1000, trigEngine = te("w")}, {
		t"#+attr_html: :alt ", i(2, "", {key = "i2"}), t" :align ", i(3, "left", {key = "i3"}), t" :class img", nl(),
		t"[[", i(1, "src", {key = "i1"}), t"]", i(4, "[${5:title}]", {key = "i4"}), t"]", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "inl", descr = "(inl)", priority = -1000, trigEngine = te("w")}, {
		t"src_", i(1, "language", {key = "i1"}), i(2, "[${3::exports code}]", {key = "i2"}), t"{", i(3, "code", {key = "i3"}), t"}"
	}),
	s({trig = "srci", descr = "(srci)", priority = -1000, trigEngine = te("w")}, {
		t"src_", i(1, "language", {key = "i1"}), t"[", i(2, "header", {key = "i2"}), t"]{", i(0, "body", {key = "i0"}), t"}"
	}),
	s({trig = "jupyter", descr = "(jupyter)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_src jupyter-", i(1, "$$(yas-choose-value \'(\"python\" \"julia\" \"R\"))", {key = "i1"}), t" :session ", i(2, "", {key = "i3"}), i(3, " :async yes", {key = "i3"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_src"
	}),
	s({trig = "matrix", descr = "(matrix)", priority = -1000, trigEngine = te("w")}, {
		t"\\left \\(", nl(),
		t"\\begin{array}{", i(1, "ccc", {key = "i1"}), t"}", nl(),
		i(2, "v1 & v2", {key = "i2"}), t" \\", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"\\end{array}", nl(),
		t"\\right \\)"
	}),
	s({trig = "name", descr = "(name)", priority = -1000, trigEngine = te("w")}, {
		t"#+name: ", i(0, "", {key = "i0"})
	}),
	s({trig = "quote", descr = "(quote)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_quote", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_quote"
	}),
	s({trig = "src", descr = "(src)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_src ", i(1, "", {key = "i1"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_src"
	}),
	s({trig = "todo", descr = "(todo)", priority = -1000, trigEngine = te("w")}, {
		t"TODO ", i(1, "task description", {key = "i1"})
	}),
	s({trig = "verse", descr = "(verse)", priority = -1000, trigEngine = te("w")}, {
		t"#+begin_verse", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"#+end_verse"
	}),
	s({trig = "#+attr_html:width", descr = "(#+attr_html:width)", priority = -1000, trigEngine = te("w")}, {
		t"#+attr_html: :width ", i(1, "500px", {key = "i1"})
	}),
})
