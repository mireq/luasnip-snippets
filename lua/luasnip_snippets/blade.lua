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
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
}
ls.add_snippets("blade", {
	s({trig = "break", descr = "(break) \"@break\"", priority = -49, trigEngine = te("")}, {
		t"@break"
	}),
	s({trig = "component", descr = "(component) \"@component directive\"", priority = -49, trigEngine = te("")}, {
		t"@component(\'", i(1, "", {key = "i1"}), t"\')", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endcomponent"
	}),
	s({trig = "each", descr = "(each) \"@each directive\"", priority = -49, trigEngine = te("")}, {
		t"@each(\'", i(1, "", {key = "i1"}), t"\', $", i(2, "", {key = "i2"}), t", \'", i(3, "", {key = "i3"}), t"\')"
	}),
	s({trig = "else", descr = "(else) \"@else directive\"", priority = -49, trigEngine = te("")}, {
		t"@else"
	}),
	s({trig = "eif", descr = "(eif) \"@else if directive\"", priority = -49, trigEngine = te("")}, {
		t"@else if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end)
	}),
	s({trig = "for", descr = "(for) \"@for directive\"", priority = -49, trigEngine = te("")}, {
		t"@for (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endfor"
	}),
	s({trig = "foreach", descr = "(foreach) \"@foreach directive\"", priority = -49, trigEngine = te("")}, {
		t"@foreach ($", i(1, "", {key = "i1"}), t" as $", i(2, "", {key = "i2"}), t")", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"@endforeach"
	}),
	s({trig = "extends", descr = "(extends) \"@extends directive\"", priority = -49, trigEngine = te("")}, {
		t"@extends(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "if", descr = "(if) \"@if directive\"", priority = -49, trigEngine = te("")}, {
		t"@if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endif"
	}),
	s({trig = "ife", descr = "(ife) \"@if @else structure\"", priority = -49, trigEngine = te("")}, {
		t"@if (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@else", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i3"}) }) end), nl(),
		t"@endif"
	}),
	s({trig = "include", descr = "(include) \"@include directive\"", priority = -49, trigEngine = te("")}, {
		t"@include(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "includeIf", descr = "(includeIf) \"@includeIf directive\"", priority = -49, trigEngine = te("")}, {
		t"@includeIf(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "isset", descr = "(isset) \"@isset directive\"", priority = -49, trigEngine = te("")}, {
		t"@isset", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"@endisset"
	}),
	s({trig = "inject", descr = "(inject) \"@inject directive\"", priority = -49, trigEngine = te("")}, {
		t"@inject(\'", i(1, "", {key = "i1"}), t"\', \'", i(2, "", {key = "i2"}), t"\')"
	}),
	s({trig = "lang", descr = "(lang) \"@lang directive\"", priority = -49, trigEngine = te("i")}, {
		t"@lang(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "php", descr = "(php) \"@php directive\"", priority = -49, trigEngine = te("")}, {
		t"@php", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"@endphp"
	}),
	s({trig = "push", descr = "(push) \"@push directive\"", priority = -49, trigEngine = te("")}, {
		t"@push(\'", i(1, "", {key = "i1"}), t"\')", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endpush"
	}),
	s({trig = "section", descr = "(section) \"@section directive\"", priority = -49, trigEngine = te("")}, {
		t"@section(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "show", descr = "(show) \"@show directive\"", priority = -49, trigEngine = te("")}, {
		t"@show"
	}),
	s({trig = "slot", descr = "(slot) \"@slot directive\"", priority = -49, trigEngine = te("")}, {
		t"@slot(\'", i(1, "", {key = "i1"}), t"\')", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endslot"
	}),
	s({trig = "unless", descr = "(unless) \"@unless directive\"", priority = -49, trigEngine = te("")}, {
		t"@unless", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"@endunless"
	}),
	s({trig = "verbatim", descr = "(verbatim) \"@verbatim directive\"", priority = -49, trigEngine = te("")}, {
		t"@verbatim", nl(),
		t"\t", i(0, "$VISUAL", {key = "i0"}), nl(),
		t"@endverbatim"
	}),
	s({trig = "wh", descr = "(wh) \"@while directive\"", priority = -49, trigEngine = te("")}, {
		t"@while (", i(1, "", {key = "i1"}), t")", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"@endwhile"
	}),
	s({trig = "yield", descr = "(yield) \"@yield directive\"", priority = -49, trigEngine = te("")}, {
		t"@yield(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "{", descr = "({) \"{{ }} statement.\"", priority = -49, trigEngine = te("i")}, {
		t"{{ ", i(1, "", {key = "i1"}), t" }}"
	}),
	s({trig = "{!", descr = "({!) \"{!! !!} statement\"", priority = -49, trigEngine = te("i")}, {
		t"{!! ", i(1, "", {key = "i1"}), t" !!}"
	}),
})
