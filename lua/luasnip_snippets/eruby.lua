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
	{{1, 1}},
	{{0, 0}},
	{{0, 0}},
	{},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}},
	{{1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 14}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 12}, {5, 13}, {6, 14}, {7, 15}, {8, 16}, {9, 17}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 10}, {5, 11}, {6, 12}, {7, 13}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 12}, {5, 13}, {6, 14}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}, {9, 9}, {10, 10}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}, {9, 9}, {10, 10}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}, {9, 9}, {10, 10}, {11, 11}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
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
	s({trig = "rc", descr = "(rc)", priority = -1000, trigEngine = te("w")}, {
		t"<% ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "rce", descr = "(rce)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "", {key = "i1"}), t" %>"
	}),
	s({trig = "%", descr = "(%) \"<% $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[3]) end, ae(am[3])), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 3}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[3]) end, ae(am[3]))
	}),
	s({trig = "=", descr = "(=) \"<%= $0 %>\"", priority = -50, trigEngine = te("i")}, {
		f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[4]) end, ae(am[4])), i(0, "", {key = "i0"}), f(function(args, snip) return c_py({"eruby", 4}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[4]) end, ae(am[4]))
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
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", locals: { ", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t": ", d(3, function(args) return sn(nil, {t"@", cp(1)}) end, {}, {key = "i3"}), i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "rps", descr = "(rps) \"render (partial,status) (rps)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", status: ", i(2, "500", {key = "i2"})
	}),
	s({trig = "rpc", descr = "(rpc) \"render (partial,collection) (rpc)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", collection: ", d(2, function(args) return sn(nil, {t"@", cp(1), t"s"}) end, {}, {key = "i2"})
	}),
	s({trig = "lia", descr = "(lia) \"link_to (action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[12]) end, ae(am[12])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "index", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 12}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[12]) end, ae(am[12]))
	}),
	s({trig = "liai", descr = "(liai) \"link_to (action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[13]) end, ae(am[13])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", action: \"", i(2, "edit", {key = "i2"}), t"\", id: ", i(3, "@item", {key = "i3"}), f(function(args, snip) return c_py({"eruby", 13}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[13]) end, ae(am[13]))
	}),
	s({trig = "lic", descr = "(lic) \"link_to (controller)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[14]) end, ae(am[14])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\"", f(function(args, snip) return c_py({"eruby", 14}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[14]) end, ae(am[14]))
	}),
	s({trig = "lica", descr = "(lica) \"link_to (controller, action)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[15]) end, ae(am[15])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "index", {key = "i3"}), t"\"", f(function(args, snip) return c_py({"eruby", 15}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[15]) end, ae(am[15]))
	}),
	s({trig = "licai", descr = "(licai) \"link_to (controller, action, id)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", controller: \"", i(2, "items", {key = "i2"}), t"\", action: \"", i(3, "edit", {key = "i3"}), t"\", id: ", i(4, "@item", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 16}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[16]) end, ae(am[16]))
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
	s({trig = "ff", descr = "(ff) \"form_for\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[22]) end, ae(am[22])), t"form_for @", i(1, "model", {key = "i1"}), t" do |f|", f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[22]) end, ae(am[22])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 22}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[22]) end, ae(am[22]))
	}),
	s({trig = "ffi", descr = "(ffi)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".input :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffcb", descr = "(ffcb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".check_box :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffe", descr = "(ffe) \"form_for with errors\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25])), t"error_messages_for :", i(1, "model", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25])), nl(),
		nl(),
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25])), t"form_for @", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t" do |f|", f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 25}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[25]) end, ae(am[25]))
	}),
	s({trig = "ffff", descr = "(ffff)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".file_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffhf", descr = "(ffhf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".hidden_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffl", descr = "(ffl)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".label :", i(2, "attribute", {key = "i2"}), t", \'", d(3, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i0"}), t"\' %>"
	}),
	s({trig = "ffpf", descr = "(ffpf)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".password_field :", i(0, "attribute", {key = "i0"}), t" %>"
	}),
	s({trig = "ffrb", descr = "(ffrb)", priority = -1000, trigEngine = te("w")}, {
		t"<%= ", i(1, "f", {key = "i1"}), t".radio_button :", i(2, "attribute", {key = "i2"}), t", :", i(0, "tag_value", {key = "i0"}), t" %>"
	}),
	s({trig = "ffs", descr = "(ffs) \"form_for submit 2\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[31]) end, ae(am[31])), i(1, "f", {key = "i1"}), t".submit \'", i(2, "Submit", {key = "i2"}), t"\'", d(3, function(args) return sn(nil, {t", disable_with: \'", d(1, function(args) return sn(nil, {cp(2), t"ing..."}) end, {}, {key = "i4"}), t"\'"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 31}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[31]) end, ae(am[31]))
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
		f(function(args, snip) return c_py({"eruby", 37}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[37]) end, ae(am[37])), t"image_tag \"", i(1, "", {key = "i1"}), i(2, ".png", {key = "i2"}), t"\"", d(3, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", title: \"", i(5, "title", {key = "i5"}), t"\""}) end, {}, {key = "i4"}), d(3, function(args) return sn(nil, {t", class: \"", i(7, "class", {key = "i7"}), t"\""}) end, {}, {key = "i6"})}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 37}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[37]) end, ae(am[37]))
	}),
	s({trig = "jit", descr = "(jit) \"javascript_include_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 38}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[38]) end, ae(am[38])), t"javascript_include_tag ", i(1, ":all", {key = "i1"}), d(2, function(args) return sn(nil, {t", cache: ", i(3, "true", {key = "i3"})}) end, {}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 38}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[38]) end, ae(am[38]))
	}),
	s({trig = "jsit", descr = "(jsit)", priority = -1000, trigEngine = te("w")}, {
		t"<%= javascript_include_tag \"", i(0, "", {key = "i0"}), t"\" %>"
	}),
	s({trig = "lim", descr = "(lim) \"link_to model\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 40}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[40]) end, ae(am[40])), t"link_to ", i(1, "model", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t", ", d(3, function(args) return sn(nil, {d(1, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i4"}), t"_path(", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i14"}), t")"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 40}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[40]) end, ae(am[40]))
	}),
	s({trig = "linp", descr = "(linp) \"link_to (nested path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 41}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[41]) end, ae(am[41])), t"link_to ", d(1, function(args) return sn(nil, {t"\"", i(2, "link text...", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {i(4, "parent", {key = "i12"}), t"_", i(5, "child", {key = "i13"}), t"_path(", i(6, "@", {key = "i14"}), d(4, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i15"}), t", ", i(8, "@", {key = "i16"}), d(6, function(args) return sn(nil, {cp(13)}) end, {}, {key = "i17"}), t")"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 41}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[41]) end, ae(am[41]))
	}),
	s({trig = "linpp", descr = "(linpp) \"link_to (nested path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 42}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[42]) end, ae(am[42])), t"link_to ", d(1, function(args) return sn(nil, {t"\"", i(2, "link text...", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {i(4, "parent", {key = "i10"}), t"_", i(5, "child", {key = "i11"}), t"_path(", i(6, "@", {key = "i12"}), d(4, function(args) return sn(nil, {cp(10)}) end, {}, {key = "i13"}), t")"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 42}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[42]) end, ae(am[42]))
	}),
	s({trig = "lip", descr = "(lip) \"link_to (path)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 43}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[43]) end, ae(am[43])), t"link_to ", d(1, function(args) return sn(nil, {t"\"", i(2, "link text...", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {i(4, "model", {key = "i12"}), t"_path(", i(5, "@", {key = "i13"}), d(3, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i14"}), t")"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 43}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[43]) end, ae(am[43]))
	}),
	s({trig = "lipp", descr = "(lipp) \"link_to (path plural)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 44}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[44]) end, ae(am[44])), t"link_to ", d(1, function(args) return sn(nil, {t"\"", i(2, "link text...", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {i(4, "model", {key = "i4"}), t"s_path"}) end, {}, {key = "i3"}), f(function(args, snip) return c_py({"eruby", 44}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[44]) end, ae(am[44]))
	}),
	s({trig = "lt", descr = "(lt) \"link_to (name, dest)\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[45]) end, ae(am[45])), t"link_to \"", i(1, "link text...", {key = "i1"}), t"\", ", i(2, "dest", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 45}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[45]) end, ae(am[45]))
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
		f(function(args, snip) return c_py({"eruby", 51}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[51]) end, ae(am[51])), t"stylesheet_link_tag ", i(1, ":all", {key = "i1"}), d(2, function(args) return sn(nil, {t", cache: ", i(3, "true", {key = "i3"})}) end, {}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 51}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[51]) end, ae(am[51]))
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
		f(function(args, snip) return c_py({"eruby", 56}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[56]) end, ae(am[56])), t"Fixtures.identify(:", i(1, "name", {key = "i1"}), t")", f(function(args, snip) return c_py({"eruby", 56}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[56]) end, ae(am[56])), i(0, "", {key = "i0"})
	}),
	s({trig = "ft", descr = "(ft) \"form_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[57]) end, ae(am[57])), t"form_tag(", d(1, function(args) return sn(nil, {t"action: \'", i(2, "update", {key = "i2"}), t"\'"}) end, {}, {key = "i1"}), d(3, function(args) return sn(nil, {t", ", d(1, function(args) return sn(nil, {i(5, "class", {key = "i5"}), t": \'", i(6, "form", {key = "i6"}), t"\'}"}) end, {}, {key = "i4"})}) end, {}, {key = "i3"}), t") do", f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[57]) end, ae(am[57])), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		f(function(args, snip) return c_py({"eruby", 57}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[57]) end, ae(am[57]))
	}),
	s({trig = "f.", descr = "(f.) \"f.text_field\"", priority = -50, trigEngine = te("w")}, c(1, {
		{
			f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[58]) end, ae(am[58])), t"f.fields_for :", i(1, "attribute", {key = "i1"}), t" do |", i(2, "f", {key = "i2"}), t"|", f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_INLINE\', snip)", python_globals, args, snip, "", am[58]) end, ae(am[58])), nl(),
			t"\t", i(3, "", {key = "i0"}), nl(),
			f(function(args, snip) return c_py({"eruby", 58}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_BLOCK\', snip)", python_globals, args, snip, "", am[58]) end, ae(am[58]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 59}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[59]) end, ae(am[59])), t"f.check_box :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 59}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[59]) end, ae(am[59]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 60}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[60]) end, ae(am[60])), t"f.file_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 60}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[60]) end, ae(am[60]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 61}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[61]) end, ae(am[61])), t"f.hidden_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 61}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[61]) end, ae(am[61]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 62}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[62]) end, ae(am[62])), t"f.label :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1: :\\u$0)")}, ""), {key = "i3"}) }) end, {k"i1"}), t"\""}) end, {}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 62}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[62]) end, ae(am[62]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 63}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[63]) end, ae(am[63])), t"f.password_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 63}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[63]) end, ae(am[63]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 64}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[64]) end, ae(am[64])), t"f.radio_button :", i(1, "attribute", {key = "i1"}), t", :", i(2, "tag_value", {key = "i2"}), f(function(args, snip) return c_py({"eruby", 64}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[64]) end, ae(am[64]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 65}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[65]) end, ae(am[65])), t"f.submit \"", i(1, "Submit", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {t", disable_with: \'", d(1, function(args) return sn(nil, {cp(1), t"ing..."}) end, {}, {key = "i3"}), t"\'"}) end, {}, {key = "i2"}), f(function(args, snip) return c_py({"eruby", 65}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[65]) end, ae(am[65]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 66}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[66]) end, ae(am[66])), t"f.text_area :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 66}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[66]) end, ae(am[66]))
		},
		{
			f(function(args, snip) return c_py({"eruby", 67}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[67]) end, ae(am[67])), t"f.text_field :", i(1, "attribute", {key = "i1"}), f(function(args, snip) return c_py({"eruby", 67}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[67]) end, ae(am[67]))
		},
	})),
	s({trig = "ist", descr = "(ist) \"image_submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 68}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[68]) end, ae(am[68])), t"image_submit_tag(\"", i(1, "agree.png", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", id: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i4"}) }) end, {k"i1"}), t"\""}) end, {}, {key = "i3"}), d(3, function(args) return sn(nil, {t", name: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1")}, ""), {key = "i6"}) }) end, {k"i1"}), t"\""}) end, {}, {key = "i5"}), d(5, function(args) return sn(nil, {t", class: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^(\\w+)(\\.\\w*)?$", "$1"), "-button"}, ""), {key = "i8"}) }) end, {k"i1"}), t"\""}) end, {}, {key = "i7"}), d(7, function(args) return sn(nil, {t", disabled: ", i(10, "false", {key = "i10"})}) end, {}, {key = "i9"})}) end, {}, {key = "i2"}), t")", f(function(args, snip) return c_py({"eruby", 68}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[68]) end, ae(am[68]))
	}),
	s({trig = "layout", descr = "(layout) \"layout\"", priority = -50, trigEngine = te("")}, {
		t"layout \"", i(1, "template_name", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", only: ", d(1, function(args) return sn(nil, {t"[:", i(5, "action", {key = "i5"}), t", :", i(6, "action", {key = "i6"}), t"]"}) end, {}, {key = "i4"})}) end, {}, {key = "i3"}), d(5, function(args) return sn(nil, {t", except: ", d(1, function(args) return sn(nil, {t"[:", i(9, "action", {key = "i9"}), t", :", i(10, "action", {key = "i10"}), t"]"}) end, {}, {key = "i8"})}) end, {}, {key = "i7"})}) end, {}, {key = "i2"})
	}),
	s({trig = "hide", descr = "(hide) \"page.hide (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.hide ", d(1, function(args) return sn(nil, {t"\"", i(2, "id(s)", {key = "i2"}), t"\""}) end, {}, {key = "i1"})
	}),
	s({trig = "ins", descr = "(ins) \"page.insert_html (position, id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.insert_html :", i(1, "top", {key = "i1"}), t", ", d(2, function(args) return sn(nil, {t"\"", i(3, "id", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), t", ", d(4, function(args) return sn(nil, {t"partial: \"", i(5, "template", {key = "i5"}), t"\""}) end, {}, {key = "i4"})
	}),
	s({trig = "rep", descr = "(rep) \"page.replace (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace ", d(1, function(args) return sn(nil, {t"\"", i(2, "id", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {t"partial: \"", i(4, "template", {key = "i4"}), t"\""}) end, {}, {key = "i3"})
	}),
	s({trig = "reph", descr = "(reph) \"page.replace_html (id, partial)\"", priority = -50, trigEngine = te("")}, {
		t"page.replace_html ", d(1, function(args) return sn(nil, {t"\"", i(2, "id", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", ", d(3, function(args) return sn(nil, {t"partial: \"", i(4, "template", {key = "i4"}), t"\""}) end, {}, {key = "i3"})
	}),
	s({trig = "show", descr = "(show) \"page.show (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.show ", d(1, function(args) return sn(nil, {t"\"", i(2, "id(s)", {key = "i2"}), t"\""}) end, {}, {key = "i1"})
	}),
	s({trig = "tog", descr = "(tog) \"page.toggle (*ids)\"", priority = -50, trigEngine = te("")}, {
		t"page.toggle ", d(1, function(args) return sn(nil, {t"\"", i(2, "id(s)", {key = "i2"}), t"\""}) end, {}, {key = "i1"})
	}),
	s({trig = "vis", descr = "(vis) \"page.visual_effect (effect, id)\"", priority = -50, trigEngine = te("")}, {
		t"page.visual_effect :", i(1, "toggle_slide", {key = "i1"}), t", ", d(2, function(args) return sn(nil, {t"\"", i(3, "DOM ID", {key = "i3"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "rpo", descr = "(rpo) \"render (partial,object) (rpo)\"", priority = -50, trigEngine = te("")}, {
		t"render partial: \"", i(1, "item", {key = "i1"}), t"\", object: ", d(2, function(args) return sn(nil, {t"@", cp(1)}) end, {}, {key = "i2"})
	}),
	s({trig = "st", descr = "(st) \"submit_tag\"", priority = -50, trigEngine = te("w")}, {
		f(function(args, snip) return c_py({"eruby", 78}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[78]) end, ae(am[78])), t"submit_tag \"", i(1, "Save changes", {key = "i1"}), t"\"", d(2, function(args) return sn(nil, {t", id: \"", i(3, "submit", {key = "i3"}), t"\""}) end, {}, {key = "i2"}), d(4, function(args) return sn(nil, {t", name: \"", d(1, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i5"}), t"\""}) end, {}, {key = "i4"}), d(6, function(args) return sn(nil, {t", class: \"", d(1, function(args) return sn(nil, {t"form_", cp(3)}) end, {}, {key = "i7"}), t"\""}) end, {}, {key = "i6"}), d(8, function(args) return sn(nil, {t", disabled: ", i(9, "false", {key = "i9"})}) end, {}, {key = "i8"}), d(10, function(args) return sn(nil, {t", disable_with: \"", i(11, "Please wait...", {key = "i11"}), t"\""}) end, {}, {key = "i10"}), f(function(args, snip) return c_py({"eruby", 78}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[78]) end, ae(am[78]))
	}),
	s({trig = "else", descr = "(else) \"else (ERB)\"", priority = -50, trigEngine = te("")}, {
		t"<% else %>", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "lf", descr = "(lf) \"link_to_function\"", priority = -50, trigEngine = te("")}, {
		f(function(args, snip) return c_py({"eruby", 80}, "textmate_var(\'TM_RAILS_TEMPLATE_START_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[80]) end, ae(am[80])), t"link_to_function ", d(1, function(args) return sn(nil, {t"\"", i(2, "Greeting", {key = "i2"}), t"\""}) end, {}, {key = "i1"}), t", \"", i(3, "alert(\'Hello world!\')", {key = "i3"}), t"\"", i(4, "", {key = "i4"}), f(function(args, snip) return c_py({"eruby", 80}, "textmate_var(\'TM_RAILS_TEMPLATE_END_RUBY_EXPR\', snip)", python_globals, args, snip, "", am[80]) end, ae(am[80]))
	}),
})
