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
	s({trig = "rc", descr = "(rc)", priority = -1000, trigEngine = te("w")}, {
		t"<% ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "rce", descr = "(rce)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "", {key = "i1"}), t" %>"
	}),
	s({trig = "%", descr = "(%) \"<% $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", {}) end), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "=", descr = "(=) \"<%= $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
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
	s({trig = "rp", descr = "(rp) \"render (partial) (rp)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\""
	}),
	s({trig = "rpl", descr = "(rpl) \"render (partial,locals) (rpl)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", locals: { ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t": ", d(3, function(args, snip) return sn(nil, { i(1, jt({"@", args[1]}, ""), {key = "i3"}) }) end, {k"i1"}), i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "rps", descr = "(rps) \"render (partial,status) (rps)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", status: ", i(2, "500", {key = "i2"})
	}),
	s({trig = "rpc", descr = "(rpc) \"render (partial,collection) (rpc)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", collection: ", d(2, function(args, snip) return sn(nil, { i(1, jt({"@", args[1], "s"}, ""), {key = "i2"}) }) end, {k"i1"})
	}),
	s({trig = "lia", descr = "(lia) \"link_to (action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "index", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "liai", descr = "(liai) \"link_to (action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "edit", {key = "i2"}), t"\", id: ", i(3, "@item", {key = "i3"}), f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "lic", descr = "(lic) \"link_to (controller)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "lica", descr = "(lica) \"link_to (controller, action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "index", {key = "i3"}), t"\"", f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "licai", descr = "(licai) \"link_to (controller, action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "edit", {key = "i3"}), t"\", id: ", i(4, "@item", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
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
		t"<% end %>"
	}),
	s({trig = "cs", descr = "(cs)", priority = -1000, trigEngine = te("w")}, {
		t"<%= collection_select(:", i(1, "object", {key = "i1"}), t", :", i(2, "method", {key = "i2"}), t", ", i(3, "collection", {key = "i3"}), t", :", i(4, "value_method", {key = "i4"}), t", :", i(5, "text_method", {key = "i5"}), t", options = {", i(0, "prompt: true", {key = "i0"}), t"}) %>        "
	}),
	s({trig = "ct", descr = "(ct)", priority = -1000, trigEngine = te("w")}, {
		t"<%= content_tag \'", i(1, "DIV", {key = "i1"}), t"\', ", i(2, "content", {key = "i2"}), i(0, ",options", {key = "i0"}), t" %>"
	}),
	s({trig = "ff", descr = "(ff) \"form_for\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"form_for @", i(1, "model", {key = "i1"}), t" do |f|", f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "ffi", descr = "(ffi)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".input :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffcb", descr = "(ffcb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".check_box :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffe", descr = "(ffe) \"form_for with errors\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"error_messages_for :", i(1, "model", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), nl(),
		nl(),
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"form_for @", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i2"}) }) end, {k"i1"}), t" do |f|", f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "ffff", descr = "(ffff)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".file_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffhf", descr = "(ffhf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".hidden_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffl", descr = "(ffl)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".label :", i(2, "attribute", {key = "i2"}), t", \'", d(3, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i0"}) }) end, {k"i2"}), t"\' %>"
	}),
	s({trig = "ffpf", descr = "(ffpf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".password_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffrb", descr = "(ffrb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".radio_button :", i(2, "attribute", {key = "i2"}), t", :", i(0, "tag_value", {key = "i0"}), t" %>"
	}),
	s({trig = "ffs", descr = "(ffs) \"form_for submit 2\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), i(1, "f", {key = "i1"}), t".submit \'", i(2, "Submit", {key = "i2"}), t"\'", c(3, {{t", disable_with: \'", d(1, function(args, snip) return sn(nil, { i(1, jt({args[1], "ing..."}, ""), {key = "i4"}) }) end, {k"i2"}), t"\'"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", disable_with: \'", jt({args[1], "ing..."}), "\'"}))}) end, {k"i2"})}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
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
	s({trig = "it", descr = "(it) \"image_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 37}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"image_tag \"", i(1, "", {key = "i1"}), i(2, ".png", {key = "i2"}), t"\"", c(3, {{c(1, {{t", title: \"", i(1, "title", {key = "i5"}), t"\""}, {i(1, jt({", title: \"", "title", "\""}))}}, {key = "i4"}), c(2, {{t", class: \"", i(1, "class", {key = "i7"}), t"\""}, {i(1, jt({", class: \"", "class", "\""}))}}, {key = "i6"})}, {i(1, jt({jt({", title: \"", "title", "\""}), jt({", class: \"", "class", "\""})}))}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 37}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "jit", descr = "(jit) \"javascript_include_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 38}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"javascript_include_tag ", i(1, ":all", {key = "i1"}), c(2, {{t", cache: ", i(1, "true", {key = "i3"})}, {i(1, jt({", cache: ", "true"}))}}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 38}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "jsit", descr = "(jsit)", priority = -1000, trigEngine = te("w")}, {
		t"<%= javascript_include_tag \"", i(0, "", {key = "i0"}), t"\" %>"
	}),
	s({trig = "lim", descr = "(lim) \"link_to model\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 40}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to ", i(1, "model", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t", ", c(3, {{d(1, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i4"}) }) end, {k"i1"}), t"_path(", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i14"}) }) end, {k"i1"}), t")"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({jt({args[1]}), "_path(", jt({args[1]}), ")"}))}) end, {k"i1"})}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 40}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "linp", descr = "(linp) \"link_to (nested path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 41}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to ", c(1, {{t"\"", i(1, "link text...", {key = "i2"}), t"\""}, {i(1, jt({"\"", "link text...", "\""}))}}, {key = "i1"}), t", ", c(2, {{i(1, "parent", {key = "i12"}), t"_", i(2, "child", {key = "i13"}), t"_path(", i(3, "@", {key = "i14"}), d(4, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i15"}) }) end, {k"i12"}), t", ", i(5, "@", {key = "i16"}), d(6, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i17"}) }) end, {k"i13"}), t")"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({"parent", "_", "child", "_path(", "@", jt({args[1]}), ", ", "@", jt({args[2]}), ")"}))}) end, {k"i12", k"i13"})}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 41}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "linpp", descr = "(linpp) \"link_to (nested path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 42}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to ", c(1, {{t"\"", i(1, "link text...", {key = "i2"}), t"\""}, {i(1, jt({"\"", "link text...", "\""}))}}, {key = "i1"}), t", ", c(2, {{i(1, "parent", {key = "i10"}), t"_", i(2, "child", {key = "i11"}), t"_path(", i(3, "@", {key = "i12"}), d(4, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i13"}) }) end, {k"i10"}), t")"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({"parent", "_", "child", "_path(", "@", jt({args[1]}), ")"}))}) end, {k"i10"})}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 42}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "lip", descr = "(lip) \"link_to (path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 43}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to ", c(1, {{t"\"", i(1, "link text...", {key = "i2"}), t"\""}, {i(1, jt({"\"", "link text...", "\""}))}}, {key = "i1"}), t", ", c(2, {{i(1, "model", {key = "i12"}), t"_path(", i(2, "@", {key = "i13"}), d(3, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i14"}) }) end, {k"i12"}), t")"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({"model", "_path(", "@", jt({args[1]}), ")"}))}) end, {k"i12"})}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 43}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "lipp", descr = "(lipp) \"link_to (path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 44}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to ", c(1, {{t"\"", i(1, "link text...", {key = "i2"}), t"\""}, {i(1, jt({"\"", "link text...", "\""}))}}, {key = "i1"}), t", ", c(2, {{i(1, "model", {key = "i4"}), t"s_path"}, {i(1, jt({"model", "s_path"}))}}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 44}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "lt", descr = "(lt) \"link_to (name, dest)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", ", i(2, "dest", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
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
	s({trig = "slt", descr = "(slt) \"stylesheet_link_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 51}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"stylesheet_link_tag ", i(1, ":all", {key = "i1"}), c(2, {{t", cache: ", i(1, "true", {key = "i3"})}, {i(1, jt({", cache: ", "true"}))}}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 51}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "sslt", descr = "(sslt)", priority = -1000, trigEngine = te("w")}, {
		t"<%= stylesheet_link_tag \"", i(0, "", {key = "i0"}), t"\" %>"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"<% if ", i(1, "", {key = "i1"}), t" %>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
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
	s({trig = "fi", descr = "(fi) \"<%= Fixtures.identify(:symbol) %>\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"eruby", 56}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"Fixtures.identify(:", i(1, "name", {key = "i1"}), t")", f(function(args, snip) return c_py({"eruby", 56}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), i(0, "", {key = "i0"})
	}),
	s({trig = "ft", descr = "(ft) \"form_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", {}) end), t"form_tag(", c(1, {{t"action: \'", i(1, "update", {key = "i2"}), t"\'"}, {i(1, jt({"action: \'", "update", "\'"}))}}, {key = "i1"}), c(2, {{t", ", c(1, {{i(1, "class", {key = "i5"}), t": \'", i(2, "form", {key = "i6"}), t"\'}"}, {i(1, jt({"class", ": \'", "form", "\'}"}))}}, {key = "i4"})}, {i(1, jt({", ", jt({"class", ": \'", "form", "\'}"})}))}}, {key = "i3"}), t") do", f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "f.", descr = "(f.) \"f.text_field\"", priority = -50, trigEngine = te("w")}, c(1, {
		{
			f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", {}) end), t"f.fields_for :", i(1, "attribute", {key = "i1"}), t" do |", i(2, "f", {key = "i2"}), t"|", f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", {}) end), nl(),
			t"\t", i(0, "", {key = "i0"}), nl(),
			f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 59}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.check_box :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 59}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 60}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.file_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 60}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 61}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.hidden_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 61}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 62}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.label :", i(1, "attribute", {key = "i1"}), c(2, {{t", \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1: :\\u$0)")}, ""), {key = "i3"}) }) end, {k"i1"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", \"", jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1: :\\u$0)")}), "\""}))}) end, {k"i1"})}}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 62}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 63}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.password_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 63}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 64}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.radio_button :", i(1, "attribute", {key = "i1"}), t", :", i(2, "tag_value", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 64}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 65}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.submit \"", i(1, "Submit", {key = "i1"}), t"\"", c(2, {{t", disable_with: \'", d(1, function(args, snip) return sn(nil, { i(1, jt({args[1], "ing..."}, ""), {key = "i3"}) }) end, {k"i1"}), t"\'"}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", disable_with: \'", jt({args[1], "ing..."}), "\'"}))}) end, {k"i1"})}}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 65}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 66}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.text_area :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 66}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
		{
			f(function(args, snip) return c_py({"eruby", 67}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"f.text_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 67}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
		},
	})),
	s({trig = "ist", descr = "(ist) \"image_submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 68}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"image_submit_tag(\"", i(1, "agree.png", {key = "i1"}), t"\"", c(2, {{c(1, {{t", id: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i4"}) }) end, {k"i1"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", id: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}), "\""}))}) end, {k"i1"})}}, {key = "i3"}), c(2, {{t", name: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i6"}) }) end, {k"i1"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", name: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}), "\""}))}) end, {k"i1"})}}, {key = "i5"}), c(3, {{t", class: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1"), "-button"}, ""), {key = "i8"}) }) end, {k"i1"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", class: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1"), "-button"}), "\""}))}) end, {k"i1"})}}, {key = "i7"}), c(4, {{t", disabled: ", i(1, "false", {key = "i10"})}, {i(1, jt({", disabled: ", "false"}))}}, {key = "i9"})}, {d(1, function(args, snip) return sn(nil, {i(1, jt({jt({", id: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}), "\""}), jt({", name: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}), "\""}), jt({", class: \"", jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1"), "-button"}), "\""}), jt({", disabled: ", "false"})}))}) end, {k"i1"})}}, {key = "i2"}), t")", f(function(args, snip) return c_py({"eruby", 68}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "layout", descr = "(layout) \"layout\"", priority = -50, trigEngine = te("")}, {
		t"layout \"", i(1, "template_name", {key = "i1"}), t"\"", c(2, {{c(1, {{t", only: ", c(1, {{t"[:", i(1, "action", {key = "i5"}), t", :", i(2, "action", {key = "i6"}), t"]"}, {i(1, jt({"[:", "action", ", :", "action", "]"}))}}, {key = "i4"})}, {i(1, jt({", only: ", jt({"[:", "action", ", :", "action", "]"})}))}}, {key = "i3"}), c(2, {{t", except: ", c(1, {{t"[:", i(1, "action", {key = "i9"}), t", :", i(2, "action", {key = "i10"}), t"]"}, {i(1, jt({"[:", "action", ", :", "action", "]"}))}}, {key = "i8"})}, {i(1, jt({", except: ", jt({"[:", "action", ", :", "action", "]"})}))}}, {key = "i7"})}, {i(1, jt({jt({", only: ", jt({"[:", "action", ", :", "action", "]"})}), jt({", except: ", jt({"[:", "action", ", :", "action", "]"})})}))}}, {key = "i2"})
	}),
	s({trig = "hide", descr = "(hide) \"page.hide (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.hide ", c(1, {{t"\"", i(1, "id(s)", {key = "i2"}), t"\""}, {i(1, jt({"\"", "id(s)", "\""}))}}, {key = "i1"})
	}),
	s({trig = "ins", descr = "(ins) \"page.insert_html (position, id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.insert_html :", i(1, "top", {key = "i1"}), t", ", c(2, {{t"\"", i(1, "id", {key = "i3"}), t"\""}, {i(1, jt({"\"", "id", "\""}))}}, {key = "i2"}), t", ", c(3, {{t"partial: \"", i(1, "template", {key = "i5"}), t"\""}, {i(1, jt({"partial: \"", "template", "\""}))}}, {key = "i4"})
	}),
	s({trig = "rep", descr = "(rep) \"page.replace (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace ", c(1, {{t"\"", i(1, "id", {key = "i2"}), t"\""}, {i(1, jt({"\"", "id", "\""}))}}, {key = "i1"}), t", ", c(2, {{t"partial: \"", i(1, "template", {key = "i4"}), t"\""}, {i(1, jt({"partial: \"", "template", "\""}))}}, {key = "i3"})
	}),
	s({trig = "reph", descr = "(reph) \"page.replace_html (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace_html ", c(1, {{t"\"", i(1, "id", {key = "i2"}), t"\""}, {i(1, jt({"\"", "id", "\""}))}}, {key = "i1"}), t", ", c(2, {{t"partial: \"", i(1, "template", {key = "i4"}), t"\""}, {i(1, jt({"partial: \"", "template", "\""}))}}, {key = "i3"})
	}),
	s({trig = "show", descr = "(show) \"page.show (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.show ", c(1, {{t"\"", i(1, "id(s)", {key = "i2"}), t"\""}, {i(1, jt({"\"", "id(s)", "\""}))}}, {key = "i1"})
	}),
	s({trig = "tog", descr = "(tog) \"page.toggle (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.toggle ", c(1, {{t"\"", i(1, "id(s)", {key = "i2"}), t"\""}, {i(1, jt({"\"", "id(s)", "\""}))}}, {key = "i1"})
	}),
	s({trig = "vis", descr = "(vis) \"page.visual_effect (effect, id)\"", priority = -50, trigEngine = te("")}, {
		t"page.visual_effect :", i(1, "toggle_slide", {key = "i1"}), t", ", c(2, {{t"\"", i(1, "DOM ID", {key = "i3"}), t"\""}, {i(1, jt({"\"", "DOM ID", "\""}))}}, {key = "i2"})
	}),
	s({trig = "rpo", descr = "(rpo) \"render (partial,object) (rpo)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", object: ", d(2, function(args, snip) return sn(nil, { i(1, jt({"@", args[1]}, ""), {key = "i2"}) }) end, {k"i1"})
	}),
	s({trig = "st", descr = "(st) \"submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 78}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"submit_tag \"", i(1, "Save changes", {key = "i1"}), t"\"", c(2, {{t", id: \"", i(1, "submit", {key = "i3"}), t"\""}, {i(1, jt({", id: \"", "submit", "\""}))}}, {key = "i2"}), c(3, {{t", name: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i5"}) }) end, {k"i3"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", name: \"", jt({args[1]}), "\""}))}) end, {k"i3"})}}, {key = "i4"}), c(4, {{t", class: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({"form_", args[1]}, ""), {key = "i7"}) }) end, {k"i3"}), t"\""}, {d(1, function(args, snip) return sn(nil, {i(1, jt({", class: \"", jt({"form_", args[1]}), "\""}))}) end, {k"i3"})}}, {key = "i6"}), c(5, {{t", disabled: ", i(1, "false", {key = "i9"})}, {i(1, jt({", disabled: ", "false"}))}}, {key = "i8"}), c(6, {{t", disable_with: \"", i(1, "Please wait...", {key = "i11"}), t"\""}, {i(1, jt({", disable_with: \"", "Please wait...", "\""}))}}, {key = "i10"}), f(function(args, snip) return c_py({"eruby", 78}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
	s({trig = "else", descr = "(else) \"else (ERB)\"", priority = -50, trigEngine = te("")}, {
		t"<% else %>", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "lf", descr = "(lf) \"link_to_function\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"eruby", 80}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end), t"link_to_function ", c(1, {{t"\"", i(1, "Greeting", {key = "i2"}), t"\""}, {i(1, jt({"\"", "Greeting", "\""}))}}, {key = "i1"}), t", \"", i(2, "alert(\'Hello world!\')", {key = "i3"}), t"\"", i(3, "", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 80}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", {}) end)
	}),
})
