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
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}},
	{},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
}
ls.add_snippets("jinja", {
	s({trig = "%", descr = "(%)", priority = -1000, trigEngine = te("w")}, {
		t"{% ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "%%", descr = "(%%)", priority = -1000, trigEngine = te("w")}, {
		t"{% ", i(1, "tag_name", {key = "i1"}), t" %}", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"{% end", cp(1), t" %}"
	}),
	s({trig = "{", descr = "({)", priority = -1000, trigEngine = te("w")}, {
		t"{{ ", i(1, "", {key = "i1"}), t" }}"
	}),
	s({trig = "autoescape", descr = "(autoescape)", priority = -1000, trigEngine = te("w")}, {
		t"{% autoescape ", i(1, "off", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endautoescape %}"
	}),
	s({trig = "block", descr = "(block)", priority = -1000, trigEngine = te("w")}, {
		t"{% block ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endblock %}"
	}),
	s({trig = "#", descr = "(#)", priority = -1000, trigEngine = te("w")}, {
		t"{# ", i(0, "comment", {key = "i0"}), t" #}"
	}),
	s({trig = "comment", descr = "(comment)", priority = -1000, trigEngine = te("w")}, {
		t"{% comment %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endcomment %}"
	}),
	s({trig = "cycle", descr = "(cycle)", priority = -1000, trigEngine = te("w")}, {
		t"{% cycle ", i(1, "val1", {key = "i1"}), t" ", i(2, "val2", {key = "i2"}), t" ", i(3, "as ${4}", {key = "i3"}), t" %}"
	}),
	s({trig = "debug", descr = "(debug)", priority = -1000, trigEngine = te("w")}, {
		t"{% debug %}"
	}),
	s({trig = "extends", descr = "(extends)", priority = -1000, trigEngine = te("w")}, {
		t"{% extends \"", i(0, "base.html", {key = "i0"}), t"\" %}"
	}),
	s({trig = "filter", descr = "(filter)", priority = -1000, trigEngine = te("w")}, {
		t"{% filter ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endfilter %}"
	}),
	s({trig = "firstof", descr = "(firstof)", priority = -1000, trigEngine = te("w")}, {
		t"{% firstof ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"{% for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endfor %}"
	}),
	s({trig = "empty", descr = "(empty)", priority = -1000, trigEngine = te("w")}, {
		t"{% empty %}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endif %}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"{% else %}", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"{% elif ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ifchanged", descr = "(ifchanged)", priority = -1000, trigEngine = te("w")}, {
		t"{% ifchanged %}", i(1, "", {key = "i1"}), t"{% endifchanged %}"
	}),
	s({trig = "ifequal", descr = "(ifequal)", priority = -1000, trigEngine = te("w")}, {
		t"{% ifequal ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endifequal %}"
	}),
	s({trig = "ifnotequal", descr = "(ifnotequal)", priority = -1000, trigEngine = te("w")}, {
		t"{% ifnotequal ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endifnotequal %}"
	}),
	s({trig = "include", descr = "(include)", priority = -1000, trigEngine = te("w")}, {
		t"{% include \"", i(0, "", {key = "i0"}), t"\" %}"
	}),
	s({trig = "load", descr = "(load)", priority = -1000, trigEngine = te("w")}, {
		t"{% load ", i(0, "", {key = "i0"}), t" %}"
	}),
	s({trig = "now", descr = "(now)", priority = -1000, trigEngine = te("w")}, {
		t"{% now \"", i(0, "jS F Y H:i", {key = "i0"}), t"\" %}"
	}),
	s({trig = "regroup", descr = "(regroup)", priority = -1000, trigEngine = te("w")}, {
		t"{% regroup ", i(1, "", {key = "i1"}), t" by ", i(2, "", {key = "i2"}), t" as ", i(0, "", {key = "i0"}), t" %}"
	}),
	s({trig = "spaceless", descr = "(spaceless)", priority = -1000, trigEngine = te("w")}, {
		t"{% spaceless %}", i(0, "", {key = "i0"}), t"{% endspaceless %}"
	}),
	s({trig = "ssi", descr = "(ssi)", priority = -1000, trigEngine = te("w")}, {
		t"{% ssi ", i(0, "", {key = "i0"}), t" %}"
	}),
	s({trig = "trans", descr = "(trans)", priority = -1000, trigEngine = te("w")}, {
		t"{% trans %}", i(0, "", {key = "i0"}), t"{% endtrans %}"
	}),
	s({trig = "url", descr = "(url)", priority = -1000, trigEngine = te("w")}, {
		t"{% url ", i(1, "", {key = "i1"}), t" as ", i(0, "", {key = "i0"}), t" %}"
	}),
	s({trig = "widthratio", descr = "(widthratio)", priority = -1000, trigEngine = te("w")}, {
		t"{% widthratio ", i(1, "this_value", {key = "i1"}), t" ", i(2, "max_value", {key = "i2"}), t" ", i(0, "100", {key = "i0"}), t" %}"
	}),
	s({trig = "with", descr = "(with)", priority = -1000, trigEngine = te("w")}, {
		t"{% with ", i(1, "", {key = "i1"}), t" as ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endwith %}", nl()
	}),
	s({trig = "add", descr = "(add)", priority = -1000, trigEngine = te("w")}, {
		t"add:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "center", descr = "(center)", priority = -1000, trigEngine = te("w")}, {
		t"center:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "cut", descr = "(cut)", priority = -1000, trigEngine = te("w")}, {
		t"cut:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "date", descr = "(date)", priority = -1000, trigEngine = te("w")}, {
		t"date:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "default", descr = "(default)", priority = -1000, trigEngine = te("w")}, {
		t"default:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "defaultifnone", descr = "(defaultifnone)", priority = -1000, trigEngine = te("w")}, {
		t"default_if_none:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "dictsort", descr = "(dictsort)", priority = -1000, trigEngine = te("w")}, {
		t"dictsort:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "dictsortrev", descr = "(dictsortrev)", priority = -1000, trigEngine = te("w")}, {
		t"dictsortreversed:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "divisibleby", descr = "(divisibleby)", priority = -1000, trigEngine = te("w")}, {
		t"divisibleby:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "floatformat", descr = "(floatformat)", priority = -1000, trigEngine = te("w")}, {
		t"floatformat:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "getdigit", descr = "(getdigit)", priority = -1000, trigEngine = te("w")}, {
		t"get_digit:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "join", descr = "(join)", priority = -1000, trigEngine = te("w")}, {
		t"join:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "lengthis", descr = "(lengthis)", priority = -1000, trigEngine = te("w")}, {
		t"length_is:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "pluralize", descr = "(pluralize)", priority = -1000, trigEngine = te("w")}, {
		t"pluralize:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "removetags", descr = "(removetags)", priority = -1000, trigEngine = te("w")}, {
		t"removetags:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "slice", descr = "(slice)", priority = -1000, trigEngine = te("w")}, {
		t"slice:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "stringformat", descr = "(stringformat)", priority = -1000, trigEngine = te("w")}, {
		t"stringformat:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "time", descr = "(time)", priority = -1000, trigEngine = te("w")}, {
		t"time:\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "truncatewords", descr = "(truncatewords)", priority = -1000, trigEngine = te("w")}, {
		t"truncatewords:", i(0, "", {key = "i0"})
	}),
	s({trig = "truncatewordshtml", descr = "(truncatewordshtml)", priority = -1000, trigEngine = te("w")}, {
		t"truncatewords_html:", i(0, "", {key = "i0"})
	}),
	s({trig = "urlizetrunc", descr = "(urlizetrunc)", priority = -1000, trigEngine = te("w")}, {
		t"urlizetrunc:", i(0, "", {key = "i0"})
	}),
	s({trig = "wordwrap", descr = "(wordwrap)", priority = -1000, trigEngine = te("w")}, {
		t"wordwrap:", i(0, "", {key = "i0"})
	}),
})
