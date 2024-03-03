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


ls.add_snippets("eelixir", {
	s({trig = "%", descr = "(%) \"<% %>\"", priority = -50, trigEngine = te("w")}, {
		t"<% ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "=", descr = "(=) \"<%= %>\"", priority = -50, trigEngine = te("w")}, {
		t"<%= ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "#", descr = "(#) <%# %>", priority = -1000, trigEngine = te("w")}, {
		t"<%# ", i(0, "", {key = "i0"}), t" %>"
	}),
	s({trig = "end", descr = "(end) \"<% end %>\"", priority = -50, trigEngine = te("w")}, {
		t"<% end %>"
	}),
	s({trig = "for", descr = "(for)", priority = -50, trigEngine = te("")}, {
		t"<%= for ", i(1, "item", {key = "i1"}), t" <- ", d(2, function(args, snip) return sn(nil, { i(1, jt({args[1], "s"}, ""), {key = "i2"}) }) end, {k"i1"}), t" ", i(3, "@conn", {key = "i3"}), t" do %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"<%= if ", i(1, "", {key = "i1"}), t" do %>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<% end %>"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"<%= if ", i(1, "", {key = "i1"}), t" do %>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"<% else %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "cond", descr = "(cond)", priority = -1000, trigEngine = te("w")}, {
		t"<%= cond do %>", nl(),
		t"\t<% ", i(1, "", {key = "i1"}), t" -> %>", nl(),
		t"\t\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i2"}) }) end), nl(),
		nl(),
		t"\t<% true -> %>", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"<% end %>"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"<%= unless ", i(1, "", {key = "i1"}), t" do %>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<% end %>"
	}),
	s({trig = "ft", descr = "(ft) \"form_tag\"", priority = -50, trigEngine = te("w")}, {
		t"<%= form_tag(", c(1, {{t"\"", i(1, "/users", {key = "i2"}), t"\""}, {i(1, jt({"\"", "/users", "\""}))}}, {key = "i1"}), t", method: ", i(2, ":post", {key = "i3"}), t") %>", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"</form>"
	}),
	s({trig = "sl", descr = "(sl) select", priority = -1000, trigEngine = te("w")}, {
		t"<%= select ", i(1, "f", {key = "i1"}), t", :", i(2, "field", {key = "i2"}), t", ", i(3, "[{\"key\", \"value\"}]", {key = "i3"}), t", prompt: ", i(4, "\"Prompt\"", {key = "i4"}), t" %>"
	}),
	s({trig = "sb", descr = "(sb) submit", priority = -1000, trigEngine = te("w")}, {
		t"<%= submit ", i(1, "\"Submit\"", {key = "i1"}), t" %>"
	}),
	s({trig = "rb", descr = "(rb) radio_button", priority = -1000, trigEngine = te("w")}, {
		t"<%= radio_button ", i(1, "f", {key = "i1"}), t", :", i(2, "field", {key = "i2"}), t",  ", i(3, "\"value\"", {key = "i3"}), t" %>"
	}),
	s({trig = "et", descr = "(et) error_tag", priority = -1000, trigEngine = te("w")}, {
		t"<%= error_tag ", i(1, "f", {key = "i1"}), t", :", i(2, "field", {key = "i2"}), t" %>"
	}),
	s({trig = "ti", descr = "(ti) text_input", priority = -1000, trigEngine = te("w")}, {
		t"<%= text_input ", i(1, "f", {key = "i1"}), t", :", i(2, "field", {key = "i2"}), t" %>"
	}),
	s({trig = "la", descr = "(la) label", priority = -1000, trigEngine = te("w")}, {
		t"<%= label ", i(1, "f", {key = "i1"}), t", :", i(2, "field", {key = "i2"}), t", \"", i(3, "Label", {key = "i3"}), t"\" %>"
	}),
	s({trig = "pi", descr = "(pi) password_input", priority = -1000, trigEngine = te("w")}, {
		t"<%= password_input ", i(1, "f", {key = "i1"}), t", :", i(2, "password", {key = "i2"}), t" %>"
	}),
	s({trig = "render", descr = "(render)", priority = -1000, trigEngine = te("w")}, {
		t"<%= render \"", i(1, "index", {key = "i1"}), t".html\", ", i(2, "var: @var", {key = "i2"}), t" %>"
	}),
	s({trig = "lin", descr = "(lin) \"link\"", priority = -50, trigEngine = te("w")}, {
		t"<%= link ", c(1, {{t"\"", i(1, "Submit", {key = "i2"}), t"\""}, {i(1, jt({"\"", "Submit", "\""}))}}, {key = "i1"}), t", to: ", c(2, {{t"\"", i(1, "/users", {key = "i4"}), t"\""}, {i(1, jt({"\"", "/users", "\""}))}}, {key = "i3"}), t", method: ", i(3, ":delete", {key = "i5"}), t" %>"
	}),
	s({trig = "ff", descr = "(ff) \"form_for\"", priority = -50, trigEngine = te("w")}, {
		t"<%= form_for @changeset, ", c(1, {{t"\"", i(1, "/users", {key = "i2"}), t"\""}, {i(1, jt({"\"", "/users", "\""}))}}, {key = "i1"}), t", fn f -> %>", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\t<%= submit \"Submit\" %>", nl(),
		t"<% end %>"
	}),
	s({trig = "pry", descr = "(pry)", priority = -1000, trigEngine = te("w")}, {
		t"<% require IEx; IEx.pry %>"
	}),
	s({trig = "gt", descr = "(gt) \"gettext\"", priority = -50, trigEngine = te("w")}, {
		t"<%= gettext(\"", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"\") %>"
	}),
})
