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
local c_py = su.code_python
local c_viml = su.code_viml
local c_shell = su.code_shell
local make_actions = su.make_actions


ls.add_snippets("htmldjango", {
	s({trig = "%", descr = "(%) \"Statement\"", priority = 0, trigEngine = te("!i")}, {
		t"{% ", i(1, "", {key = "i1"}), t" %}", i(0, "", {key = "i0"})
	}),
	s({trig = "%%", descr = "(%%) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% ", i(1, "tag_name", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% end", cp(1), t" %}"
	}),
	s({trig = "{", descr = "({) \"Variable\"", priority = 0, trigEngine = te("!i")}, {
		t"{{ ", i(1, "", {key = "i1"}), t" }}", i(0, "", {key = "i0"})
	}),
	s({trig = "autoescape", descr = "(autoescape) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% autoescape ", i(1, "off", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% endautoescape %}"
	}),
	s({trig = "block", descr = "(block) \"\"", priority = 0, trigEngine = te("!")}, {
		t"{% block ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% endblock %}"
	}),
	s({trig = "#", descr = "(#) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{# ", i(1, "comment", {key = "i1"}), t" #}"
	}),
	s({trig = "comment", descr = "(comment) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% comment %}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"{% endcomment %}"
	}),
	s({trig = "cycle", descr = "(cycle) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% cycle ", i(1, "val1", {key = "i1"}), t" ", i(2, "val2", {key = "i2"}), t" ", c(3, {{t"as ", i(1, "", {key = "i4"})}, {i(1, jt({"as ", ""}))}}, {key = "i3"}), t" %}"
	}),
	s({trig = "debug", descr = "(debug) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% debug %}"
	}),
	s({trig = "extends", descr = "(extends) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% extends \"", i(1, "base.html", {key = "i1"}), t"\" %}"
	}),
	s({trig = "filter", descr = "(filter) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% filter ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% endfilter %}"
	}),
	s({trig = "firstof", descr = "(firstof) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% firstof ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "for", descr = "(for) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% endfor %}"
	}),
	s({trig = "empty", descr = "(empty) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% empty %}", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "if", descr = "(if) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
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
	s({trig = "ifchanged", descr = "(ifchanged) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% ifchanged %}", i(1, "", {key = "i1"}), t"{% endifchanged %}"
	}),
	s({trig = "ifequal", descr = "(ifequal) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% ifequal ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% endifequal %}"
	}),
	s({trig = "ifnotequal", descr = "(ifnotequal) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% ifnotequal ", i(1, "", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"{% endifnotequal %}"
	}),
	s({trig = "include", descr = "(include) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% include \"", i(1, "", {key = "i1"}), t"\" %}"
	}),
	s({trig = "load", descr = "(load) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% load ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "now", descr = "(now) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% now \"", i(1, "jS F Y H:i", {key = "i1"}), t"\" %}"
	}),
	s({trig = "regroup", descr = "(regroup) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% regroup ", i(1, "", {key = "i1"}), t" by ", i(2, "", {key = "i2"}), t" as ", i(3, "", {key = "i3"}), t" %}"
	}),
	s({trig = "spaceless", descr = "(spaceless) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% spaceless %}", i(1, "", {key = "i1"}), t"{% endspaceless %}"
	}),
	s({trig = "ssi", descr = "(ssi) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% ssi ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "trans", descr = "(trans) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% trans \"", i(1, "string", {key = "i1"}), t"\" %}"
	}),
	s({trig = "url", descr = "(url) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% url ", i(1, "", {key = "i1"}), t" as ", i(2, "", {key = "i2"}), t" %}"
	}),
	s({trig = "widthratio", descr = "(widthratio) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% widthratio ", i(1, "this_value", {key = "i1"}), t" ", i(2, "max_value", {key = "i2"}), t" ", i(3, "100", {key = "i3"}), t" %}"
	}),
	s({trig = "with", descr = "(with) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% with ", i(1, "", {key = "i1"}), t" as ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"{% endwith %}"
	}),
	s({trig = "add", descr = "(add) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"add:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "center", descr = "(center) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"center:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "cut", descr = "(cut) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"cut:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "date", descr = "(date) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"date:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "default", descr = "(default) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"default:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "defaultifnone", descr = "(defaultifnone) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"default_if_none:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "dictsort", descr = "(dictsort) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"dictsort:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "dictsortrev", descr = "(dictsortrev) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"dictsortreversed:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "divisibleby", descr = "(divisibleby) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"divisibleby:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "floatformat", descr = "(floatformat) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"floatformat:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "getdigit", descr = "(getdigit) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"get_digit:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "join", descr = "(join) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"join:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "lengthis", descr = "(lengthis) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"length_is:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "pluralize", descr = "(pluralize) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"pluralize:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "removetags", descr = "(removetags) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"removetags:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "slice", descr = "(slice) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"slice:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "stringformat", descr = "(stringformat) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"stringformat:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "time", descr = "(time) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"time:\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "truncatewords", descr = "(truncatewords) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"truncatewords:", i(1, "", {key = "i1"})
	}),
	s({trig = "truncatewordshtml", descr = "(truncatewordshtml) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"truncatewords_html:", i(1, "", {key = "i1"})
	}),
	s({trig = "urlizetrunc", descr = "(urlizetrunc) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"urlizetrunc:", i(1, "", {key = "i1"})
	}),
	s({trig = "wordwrap", descr = "(wordwrap) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"wordwrap:", i(1, "", {key = "i1"})
	}),
	s({trig = "iif", descr = "(iif) \"Inline if\"", priority = 0, trigEngine = te("!i")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", i(0, "", {key = "i0"}), t"{% endif %}"
	}),
	s({trig = "ielse", descr = "(ielse) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% else %}", i(1, "", {key = "i1"})
	}),
	s({trig = "else", descr = "(else) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% else %}", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "ielif", descr = "(ielif) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% elif %}", i(1, "", {key = "i1"})
	}),
	s({trig = "elif", descr = "(elif) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% elif %}", nl(),
		t"\t", i(1, "", {key = "i1"})
	}),
	s({trig = "verbatim", descr = "(verbatim) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% verbatim %}", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"{% endverbatim %}"
	}),
	s({trig = "super", descr = "(super) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{{ block.super }}"
	}),
	s({trig = "staticu", descr = "(staticu) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{{ STATIC_URL }}"
	}),
	s({trig = "static", descr = "(static) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% static \"", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t"\" %}"
	}),
	s({trig = "mediau", descr = "(mediau) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{{ MEDIA_URL }}"
	}),
	s({trig = "iblock", descr = "(iblock) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% block ", i(1, "blockname", {key = "i1"}), t" %}", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), t"{% endblock ", cp(1), t" %}"
	}),
	s({trig = "csrf", descr = "(csrf) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% csrf_token %}"
	}),
	s({trig = "blocktrans", descr = "(blocktrans) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% blocktrans %}", nl(),
		t"    ", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), nl(),
		t"{% endblocktrans %}"
	}),
	s({trig = "lorem", descr = "(lorem) \"\"", priority = -50, trigEngine = te("bi")}, {
		t"{% lorem ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "html5", descr = "(html5) \"HTML5 Template\"", priority = 0, trigEngine = te("!")}, {
		t"{% load staticfiles %}<!DOCTYPE html>", nl(),
		t"<html>", nl(),
		t"<head>", nl(),
		t"\t<title>{% block head_title %}", i(1, "title", {key = "i1"}), t"{% endblock %}</title>", nl(),
		t"\t<meta charset=\"utf-8\" />", nl(),
		t"\t<link href=\"{% static \'css/style.css\' %}\" rel=\"stylesheet\" />", nl(),
		t"\t{% block extraheaders %}{% endblock %}", nl(),
		t"\t{% block extrastyle %}{% endblock %}", nl(),
		t"</head>", nl(),
		t"<body>", nl(),
		t"{% block body %}", i(0, "", {key = "i0"}), t"{% endblock %}", nl(),
		t"</body>", nl(),
		t"</html>"
	}),
	s({trig = "bootstrap_head", descr = "(bootstrap_head) \"Bootstrap head\"", priority = 0, trigEngine = te("!")}, {
		t"<!-- Navigácia -->", nl(),
		t"<header class=\"navbar navbar-inverse\" role=\"banner\">", nl(),
		t"\t<div class=\"container\">", nl(),
		t"\t\t<div class=\"navbar-header\">", nl(),
		t"\t\t\t<button class=\"navbar-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">", nl(),
		t"\t\t\t\t<span class=\"sr-only\">Zapnúť navigáciu</span>", nl(),
		t"\t\t\t\t<span class=\"icon-bar\"></span>", nl(),
		t"\t\t\t\t<span class=\"icon-bar\"></span>", nl(),
		t"\t\t\t\t<span class=\"icon-bar\"></span>", nl(),
		t"\t\t\t</button>", nl(),
		t"\t\t\t<a href=\"/\" class=\"navbar-brand\">", i(1, "site", {key = "i1"}), t"</a>", nl(),
		t"\t\t</div>", nl(),
		t"\t\t<nav class=\"collapse navbar-collapse navbar-collapse\" role=\"navigation\">", nl(),
		t"\t\t\t<ul class=\"nav navbar-nav\">", nl(),
		t"\t\t\t\t<li class=\"active\">", nl(),
		t"\t\t\t\t\t<a href=\"/\">Domovská stránka</a>", nl(),
		t"\t\t\t\t</li>", nl(),
		t"\t\t\t</ul>", nl(),
		t"\t\t\t<ul class=\"nav navbar-nav navbar-right\">", nl(),
		t"\t\t\t\t<li><a rel=\"nofollow\" href=\"#\">Menu</a></li>", nl(),
		t"\t\t\t</ul>", nl(),
		t"\t\t</nav>", nl(),
		t"\t</div>", nl(),
		t"</header>", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "bootstrap_layout", descr = "(bootstrap_layout) \"Bootstrap layout\"", priority = 0, trigEngine = te("!")}, {
		t"<div class=\"row\">", nl(),
		t"\t<div class=\"col-md-6\"></div>", nl(),
		t"\t<div class=\"col-md-6\"></div>", nl(),
		t"</div>", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "bootstrap_media", descr = "(bootstrap_media) \"Bootstrap media\"", priority = 0, trigEngine = te("!")}, {
		t"<div class=\"media\">", nl(),
		t"\t<a class=\"pull-left\" href=\"#\">", nl(),
		t"\t\t<img class=\"media-object\" src=\"", i(2, "link", {key = "i2"}), t"\" alt=\"..\">", nl(),
		t"\t</a>", nl(),
		t"\t<div class=\"media-body\">", nl(),
		t"\t<h4 class=\"media-heading\">", i(1, "heading", {key = "i1"}), t"</h4>", nl(),
		t"\t\t...", nl(),
		t"\t</div>", nl(),
		t"</div>", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "bootstrap_menu", descr = "(bootstrap_menu) \"Bootstrap menu\"", priority = 0, trigEngine = te("!")}, {
		t"<div class=\"list-group\">", nl(),
		t"\t<a href=\"#\" class=\"list-group-item\">", i(1, "item", {key = "i1"}), t"</a>", nl(),
		t"</div>", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "cdata", descr = "(cdata) \"\"", priority = 0, trigEngine = te("!")}, {
		t"<![CDATA[", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"]]>"
	}),
	s({trig = "inc", descr = "(inc) \"\"", priority = 0, trigEngine = te("bi")}, {
		t"{% include \"", i(1, "", {key = "i1"}), t"\" %}"
	}),
})
