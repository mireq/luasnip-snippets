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
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{1},
	{0, 1, 2, 3, 4, 6},
	{0, 1, 2, 3, 4, 6, 8},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 5},
	{0, 1, 2, 3, 5},
	{0, 1},
	{0, 1},
	{1, 2, 4},
	{0, 1, 2, 4},
	{1},
	{0, 1, 2},
	{0},
	{0},
	{0, 1, 2, 4, 6, 8, 10},
	{0, 1},
	{0},
	{1, 2, 3, 5},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12},
}
ls.add_snippets("smarty", {
	s({trig = "if", descr = "(if) \"{if cond} ... {/if}\"", priority = -1000, trigEngine = te("w")}, {
		t"{if ", i(1, "", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/if}", nl()
	}),
	s({trig = "ifn", descr = "(ifn) \"{if !cond} ... {/if}\"", priority = -1000, trigEngine = te("w")}, {
		t"{if ", i(1, "", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/if}", nl()
	}),
	s({trig = "ife", descr = "(ife) \"{if cond} ... {else} ... {/if}\"", priority = -1000, trigEngine = te("w")}, {
		t"{if ", i(1, "", {key = "i1"}), t"}", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{else}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{/if}", nl()
	}),
	s({trig = "eif", descr = "(eif) \"{elseif cond} ... {/if}\"", priority = -1000, trigEngine = te("w")}, {
		t"{elseif ", i(1, "", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/if}", nl()
	}),
	s({trig = "el", descr = "(el) \"{else} ... {/if}\"", priority = -1000, trigEngine = te("w")}, {
		t"{else}", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"{/if}", nl()
	}),
	s({trig = "for", descr = "(for) \"The {for} tag is used to create simple loops.\"", priority = -1000, trigEngine = te("w")}, {
		t"{for $", i(1, "var", {key = "i1"}), t"=", i(2, "start", {key = "i2"}), t" to ", i(3, "end", {key = "i3"}), i(4, " step ${5}", {key = "i4"}), i(5, " max=${7}", {key = "i6"}), t"}", nl(),
		t"\t", d(6, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/for}", nl()
	}),
	s({trig = "forelse", descr = "(forelse) \"The {for}{forelse} tag is used to create simple loops.\"", priority = -1000, trigEngine = te("w")}, {
		t"{for $", i(1, "var", {key = "i1"}), t"=", i(2, "start", {key = "i2"}), t" to ", i(3, "end", {key = "i3"}), i(4, " step ${5}", {key = "i4"}), i(5, " max=${7}", {key = "i6"}), t"}", nl(),
		t"\t", d(7, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{forelse}", nl(),
		t"\t", i(6, "", {key = "i8"}), nl(),
		t"{/for}", nl()
	}),
	s({trig = "foreach", descr = "(foreach) \"{foreach} is used for looping over arrays of data.\"", priority = -1000, trigEngine = te("w")}, {
		t"{foreach $", i(1, "array_variable", {key = "i1"}), t" as $", i(2, "var_or_key", {key = "i2"}), i(3, " => $${4:itemvar}", {key = "i3"}), t"}", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/foreach}", nl()
	}),
	s({trig = "foreach2", descr = "(foreach2) \"[Smarty2] {foreach} is used for looping over arrays of data.\"", priority = -1000, trigEngine = te("w")}, {
		t"{foreach from=$", i(1, "collection", {key = "i1"}), t" item=\'", i(2, "", {key = "i2"}), t"\'", i(3, " key=\'${4}\'", {key = "i3"}), i(4, " name=\'${6}\'", {key = "i5"}), t"}", nl(),
		t"\t", d(5, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/foreach}", nl()
	}),
	s({trig = "foreachelse", descr = "(foreachelse) \"{foreach} is used for looping over arrays of data.\"", priority = -1000, trigEngine = te("w")}, {
		t"{foreach $", i(1, "array_variable", {key = "i1"}), t" as $", i(2, "var_or_key", {key = "i2"}), i(3, " => $${4:itemvar}", {key = "i3"}), t"}", nl(),
		t"\t", d(5, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{foreachelse}", nl(),
		t"\t", i(4, "", {key = "i5"}), nl(),
		t"{/foreach}", nl()
	}),
	s({trig = "wh", descr = "(wh) \"{while} loops in Smarty have much the same flexibility as PHP while statements, with a few added features for the template engine. Every {while} must be paired with a matching {/while}. All PHP conditionals and functions are recognized, such as ||, or, &&, and, is_array(), etc.\"", priority = -1000, trigEngine = te("w")}, {
		t"{while ", i(1, "", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/while}", nl(),
		nl(),
		nl()
	}),
	s({trig = "block", descr = "(block) \"{block} is used to define a named area of template source for template inheritance.\"", priority = -1000, trigEngine = te("w")}, {
		t"{block name=\'", i(1, "", {key = "i1"}), t"\'}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/block}", nl()
	}),
	s({trig = "call", descr = "(call) \"{call} is used to call a template function defined by the {function} tag just like a plugin function.\"", priority = -1000, trigEngine = te("w")}, {
		t"{call name=", i(1, "", {key = "i1"}), i(2, " assign=${3}", {key = "i2"}), i(3, " variables", {key = "i4"}), t"}", nl()
	}),
	s({trig = "capture", descr = "(capture) \"{capture} is used to collect the output of the template between the tags into a variable instead of displaying it. Any content between {capture name=\'foo\'} and {/capture} is collected into the variable specified in the name attribute. \"", priority = -1000, trigEngine = te("w")}, {
		t"{capture name=\'", i(1, "", {key = "i1"}), t"\'", i(2, " assign=\'${3}\' ", {key = "i2"}), i(3, " append=\'${5:array_variable}\'", {key = "i4"}), t"}", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/capture}", nl()
	}),
	s({trig = "extends", descr = "(extends) \"{extends} tags are used in child templates in template inheritance for extending parent templates.\"", priority = -1000, trigEngine = te("w")}, {
		t"{extends file=\'", i(1, "", {key = "i1"}), t"\'}", nl()
	}),
	s({trig = "function", descr = "(function) \"{function} is used to create functions within a template and call them just like a plugin function. Instead of writing a plugin that generates presentational content, keeping it in the template is often a more manageable choice. It also simplifies data traversal, such as deeply nested menus.\"", priority = -1000, trigEngine = te("w")}, {
		t"{function name=\'", i(1, "", {key = "i1"}), t"\' ", i(2, "variables", {key = "i2"}), t"}", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/function}", nl()
	}),
	s({trig = "literal", descr = "(literal) \"{literal} tags allow a block of data to be taken literally. This is typically used around Javascript or stylesheet blocks where {curly braces} would interfere with the template delimiter syntax\"", priority = -1000, trigEngine = te("w")}, {
		t"{literal}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/literal}", nl()
	}),
	s({trig = "nocache", descr = "(nocache) \"{nocache} is used to disable caching of a template section. Every {nocache} must be paired with a matching {/nocache}.\"", priority = -1000, trigEngine = te("w")}, {
		t"{nocache}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/nocache}", nl()
	}),
	s({trig = "section", descr = "(section) \"A {section} is for looping over sequentially indexed arrays of data, unlike {foreach} which is used to loop over a single associative array. Every {section} tag must be paired with a closing {/section} tag.\"", priority = -1000, trigEngine = te("w")}, {
		t"{section name=\'", i(1, "", {key = "i1"}), t"\'", i(2, " loop=\'${3}\'", {key = "i2"}), i(3, " start=${5}", {key = "i4"}), i(4, " step=${7}", {key = "i6"}), i(5, " max=${9}", {key = "i8"}), i(6, " show=${11}", {key = "i10"}), t"}", nl(),
		t"\t", d(7, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/section}", nl()
	}),
	s({trig = "setfilter", descr = "(setfilter) \"The {setfilter}...{/setfilter} block tag allows the definition of template instance\'s variable filters.\"", priority = -1000, trigEngine = te("w")}, {
		t"{setfilter ", i(1, "filters", {key = "i1"}), t"}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/setfilter}", nl()
	}),
	s({trig = "strip", descr = "(strip) \"Anything within {strip}{/strip} tags are stripped of the extra spaces or carriage returns at the beginnings and ends of the lines before they are displayed. This way you can keep your templates readable, and not worry about extra white space causing problems.\"", priority = -1000, trigEngine = te("w")}, {
		t"{strip}", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{/strip}"
	}),
	s({trig = "append", descr = "(append) \"{append} is used for creating or appending template variable arrays during the execution of a template.\"", priority = 0, trigEngine = te("")}, {
		t"{append var=\'", i(1, "", {key = "i1"}), t"\' value=\'", i(2, "", {key = "i2"}), t"\'", d(3, function(args, snip) return sn(nil, { i(1, jt({" index=\'", "first|last", "\'"}, ""), {key = "i3"}) }) end), d(4, function(args, snip) return sn(nil, { i(1, jt({" scope=\'", "parent|root|global", "\'"}, ""), {key = "i5"}) }) end), t"}"
	}),
	s({trig = "assign", descr = "(assign) \"{assign} is used for assigning template variables during the execution of a template.\"", priority = 0, trigEngine = te("")}, {
		t"{assign var=\'", i(1, "", {key = "i1"}), t"\' value=\'", i(2, "", {key = "i2"}), t"\'", d(3, function(args, snip) return sn(nil, { i(1, jt({" scope=\'", "parent|root|global", "\'"}, ""), {key = "i3"}) }) end), t"}"
	}),
	s({trig = "config_load", descr = "(config_load) \"config_load\"", priority = 0, trigEngine = te("")}, {
		t"{config_load file=\'", i(1, "", {key = "i1"}), t"\'", c(2, {{t" section=\'", i(1, "", {key = "i3"}), t"\'"}, {i(1, jt({" section=\'", "", "\'"}))}}, {key = "i2"}), d(3, function(args, snip) return sn(nil, { i(1, jt({" scope=\'", "local|parent|global", "\'"}, ""), {key = "i4"}) }) end), t"}"
	}),
	s({trig = "include", descr = "(include) \"{include} tags are used for including other templates in the current template. Any variables available in the current template are also available within the included template.\"", priority = 0, trigEngine = te("")}, {
		t"{include file=\'", i(1, "", {key = "i1"}), t"\'", c(2, {{t" assign=\'", i(1, "", {key = "i3"}), t"\'"}, {i(1, jt({" assign=\'", "", "\'"}))}}, {key = "i2"}), c(3, {{t" cache_lifetime=", i(1, "", {key = "i5"})}, {i(1, jt({" cache_lifetime=", ""}))}}, {key = "i4"}), c(4, {{t" compile_id=\'", i(1, "", {key = "i7"}), t"\'"}, {i(1, jt({" compile_id=\'", "", "\'"}))}}, {key = "i6"}), c(5, {{t" cache_id=\'", i(1, "", {key = "i9"}), t"\'"}, {i(1, jt({" cache_id=\'", "", "\'"}))}}, {key = "i8"}), d(6, function(args, snip) return sn(nil, { i(1, jt({" scope=\'", "parent|root|global", "\'"}, ""), {key = "i10"}) }) end), i(7, " variables", {key = "i12"}), t"}"
	}),
})
