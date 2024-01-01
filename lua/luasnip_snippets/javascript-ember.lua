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
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{},
	{{0, 0}, {1, 1}, {2, 3}},
	{},
	{{0, 0}, {1, 1}, {2, 3}},
}
ls.add_snippets("javascript-ember", {
	s({trig = "eapp", descr = "(eapp) \"App.Name = Ember.Application.create({});\"", priority = -50, trigEngine = te("")}, {
		t"import Application from \'@ember/application\';", nl(),
		nl(),
		t"export default Application.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "emod", descr = "(emod) \"import DS from \'ember-data\';\"", priority = -50, trigEngine = te("")}, {
		t"import DS from \'ember-data\';", nl(),
		nl(),
		t"export default DS.Model.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "econtroller", descr = "(econtroller) \"import Controller from \'@ember/controller\';\"", priority = -50, trigEngine = te("")}, {
		t"import Controller from \'@ember/controller\';", nl(),
		nl(),
		t"export default Controller.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "eroute", descr = "(eroute) \"import Route from \'@ember/routing/route\';\"", priority = -50, trigEngine = te("")}, {
		t"import Route from \'@ember/routing/route\';", nl(),
		nl(),
		t"export default Route.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "ecomponent", descr = "(ecomponent) \"import Component from \'@ember/component\';\"", priority = -50, trigEngine = te("")}, {
		t"import Component from \'@ember/component\';", nl(),
		nl(),
		t"export default Component.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "eobj", descr = "(eobj) \"import EmberObject from \'@ember/object\';\"", priority = -50, trigEngine = te("")}, {
		t"import EmberObject from \'@ember/object\';", nl(),
		nl(),
		t"export default EmberObject.extend({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "emix", descr = "(emix) \"App.MixinName = Ember.Model.extend({...});\"", priority = -50, trigEngine = te("")}, {
		t"import Mixin from \'@ember/object/mixin\';", nl(),
		nl(),
		t"export default Mixin.create({", nl(),
		t"\t", i(0, "//Properties here...", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "eget", descr = "(eget) \"this.get(\'property\');\"", priority = -50, trigEngine = te("")}, {
		i(1, "this", {key = "i1"}), t".get(\'", i(2, "property", {key = "i2"}), t"\');"
	}),
	s({trig = "eset", descr = "(eset) \"this.set(\'property\', value);\"", priority = -50, trigEngine = te("")}, {
		i(1, "this", {key = "i1"}), t".set(\'", i(2, "property", {key = "i2"}), t"\', ", i(3, "value", {key = "i3"}), t");"
	}),
	s({trig = "cproimport", descr = "(cproimport) \"import { computed } from \'@ember/object\';\"", priority = -50, trigEngine = te("")}, {
		t"import { computed } from \'@ember/object\';"
	}),
	s({trig = "cpro", descr = "(cpro) \"property_name: computed(\'...\', function() {...}),\"", priority = -50, trigEngine = te("")}, {
		i(1, "property_name", {key = "i1"}), t": computed(\'", i(2, "argument", {key = "i3"}), t"\', function() {", nl(),
		t"\t", i(0, "//body...", {key = "i0"}), nl(),
		t"}),"
	}),
	s({trig = "prooimport", descr = "(prooimport) \"import { observer } from \'@ember/object\';\"", priority = -50, trigEngine = te("")}, {
		t"import { observer } from \'@ember/object\';"
	}),
	s({trig = "proo", descr = "(proo) \"property_name: observer(\'...\', function() {...}),\"", priority = -50, trigEngine = te("")}, {
		i(1, "property_name", {key = "i1"}), t": observer(\'", i(2, "argument", {key = "i3"}), t"\', function() {", nl(),
		t"\t", i(0, "//body...", {key = "i0"}), nl(),
		t"}),"
	}),
})
