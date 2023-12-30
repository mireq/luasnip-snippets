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
	0,
	0,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	0,
	1,
	1,
	1,
	2,
	3,
	0,
	2,
	1,
	1,
	0,
	0,
	1,
	2,
	0,
	1,
	0,
	2,
	1,
	2,
	0,
	0,
	2,
	0,
	1,
	0,
	2,
	0,
	2,
	1,
	0,
	0,
	1,
	2,
	1,
	0,
	2,
	1,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	1,
	1,
}
ls.add_snippets("twig", {
	s({trig = "apply", descr = "(apply) \"twig apply\"", priority = -1000, trigEngine = te("w")}, {
		t"{% apply ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endapply %}"
	}),
	s({trig = "autoescape", descr = "(autoescape) \"twig autoescape\"", priority = -1000, trigEngine = te("w")}, {
		t"{% autoescape %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endautoescape %}"
	}),
	s({trig = "endautoescape", descr = "(endautoescape) \"twig endautoescape\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endautoescape %}", i(0, "", {key = "i0"})
	}),
	s({trig = "bl", descr = "(bl) \"twig block\"", priority = -1000, trigEngine = te("w")}, {
		t"{% block ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endblock %}"
	}),
	s({trig = "block", descr = "(block) \"twig block\"", priority = -1000, trigEngine = te("w")}, {
		t"{% block ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endblock %}"
	}),
	s({trig = "endblock", descr = "(endblock) \"twig endblock\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endblock %}", i(0, "", {key = "i0"})
	}),
	s({trig = "cache", descr = "(cache) \"twig cache\"", priority = -1000, trigEngine = te("w")}, {
		t"{% cache %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endcache %}"
	}),
	s({trig = "endcache", descr = "(endcache) \"twig endcache\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endcache %}", i(0, "", {key = "i0"})
	}),
	s({trig = "css", descr = "(css) \"twig css\"", priority = -1000, trigEngine = te("w")}, {
		t"{% css %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endcss %}"
	}),
	s({trig = "endcss", descr = "(endcss) \"twig endcss\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endcss %}", i(0, "", {key = "i0"})
	}),
	s({trig = "dd", descr = "(dd) \"twig dd\"", priority = -1000, trigEngine = te("w")}, {
		t"{% dd ", i(1, "", {key = "i1"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "do", descr = "(do) \"twig do\"", priority = -1000, trigEngine = te("w")}, {
		t"{% do ", i(1, "", {key = "i1"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "embed", descr = "(embed) \"twig embed\"", priority = -1000, trigEngine = te("w")}, {
		t"{% embed \"", i(1, "", {key = "i1"}), t"\" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endembed %}"
	}),
	s({trig = "endembed", descr = "(endembed) \"twig endembed\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endembed %}", i(0, "", {key = "i0"})
	}),
	s({trig = "exit", descr = "(exit) \"twig exit\"", priority = -1000, trigEngine = te("w")}, {
		t"{% exit ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "extends", descr = "(extends) \"twig extends\"", priority = -1000, trigEngine = te("w")}, {
		t"{% extends \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "ext", descr = "(ext) \"twig extends\"", priority = -1000, trigEngine = te("w")}, {
		t"{% extends \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "for", descr = "(for) \"twig for\"", priority = -1000, trigEngine = te("w")}, {
		t"{% for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endfor %}"
	}),
	s({trig = "fore", descr = "(fore) \"twig for else\"", priority = -1000, trigEngine = te("w")}, {
		t"{% for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% else %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endfor %}"
	}),
	s({trig = "endfor", descr = "(endfor) \"twig endfor\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endfor %}", i(0, "", {key = "i0"})
	}),
	s({trig = "from", descr = "(from) \"twig from\"", priority = -1000, trigEngine = te("w")}, {
		t"{% from \"", i(1, "", {key = "i1"}), t"\" import ", i(2, "", {key = "i2"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "header", descr = "(header) \"twig header\"", priority = -1000, trigEngine = te("w")}, {
		t"{% header \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "hook", descr = "(hook) \"twig hook\"", priority = -1000, trigEngine = te("w")}, {
		t"{% hook \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "html", descr = "(html) \"twig html\"", priority = -1000, trigEngine = te("w")}, {
		t"{% html %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endhtml %}"
	}),
	s({trig = "endhtml", descr = "(endhtml) \"twig endhtml\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endhtml %}", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if) \"twig if\"", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endif %}"
	}),
	s({trig = "ife", descr = "(ife) \"twig if else\"", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% else %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endif %}"
	}),
	s({trig = "el", descr = "(el) \"twig else\"", priority = -1000, trigEngine = te("w")}, {
		t"{% else %}"
	}),
	s({trig = "eif", descr = "(eif) \"twig elseif\"", priority = -1000, trigEngine = te("w")}, {
		t"{% elseif ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "endif", descr = "(endif) \"twig endif\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endif %}", i(0, "", {key = "i0"})
	}),
	s({trig = "import", descr = "(import) \"twig import\"", priority = -1000, trigEngine = te("w")}, {
		t"{% import \"", i(1, "", {key = "i1"}), t"\" as ", i(2, "", {key = "i2"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "include", descr = "(include) \"twig include\"", priority = -1000, trigEngine = te("w")}, {
		t"{% include \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "includewith", descr = "(includewith) \"twig include with parameters\"", priority = -1000, trigEngine = te("w")}, {
		t"{% include \"", i(1, "", {key = "i1"}), t"\" with ", i(2, "", {key = "i2"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "js", descr = "(js) \"twig js\"", priority = -1000, trigEngine = te("w")}, {
		t"{% js %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endjs %}"
	}),
	s({trig = "endjs", descr = "(endjs) \"twig endjs\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endjs %}", i(0, "", {key = "i0"})
	}),
	s({trig = "macro", descr = "(macro) \"twig macro\"", priority = -1000, trigEngine = te("w")}, {
		t"{% macro ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t") %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endmacro %}"
	}),
	s({trig = "endmacro", descr = "(endmacro) \"twig endmacro\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endmacro %}", i(0, "", {key = "i0"})
	}),
	s({trig = "namespace", descr = "(namespace) \"twig namespace\"", priority = -1000, trigEngine = te("w")}, {
		t"{% namespace \"", i(1, "", {key = "i1"}), t"\" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endnamespace %}"
	}),
	s({trig = "endnamespace", descr = "(endnamespace) \"twig endnamespace\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endnamespace %}", i(0, "", {key = "i0"})
	}),
	s({trig = "nav", descr = "(nav) \"twig nav\"", priority = -1000, trigEngine = te("w")}, {
		t"{% nav ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endnav %}"
	}),
	s({trig = "endnav", descr = "(endnav) \"twig endnav\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endnav %}", i(0, "", {key = "i0"})
	}),
	s({trig = "paginate", descr = "(paginate) \"twig paginate\"", priority = -1000, trigEngine = te("w")}, {
		t"{% paginate ", i(1, "", {key = "i1"}), t" as ", i(2, "", {key = "i2"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "redirect", descr = "(redirect) \"twig redirect\"", priority = -1000, trigEngine = te("w")}, {
		t"{% redirect \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "requireguest", descr = "(requireguest) \"twig requireguest\"", priority = -1000, trigEngine = te("w")}, {
		t"{% requireGuest %}", i(0, "", {key = "i0"})
	}),
	s({trig = "requirelogin", descr = "(requirelogin) \"twig requirelogin\"", priority = -1000, trigEngine = te("w")}, {
		t"{% requireLogin %}", i(0, "", {key = "i0"})
	}),
	s({trig = "requirepermission", descr = "(requirepermission) \"twig requirepermission\"", priority = -1000, trigEngine = te("w")}, {
		t"{% requirePermission \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "set", descr = "(set) \"twig set\"", priority = -1000, trigEngine = te("w")}, {
		t"{% set ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "setb", descr = "(setb) \"twig set block\"", priority = -1000, trigEngine = te("w")}, {
		t"{% set ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endset %}"
	}),
	s({trig = "endset", descr = "(endset) \"twig endset\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endset %}", i(0, "", {key = "i0"})
	}),
	s({trig = "switch", descr = "(switch) \"twig switch\"", priority = -1000, trigEngine = te("w")}, {
		t"{% switch ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t{% case \"", i(2, "", {key = "i2"}), t"\" %}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t{% default %}", nl(),
		t"\t\t", nl(),
		t"{% endswitch %}"
	}),
	s({trig = "case", descr = "(case) \"twig switch case\"", priority = -1000, trigEngine = te("w")}, {
		t"{% case \"", i(1, "", {key = "i1"}), t"\" %}", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "default", descr = "(default) \"twig switch default\"", priority = -1000, trigEngine = te("w")}, {
		t"{% default %}", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "endswitch", descr = "(endswitch) \"twig endswitch\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endswitch %}", i(0, "", {key = "i0"})
	}),
	s({trig = "use", descr = "(use) \"twig use\"", priority = -1000, trigEngine = te("w")}, {
		t"{% use \"", i(1, "", {key = "i1"}), t"\" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "verbatim", descr = "(verbatim) \"twig verbatim\"", priority = -1000, trigEngine = te("w")}, {
		t"{% verbatim %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endverbatim %}"
	}),
	s({trig = "endverbatim", descr = "(endverbatim) \"twig endverbatim\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endverbatim %}", i(0, "", {key = "i0"})
	}),
	s({trig = "with", descr = "(with) \"twig with\"", priority = -1000, trigEngine = te("w")}, {
		t"{% with %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endwith %}"
	}),
	s({trig = "endwith", descr = "(endwith) \"twig endwith\"", priority = -1000, trigEngine = te("w")}, {
		t"{% endwith %}", i(0, "", {key = "i0"}), nl()
	}),
	s({trig = "dump", descr = "(dump) \"twig dump\"", priority = -1000, trigEngine = te("w")}, {
		t"<pre>", nl(),
		t"\t{{ dump(", i(1, "", {key = "i1"}), t") }}", nl(),
		t"</pre>", nl()
	}),
	s({trig = "translate", descr = "(translate) \"twig translate\"", priority = -1000, trigEngine = te("w")}, {
		t"{{ \"", i(1, "", {key = "i1"}), t"\"|t }}", i(0, "", {key = "i0"})
	}),
})
