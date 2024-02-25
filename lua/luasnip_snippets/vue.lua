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
	{},
	{},
	{},
	{0},
	{1},
	{1, 2},
	{},
	{},
	{1},
	{1, 2},
	{},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{},
	{1, 2},
	{1, 2, 3},
	{0, 1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1, 2, 3},
}
ls.add_snippets("vue", {
	s({trig = "slot", descr = "(slot)", priority = -1000, trigEngine = te("w")}, {
		t"<slot></slot>"
	}),
	s({trig = "template", descr = "(template)", priority = -1000, trigEngine = te("w")}, {
		t"<template></template>"
	}),
	s({trig = "transition", descr = "(transition)", priority = -1000, trigEngine = te("w")}, {
		t"<transition></transition>"
	}),
	s({trig = "vbase", descr = "(vbase)", priority = -1000, trigEngine = te("w")}, {
		t"<template>", nl(),
		t"\t<div>", nl(),
		nl(),
		t"\t</div>", nl(),
		t"</template>", nl(),
		nl(),
		t"<script>", nl(),
		t"\texport default{", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"</script>", nl(),
		nl(),
		t"<style scoped>", nl(),
		nl(),
		t"</style>"
	}),
	s({trig = "vimport:c", descr = "(vimport:c)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "Name", {key = "i1"}), t" from \'./components/", cp(1), t".vue\';", nl(),
		nl(),
		t"export default {", nl(),
		t"\tcomponents: {", nl(),
		t"\t\t", cp(1), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "vactions", descr = "(vactions)", priority = -1000, trigEngine = te("w")}, {
		t"actions: {", nl(),
		t"\t", i(1, "updateValue", {key = "i1"}), t"({commit}, ", i(2, "payload", {key = "i2"}), t") {", nl(),
		t"\t\tcommit(", cp(1), t", ", cp(2), t");", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vanim:js:el", descr = "(vanim:js:el)", priority = -1000, trigEngine = te("w")}, {
		t"<transition", nl(),
		t"  @before-enter=\"beforeEnter\"", nl(),
		t"  @enter=\"enter\"", nl(),
		t"  @after-enter=\"afterEnter\"", nl(),
		t"  @enter-cancelled=\"enterCancelled\"", nl(),
		nl(),
		t"  @before-Leave=\"beforeLeave\"", nl(),
		t"  @leave=\"leave\"", nl(),
		t"  @after-leave=\"afterLeave\"", nl(),
		t"  @leave-cancelled=\"leaveCancelled\"", nl(),
		t"  :css=\"false\">", nl(),
		nl(),
		t" </transition>"
	}),
	s({trig = "vanim:js:method", descr = "(vanim:js:method)", priority = -1000, trigEngine = te("w")}, {
		t"methods: {", nl(),
		t"\tbeforeEnter(el) {", nl(),
		t"\t\tconsole.log(\'beforeEnter\');", nl(),
		t"\t},", nl(),
		t"\tenter(el, done) {", nl(),
		t"\t\tconsole.log(\'enter\');", nl(),
		t"\t\tdone();", nl(),
		t"\t},", nl(),
		t"\tafterEnter(el) {", nl(),
		t"\t\tconsole.log(\'afterEnter\');", nl(),
		t"\t},", nl(),
		t"\tenterCancelled(el, done) {", nl(),
		t"\t\tconsole.log(\'enterCancelled\');", nl(),
		t"\t},", nl(),
		t"\tbeforeLeave(el) {", nl(),
		t"\t\tconsole.log(\'beforeLeave\');", nl(),
		t"\t},", nl(),
		t"\tleave(el, done) {", nl(),
		t"\t\tconsole.log(\'leave\');", nl(),
		t"\t\tdone();", nl(),
		t"\t},", nl(),
		t"\tafterLeave(el) {", nl(),
		t"\t\tconsole.log(\'afterLeave\');", nl(),
		t"\t},", nl(),
		t"\tleaveCancelled(el, done) {", nl(),
		t"\t\tconsole.log(\'leaveCancelled\');", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "vcl", descr = "(vcl)", priority = -1000, trigEngine = te("w")}, {
		t"@click=\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "vdata", descr = "(vdata)", priority = -1000, trigEngine = te("w")}, {
		t"data() {", nl(),
		t"\treturn {", nl(),
		t"\t\t", i(1, "key", {key = "i1"}), t": ", i(2, "value", {key = "i2"}), nl(),
		t"\t};", nl(),
		t"},"
	}),
	s({trig = "vmounted", descr = "(vmounted)", priority = -1000, trigEngine = te("w")}, {
		t"mounted() {", nl(),
		t"\tconsole.log(\'mounted\');", nl(),
		t"},"
	}),
	s({trig = "vmethods", descr = "(vmethods)", priority = -1000, trigEngine = te("w")}, {
		t"methods: {", nl(),
		t"\t", i(1, "method", {key = "i1"}), t"() {", nl(),
		t"\t\tconsole.log(\'method\');", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vcomputed", descr = "(vcomputed)", priority = -1000, trigEngine = te("w")}, {
		t"computed: {", nl(),
		t"\t", i(1, "fnName", {key = "i1"}), t"() {", nl(),
		t"\t\treturn;", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vfilter", descr = "(vfilter)", priority = -1000, trigEngine = te("w")}, {
		t"filters: {", nl(),
		t"\t", i(1, "fnName", {key = "i1"}), t": function(", i(2, "value", {key = "i2"}), t") {", nl(),
		t"\t\treturn;", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vfor", descr = "(vfor)", priority = -1000, trigEngine = te("w")}, {
		t"<div v-for=\"", i(1, "item", {key = "i1"}), t" in ", i(2, "items", {key = "i2"}), t"\" :key=\"", cp(1), t".id\">", nl(),
		t"\t{{ ", cp(1), t" }}", nl(),
		t"</div>"
	}),
	s({trig = "vgetters", descr = "(vgetters)", priority = -1000, trigEngine = te("w")}, {
		t"getters: {", nl(),
		t"\t", i(1, "value", {key = "i1"}), t": state => {", nl(),
		t"\t\treturn state.", cp(1), t";", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vimport", descr = "(vimport)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "New", {key = "i1"}), t" from \'./components/", cp(1), t".vue\';"
	}),
	s({trig = "vkeep", descr = "(vkeep)", priority = -1000, trigEngine = te("w")}, {
		t"<keep-alive>", nl(),
		t"\t<component :is=\"\">", nl(),
		t"\t\t<p>default</p>", nl(),
		t"\t</component>", nl(),
		t"</keep-alive>"
	}),
	s({trig = "vmixin", descr = "(vmixin)", priority = -1000, trigEngine = te("w")}, {
		t"const ", i(1, "mixinName", {key = "i1"}), t" = {", nl(),
		t"\tmounted() {", nl(),
		t"\t\tconsole.log(\'hello from mixin!\')", nl(),
		t"\t},", nl(),
		t"}", nl(),
		t"const ", i(2, "Component", {key = "i2"}), t" = Vue.extend({", nl(),
		t"\tmixins: [", cp(1), t"]", nl(),
		t"})"
	}),
	s({trig = "vmutations", descr = "(vmutations)", priority = -1000, trigEngine = te("w")}, {
		t"mutations: {", nl(),
		t"\t", i(1, "updateValue", {key = "i1"}), t"(state, ", i(3, "payload", {key = "i3"}), t") => {", nl(),
		t"\t\tstate.", i(2, "value", {key = "i2"}), t" = ", cp(3), t";", nl(),
		t"\t}", nl(),
		t"},"
	}),
	s({trig = "vprops:d", descr = "(vprops:d)", priority = -1000, trigEngine = te("w")}, {
		i(1, "propName", {key = "i1"}), t": {", nl(),
		t"  type: ", i(2, "Number", {key = "i2"}), t",", nl(),
		t"  default: ", i(0, "", {key = "i0"}), nl(),
		t"},"
	}),
	s({trig = "vprops", descr = "(vprops)", priority = -1000, trigEngine = te("w")}, {
		i(1, "propName", {key = "i1"}), t": {", nl(),
		t"\ttype: ", i(2, "Number", {key = "i2"}), nl(),
		t"},"
	}),
	s({trig = "vstore", descr = "(vstore)", priority = -1000, trigEngine = te("w")}, {
		t"import Vue from \'vue\';", nl(),
		t"import Vuex from \'vuex\';", nl(),
		nl(),
		t"Vue.use(Vuex);", nl(),
		nl(),
		t"export const store = new Vuex.Store({", nl(),
		t"\tstate: {", nl(),
		t"\t\t", i(1, "key", {key = "i1"}), t": ", i(2, "value", {key = "i2"}), nl(),
		t"\t}", nl(),
		t"});"
	}),
	s({trig = "trans", descr = "(trans)", priority = -1000, trigEngine = te("w")}, {
		t"$t(\'", i(1, "", {key = "i1"}), t"\')"
	}),
	s({trig = "transc", descr = "(transc)", priority = -1000, trigEngine = te("w")}, {
		t"$t(\'", i(1, "", {key = "i1"}), t"\', { ", i(2, "", {key = "i2"}), t": ", i(3, "", {key = "i3"}), t" })"
	}),
})
