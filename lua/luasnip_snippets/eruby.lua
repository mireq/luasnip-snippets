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
	0,
	1,
	{{1, 2}, {2, 5}, {3, 6}},
	2,
	2,
	1,
	1,
	1,
	{{1, 1}, {2, 3}},
	1,
	2,
	1,
	1,
	1,
	1,
	1,
	{{1, 1}, {2, 4}, {3, 6}, {4, 8}, {5, 10}},
	{{1, 1}, {2, 2}, {3, 5}, {4, 7}},
	{{1, 1}, {2, 5}, {3, 6}, {4, 9}, {5, 10}},
	{{1, 1}, {2, 3}},
	2,
	2,
	3,
	2,
	3,
	4,
	{{1, 2}, {2, 10}, {3, 11}, {4, 12}},
	{{1, 2}, {2, 12}, {3, 13}, {4, 14}, {5, 16}},
	{{1, 2}, {2, 4}},
	{{1, 2}, {2, 12}, {3, 13}},
	2,
	{{1, 2}},
	{{1, 1}, {2, 3}, {3, 5}},
	{{1, 2}, {2, 4}},
	{{1, 2}, {2, 4}},
	{{1, 2}},
	{{1, 2}},
	{{1, 1}, {2, 3}},
	1,
	1,
	1,
	1,
	2,
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 3}, {3, 9}, {4, 11}},
	0,
	{{1, 2}, {2, 3}, {3, 4}},
	0,
	1,
	0,
	2,
	2,
	1,
	1,
	1,
	5,
	2,
	1,
	1,
	1,
	1,
	2,
	1,
	2,
	1,
	1,
	5,
	2,
	1,
	0,
	1,
	3,
	2,
	1,
	1,
	0,
	1,
	2,
	0,
}

local python_globals = {
	[[def textmate_var(var, snip):
	lookup = dict(
		TM_RAILS_TEMPLATE_START_RUBY_EXPR = snip.opt('g:tm_rails_template_start_ruby_expr', '<%= '),
		TM_RAILS_TEMPLATE_END_RUBY_EXPR = snip.opt('g:tm_rails_template_end_ruby_expr', ' %>'),
		TM_RAILS_TEMPLATE_START_RUBY_INLINE = snip.opt('g:tm_rails_template_start_ruby_inline', '<% '),
		TM_RAILS_TEMPLATE_END_RUBY_INLINE = snip.opt('g:tm_rails_template_end_ruby_inline', ' %>'),
		TM_RAILS_TEMPLATE_END_RUBY_BLOCK = '<% end %>'
	)
	snip.rv = lookup[var]
	return]]
}


ls.add_snippets("eruby", {
	s({trig = "%", descr = "(%) \"<% $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 1}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[1]) end, ae(am[1])), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 1}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[1]) end, ae(am[1]))
	}),
	s({trig = "=", descr = "(=) \"<%= $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 2}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[2]) end, ae(am[2])), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 2}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[2]) end, ae(am[2]))
	}),
	s({trig = "fi", descr = "(fi) \"<%= Fixtures.identify(:symbol) %>\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[3]) end, ae(am[3])), t"Fixtures.identify(:", i(1, "name", {key = "i1"}), t")", f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[3]) end, ae(am[3])), i(0, "", {key = "i0"})
	}),
	s({trig = "ft", descr = "(ft) \"form_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[4]) end, ae(am[4])), t"form_tag(", t"action: \'", i(1, "update", {key = "i1"}), t"\'", t", ", i(2, "class", {key = "i2"}), t": \'", i(3, "form", {key = "i3"}), t"\'}", t") do", f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[4]) end, ae(am[4])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[4]) end, ae(am[4]))
	}),
	s({trig = "ffs", descr = "(ffs) \"form_for submit 2\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 5}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[5]) end, ae(am[5])), i(1, "f", {key = "i1"}), t".submit \'", i(2, "Submit", {key = "i2"}), t"\'", t", disable_with: \'", cp(2), t"ing...", t"\'", f(function(args, snip) return c_py({"eruby", 5}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[5]) end, ae(am[5]))
	}),
	s({trig = "f.", descr = "(f.) \"f.text_field\"", priority = -50, trigEngine = te("w")}, c(1, {
		{
			f(function(args, snip) return c_py({"eruby", 6}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[6]) end, ae(am[6])), t"f.fields_for :", i(1, "attribute", {key = "i1"}), t" do |", i(2, "f", {key = "i2"}), t"|", f(function(args, snip) return c_py({"eruby", 6}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[6]) end, ae(am[6])), nl(),
			t"\t", i(3, "", {key = "i3"}), nl(),
			f(function(args, snip) return c_py({"eruby", 6}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[6]) end, ae(am[6]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 7}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[7]) end, ae(am[7])), t"f.check_box :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 7}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[7]) end, ae(am[7]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 8}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[8]) end, ae(am[8])), t"f.file_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 8}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[8]) end, ae(am[8]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 9}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[9]) end, ae(am[9])), t"f.hidden_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 9}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[9]) end, ae(am[9]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 10}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[10]) end, ae(am[10])), t"f.label :", i(1, "attribute", {key = "i1"}), t", \"", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1: :\\u$0)")}, ""), {key = "i3"}) }) end, k{"i1"}), t"\"", f(function(args, snip) return c_py({"eruby", 10}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[10]) end, ae(am[10]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 11}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[11]) end, ae(am[11])), t"f.password_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 11}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[11]) end, ae(am[11]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[12]) end, ae(am[12])), t"f.radio_button :", i(1, "attribute", {key = "i1"}), t", :", i(2, "tag_value", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[12]) end, ae(am[12]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[13]) end, ae(am[13])), t"f.submit \"", i(1, "Submit", {key = "i1"}), t"\"", t", disable_with: \'", cp(1), t"ing...", t"\'", f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[13]) end, ae(am[13]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[14]) end, ae(am[14])), t"f.text_area :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[14]) end, ae(am[14]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[15]) end, ae(am[15])), t"f.text_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[15]) end, ae(am[15]))
		},
	})),
	s({trig = "ffe", descr = "(ffe) \"form_for with errors\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), t"error_messages_for :", i(1, "model", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), nl(),
		nl(),
		f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), t"form_for @", cp(1), t" do |f|", f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16]))
	}),
	s({trig = "ff", descr = "(ff) \"form_for\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 17}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[17]) end, ae(am[17])), t"form_for @", i(1, "model", {key = "i1"}), t" do |f|", f(function(args, snip) return c_py({"eruby", 17}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[17]) end, ae(am[17])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 17}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[17]) end, ae(am[17]))
	}),
	s({trig = "ist", descr = "(ist) \"image_submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 18}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[18]) end, ae(am[18])), t"image_submit_tag(\"", i(1, "agree.png", {key = "i1"}), t"\"", t", id: \"", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i4"}) }) end, k{"i1"}), t"\"", t", name: \"", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i6"}) }) end, k{"i1"}), t"\"", t", class: \"", d(4, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1"), "-button"}, ""), {key = "i8"}) }) end, k{"i1"}), t"\"", t", disabled: ", i(5, "false", {key = "i5"}), t")", f(function(args, snip) return c_py({"eruby", 18}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[18]) end, ae(am[18]))
	}),
	s({trig = "it", descr = "(it) \"image_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 19}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[19]) end, ae(am[19])), t"image_tag \"", i(1, "", {key = "i1"}), i(2, ".png", {key = "i2"}), t"\"", t", title: \"", i(3, "title", {key = "i3"}), t"\"", t", class: \"", i(4, "class", {key = "i4"}), t"\"", f(function(args, snip) return c_py({"eruby", 19}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[19]) end, ae(am[19]))
	}),
	s({trig = "layout", descr = "(layout) \"layout\"", priority = -50, trigEngine = te("")}, {
		t"layout \"", i(1, "template_name", {key = "i1"}), t"\"", t", only: ", t"[:", i(2, "action", {key = "i2"}), t", :", i(3, "action", {key = "i3"}), t"]", t", except: ", t"[:", i(4, "action", {key = "i4"}), t", :", i(5, "action", {key = "i5"}), t"]"
	}),
	s({trig = "jit", descr = "(jit) \"javascript_include_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 21}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[21]) end, ae(am[21])), t"javascript_include_tag ", i(1, ":all", {key = "i1"}), t", cache: ", i(2, "true", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 21}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[21]) end, ae(am[21]))
	}),
	s({trig = "lt", descr = "(lt) \"link_to (name, dest)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[22]) end, ae(am[22])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", ", i(2, "dest", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[22]) end, ae(am[22]))
	}),
	s({trig = "lia", descr = "(lia) \"link_to (action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 23}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[23]) end, ae(am[23])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "index", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 23}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[23]) end, ae(am[23]))
	}),
	s({trig = "liai", descr = "(liai) \"link_to (action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 24}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[24]) end, ae(am[24])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "edit", {key = "i2"}), t"\", id: ", i(3, "@item", {key = "i3"}), f(function(args, snip) return c_py({"eruby", 24}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[24]) end, ae(am[24]))
	}),
	s({trig = "lic", descr = "(lic) \"link_to (controller)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25]))
	}),
	s({trig = "lica", descr = "(lica) \"link_to (controller, action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 26}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[26]) end, ae(am[26])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "index", {key = "i3"}), t"\"", f(function(args, snip) return c_py({"eruby", 26}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[26]) end, ae(am[26]))
	}),
	s({trig = "licai", descr = "(licai) \"link_to (controller, action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 27}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[27]) end, ae(am[27])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "edit", {key = "i3"}), t"\", id: ", i(4, "@item", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 27}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[27]) end, ae(am[27]))
	}),
	s({trig = "linpp", descr = "(linpp) \"link_to (nested path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 28}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[28]) end, ae(am[28])), t"link_to ", t"\"", i(1, "link text...", {key = "i1"}), t"\"", t", ", i(2, "parent", {key = "i2"}), t"_", i(3, "child", {key = "i3"}), t"_path(", i(4, "@", {key = "i4"}), cp(10), t")", f(function(args, snip) return c_py({"eruby", 28}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[28]) end, ae(am[28]))
	}),
	s({trig = "linp", descr = "(linp) \"link_to (nested path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 29}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[29]) end, ae(am[29])), t"link_to ", t"\"", i(1, "link text...", {key = "i1"}), t"\"", t", ", i(2, "parent", {key = "i2"}), t"_", i(3, "child", {key = "i3"}), t"_path(", i(4, "@", {key = "i4"}), cp(12), t", ", i(5, "@", {key = "i5"}), cp(13), t")", f(function(args, snip) return c_py({"eruby", 29}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[29]) end, ae(am[29]))
	}),
	s({trig = "lipp", descr = "(lipp) \"link_to (path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 30}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[30]) end, ae(am[30])), t"link_to ", t"\"", i(1, "link text...", {key = "i1"}), t"\"", t", ", i(2, "model", {key = "i2"}), t"s_path", f(function(args, snip) return c_py({"eruby", 30}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[30]) end, ae(am[30]))
	}),
	s({trig = "lip", descr = "(lip) \"link_to (path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[31]) end, ae(am[31])), t"link_to ", t"\"", i(1, "link text...", {key = "i1"}), t"\"", t", ", i(2, "model", {key = "i2"}), t"_path(", i(3, "@", {key = "i3"}), cp(12), t")", f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[31]) end, ae(am[31]))
	}),
	s({trig = "lim", descr = "(lim) \"link_to model\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 32}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[32]) end, ae(am[32])), t"link_to ", i(1, "model", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t", ", cp(1), t"_path(", cp(1), t")", f(function(args, snip) return c_py({"eruby", 32}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[32]) end, ae(am[32]))
	}),
	s({trig = "hide", descr = "(hide) \"page.hide (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.hide ", t"\"", i(1, "id(s)", {key = "i1"}), t"\""
	}),
	s({trig = "ins", descr = "(ins) \"page.insert_html (position, id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.insert_html :", i(1, "top", {key = "i1"}), t", ", t"\"", i(2, "id", {key = "i2"}), t"\"", t", ", t"partial: \"", i(3, "template", {key = "i3"}), t"\""
	}),
	s({trig = "rep", descr = "(rep) \"page.replace (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace ", t"\"", i(1, "id", {key = "i1"}), t"\"", t", ", t"partial: \"", i(2, "template", {key = "i2"}), t"\""
	}),
	s({trig = "reph", descr = "(reph) \"page.replace_html (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace_html ", t"\"", i(1, "id", {key = "i1"}), t"\"", t", ", t"partial: \"", i(2, "template", {key = "i2"}), t"\""
	}),
	s({trig = "show", descr = "(show) \"page.show (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.show ", t"\"", i(1, "id(s)", {key = "i1"}), t"\""
	}),
	s({trig = "tog", descr = "(tog) \"page.toggle (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.toggle ", t"\"", i(1, "id(s)", {key = "i1"}), t"\""
	}),
	s({trig = "vis", descr = "(vis) \"page.visual_effect (effect, id)\"", priority = -50, trigEngine = te("")}, {
		t"page.visual_effect :", i(1, "toggle_slide", {key = "i1"}), t", ", t"\"", i(2, "DOM ID", {key = "i2"}), t"\""
	}),
	s({trig = "rp", descr = "(rp) \"render (partial) (rp)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\""
	}),
	s({trig = "rpc", descr = "(rpc) \"render (partial,collection) (rpc)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", collection: ", t"@", cp(1), t"s"
	}),
	s({trig = "rpl", descr = "(rpl) \"render (partial,locals) (rpl)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", locals: { ", cp(1), t": ", t"@", cp(1), i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "rpo", descr = "(rpo) \"render (partial,object) (rpo)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", object: ", t"@", cp(1)
	}),
	s({trig = "rps", descr = "(rps) \"render (partial,status) (rps)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", status: ", i(2, "500", {key = "i2"})
	}),
	s({trig = "slt", descr = "(slt) \"stylesheet_link_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[45]) end, ae(am[45])), t"stylesheet_link_tag ", i(1, ":all", {key = "i1"}), t", cache: ", i(2, "true", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[45]) end, ae(am[45]))
	}),
	s({trig = "st", descr = "(st) \"submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 46}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[46]) end, ae(am[46])), t"submit_tag \"", i(1, "Save changes", {key = "i1"}), t"\"", t", id: \"", i(2, "submit", {key = "i2"}), t"\"", t", name: \"", cp(3), t"\"", t", class: \"", t"form_", cp(3), t"\"", t", disabled: ", i(3, "false", {key = "i3"}), t", disable_with: \"", i(4, "Please wait...", {key = "i4"}), t"\"", f(function(args, snip) return c_py({"eruby", 46}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[46]) end, ae(am[46]))
	}),
	s({trig = "else", descr = "(else) \"else (ERB)\"", priority = -50, trigEngine = te("")}, {
		t"<% else %>", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "lf", descr = "(lf) \"link_to_function\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"eruby", 48}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[48]) end, ae(am[48])), t"link_to_function ", t"\"", i(1, "Greeting", {key = "i1"}), t"\"", t", \"", i(2, "alert(\'Hello world!\')", {key = "i2"}), t"\"", i(3, "", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 48}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[48]) end, ae(am[48]))
	}),
	s({trig = "rc", descr = "(rc)", priority = -1000, trigEngine = te("w")}, {
		t"<% ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "rce", descr = "(rce)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "", {key = "i1"}), t" %>"
	}),
	s({trig = "end", descr = "(end)", priority = -1000, trigEngine = te("w")}, {
		t"<% end %>"
	}),
	s({trig = "ead", descr = "(ead)", priority = -1000, trigEngine = te("w")}, {
		t"<% ", i(1, "", {key = "i1"}), t".each do |", i(2, "", {key = "i2"}), t"| %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"<% for ", i(2, "item", {key = "i2"}), t" in ", i(1, "", {key = "i1"}), t" %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "lib", descr = "(lib)", priority = -1000, trigEngine = te("w")}, {
		t"<%= link_to \'", i(1, "link text...", {key = "i1"}), t"\' do %>", nl(),
		t"<% end %>"
	}),
	s({trig = "yield", descr = "(yield)", priority = -1000, trigEngine = te("w")}, {
		t"<%= yield ", i(1, ":content_symbol", {key = "i1"}), t" %>"
	}),
	s({trig = "conf", descr = "(conf)", priority = -1000, trigEngine = te("w")}, {
		t"<% content_for :", i(1, "head", {key = "i1"}), t" do %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>", nl()
	}),
	s({trig = "cs", descr = "(cs)", priority = -1000, trigEngine = te("w")}, {
		t"<%= collection_select(:", i(1, "object", {key = "i1"}), t", :", i(2, "method", {key = "i2"}), t", ", i(3, "collection", {key = "i3"}), t", :", i(4, "value_method", {key = "i4"}), t", :", i(5, "text_method", {key = "i5"}), t", options = {", i(0, "prompt: true", {key = "i0"}), t"}) %>        "
	}),
	s({trig = "ct", descr = "(ct)", priority = -1000, trigEngine = te("w")}, {
		t"<%= content_tag \'", i(1, "DIV", {key = "i1"}), t"\', ", i(2, "content", {key = "i2"}), i(0, ",options", {key = "i0"}), t" %>"
	}),
	s({trig = "ffi", descr = "(ffi)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".input :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffcb", descr = "(ffcb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".check_box :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffff", descr = "(ffff)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".file_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffhf", descr = "(ffhf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".hidden_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffl", descr = "(ffl)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".label :", i(2, "attribute", {key = "i2"}), t", \'", cp(2), t"\' %>"
	}),
	s({trig = "ffpf", descr = "(ffpf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".password_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffrb", descr = "(ffrb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".radio_button :", i(2, "attribute", {key = "i2"}), t", :", i(0, "tag_value", {key = "i0"}), t" %>"
	}),
	s({trig = "ffta", descr = "(ffta)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".text_area :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "fftf", descr = "(fftf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".text_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "fcs", descr = "(fcs)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".collection_select(:", i(2, "method", {key = "i2"}), t", ", i(3, "collection", {key = "i3"}), t", :", i(4, "value_method", {key = "i4"}), t", :", i(5, "text_method", {key = "i5"}), t", options = {", i(0, "prompt: true", {key = "i0"}), t"}) %>"
	}),
	s({trig = "fields", descr = "(fields)", priority = -1000, trigEngine = te("w")}, {
		t"<%= fields_for :", i(1, "model", {key = "i1"}), t", @", cp(1), t" do |", i(2, "f", {key = "i2"}), t"| %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "i18", descr = "(i18)", priority = -1000, trigEngine = te("w")}, {
		t"I18n.t(\'", i(1, "type.key", {key = "i1"}), t"\')"
	}),
	s({trig = "jsit", descr = "(jsit)", priority = -1000, trigEngine = te("w")}, {
		t"<%= javascript_include_tag \"", i(0, "", {key = "i0"}), t"\" %>"
	}),
	s({trig = "ntc", descr = "(ntc)", priority = -1000, trigEngine = te("w")}, {
		t"<%= number_to_currency(", i(1, "", {key = "i1"}), t") %>"
	}),
	s({trig = "ofcfs", descr = "(ofcfs)", priority = -1000, trigEngine = te("w")}, {
		t"<%= options_from_collection_for_select ", i(1, "collection", {key = "i1"}), t", ", i(2, "value_method", {key = "i2"}), t", ", i(3, "text_method", {key = "i3"}), t", ", i(0, "selected_value", {key = "i0"}), t" %>"
	}),
	s({trig = "ofs", descr = "(ofs)", priority = -1000, trigEngine = te("w")}, {
		t"<%= options_for_select ", i(1, "collection", {key = "i1"}), t", ", i(2, "value_method", {key = "i2"}), t" %>"
	}),
	s({trig = "rf", descr = "(rf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= render file: \"", i(1, "file", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "rt", descr = "(rt)", priority = -1000, trigEngine = te("w")}, {
		t"<%= render template: \"", i(1, "file", {key = "i1"}), t"\"", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "sslt", descr = "(sslt)", priority = -1000, trigEngine = te("w")}, {
		t"<%= stylesheet_link_tag \"", i(0, "", {key = "i0"}), t"\" %>"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"<% if ", i(1, "", {key = "i1"}), t" %>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"<% end %>"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"<% if ", i(1, "", {key = "i1"}), t" %>", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"<% else %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "pry", descr = "(pry)", priority = -1000, trigEngine = te("w")}, {
		t"<% require \'pry\'; binding.pry %>"
	}),
})
