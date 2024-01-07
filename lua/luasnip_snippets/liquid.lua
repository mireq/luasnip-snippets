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
	{0, 1},
	{},
	{1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{1, 2},
	{1, 2, 3},
	{0, 1, 2},
	{1},
	{1},
	{},
	{},
	{},
	{0, 1, 2, 3},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0},
	{0, 1, 2},
	{0},
	{0, 1, 2},
	{1},
	{0},
	{1},
	{},
	{0, 1, 2, 3},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{},
	{1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{1, 2},
	{1, 2, 3},
	{0, 1, 2},
	{},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0},
	{0, 1, 2},
	{1},
	{1},
	{},
	{0, 1, 2, 3},
	{1},
	{},
	{},
	{1},
	{1},
	{},
	{},
	{1},
	{},
	{},
	{1, 2},
	{},
	{},
	{},
	{},
	{1},
	{},
	{1},
	{1},
	{1},
	{1},
	{1},
	{},
	{},
	{},
	{},
	{1},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{1, 2},
	{1},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{},
	{},
	{},
	{},
	{},
	{1, 2},
	{1, 2},
	{},
	{},
	{},
	{},
	{},
	{1},
	{1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0},
}
ls.add_snippets("liquid", {
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{% endif %}"
	}),
	s({trig = "else", descr = "(else)", priority = -1000, trigEngine = te("w")}, {
		t"{% else %}"
	}),
	s({trig = "elsif", descr = "(elsif)", priority = -1000, trigEngine = te("w")}, {
		t"{% elsif ", i(1, "", {key = "i1"}), t" %}"
	}),
	s({trig = "ifelse", descr = "(ifelse)", priority = -1000, trigEngine = te("w")}, {
		t"{% if ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{% else %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endif %}"
	}),
	s({trig = "unless", descr = "(unless)", priority = -1000, trigEngine = te("w")}, {
		t"{% unless ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{% endunless %}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"{% case ", i(1, "variable", {key = "i1"}), t" %}", nl(),
		t"\t{% when ", i(2, "", {key = "i2"}), t" %}", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t{% else %}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"{% endcase %}"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"{% when ", i(1, "", {key = "i1"}), t" %}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "cycle", descr = "(cycle)", priority = -1000, trigEngine = te("w")}, {
		t"{% cycle \'", i(1, "odd", {key = "i1"}), t"\', \'", i(2, "even", {key = "i2"}), t"\' %}"
	}),
	s({trig = "cyclegroup", descr = "(cyclegroup)", priority = -1000, trigEngine = te("w")}, {
		t"{% cycle \'", i(1, "group name", {key = "i1"}), t"\': \'", i(2, "odd", {key = "i2"}), t"\', \'", i(3, "even", {key = "i3"}), t"\' %}"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"{% for ", i(1, "item", {key = "i1"}), t" in ", i(2, "collection", {key = "i2"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endfor %}"
	}),
	s({trig = "limit", descr = "(limit)", priority = -1000, trigEngine = te("w")}, {
		t"limit: ", i(1, "5", {key = "i1"})
	}),
	s({trig = "offset", descr = "(offset)", priority = -1000, trigEngine = te("w")}, {
		t"offset: ", i(1, "0", {key = "i1"})
	}),
	s({trig = "reversed", descr = "(reversed)", priority = -1000, trigEngine = te("w")}, {
		t"reversed"
	}),
	s({trig = "break", descr = "(break)", priority = -1000, trigEngine = te("w")}, {
		t"{% break %}"
	}),
	s({trig = "continue", descr = "(continue)", priority = -1000, trigEngine = te("w")}, {
		t"{% continue %}"
	}),
	s({trig = "tablerow", descr = "(tablerow)", priority = -1000, trigEngine = te("w")}, {
		t"{% tablerow ", i(1, "item", {key = "i1"}), t" in ", i(2, "collection", {key = "i2"}), t" cols: ", i(3, "2", {key = "i3"}), t" %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endtablerow %}"
	}),
	s({trig = "assign", descr = "(assign)", priority = -1000, trigEngine = te("w")}, {
		t"{% assign ", i(1, "variable", {key = "i1"}), t" = ", i(0, "value", {key = "i0"}), t" %}"
	}),
	s({trig = "increment", descr = "(increment)", priority = -1000, trigEngine = te("w")}, {
		t"{% increment ", i(0, "variable", {key = "i0"}), t" %}"
	}),
	s({trig = "decrement", descr = "(decrement)", priority = -1000, trigEngine = te("w")}, {
		t"{% decrement ", i(0, "variable", {key = "i0"}), t" %}"
	}),
	s({trig = "capture", descr = "(capture)", priority = -1000, trigEngine = te("w")}, {
		t"{% capture ", i(1, "variable", {key = "i1"}), t" %}", i(0, "", {key = "i0"}), t"{% endcapture %}"
	}),
	s({trig = "include", descr = "(include)", priority = -1000, trigEngine = te("w")}, {
		t"{% include \'", i(0, "snippet", {key = "i0"}), t"\' %}"
	}),
	s({trig = "includewith", descr = "(includewith)", priority = -1000, trigEngine = te("w")}, {
		t"{% include \'", i(1, "snippet", {key = "i1"}), t"\', ", i(2, "variable", {key = "i2"}), t": ", i(0, "value", {key = "i0"}), t" %}"
	}),
	s({trig = "render", descr = "(render)", priority = -1000, trigEngine = te("w")}, {
		t"{% render \'", i(0, "snippet", {key = "i0"}), t"\' %}"
	}),
	s({trig = "renderwith", descr = "(renderwith)", priority = -1000, trigEngine = te("w")}, {
		t"{% render \'", i(1, "snippet", {key = "i1"}), t"\', ", i(2, "variable", {key = "i2"}), t": ", i(0, "value", {key = "i0"}), t" %}"
	}),
	s({trig = "section", descr = "(section)", priority = -1000, trigEngine = te("w")}, {
		t"{% section \'", i(1, "snippet", {key = "i1"}), t"\' %}"
	}),
	s({trig = "raw", descr = "(raw)", priority = -1000, trigEngine = te("w")}, {
		t"{% raw %}", i(0, "", {key = "i0"}), t"{% endraw %}"
	}),
	s({trig = "layout", descr = "(layout)", priority = -1000, trigEngine = te("w")}, {
		t"{% layout \'", i(1, "layout", {key = "i1"}), t"\' %}"
	}),
	s({trig = "layoutnone", descr = "(layoutnone)", priority = -1000, trigEngine = te("w")}, {
		t"{% layout none %}"
	}),
	s({trig = "paginate", descr = "(paginate)", priority = -1000, trigEngine = te("w")}, {
		t"{% paginate ", i(1, "collection.products", {key = "i1"}), t" by ", i(2, "12", {key = "i2"}), t" %}", nl(),
		t"\t{% for ", i(3, "product", {key = "i3"}), t" in ", cp(1), t" %}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t{% endfor %}", nl(),
		t"{% endpaginate %}"
	}),
	s({trig = "schema", descr = "(schema)", priority = -1000, trigEngine = te("w")}, {
		t"{% schema %}", nl(),
		t"\t{", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"{% endschema %}"
	}),
	s({trig = "stylesheet", descr = "(stylesheet)", priority = -1000, trigEngine = te("w")}, {
		t"{% stylesheet %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endstylesheet %}"
	}),
	s({trig = "stylesheet_scss", descr = "(stylesheet_scss)", priority = -1000, trigEngine = te("w")}, {
		t"{% stylesheet \'", i(1, "scss", {key = "i1"}), t"\' %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endstylesheet %}"
	}),
	s({trig = "javascript", descr = "(javascript)", priority = -1000, trigEngine = te("w")}, {
		t"{% javascript %}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{% endjavascript %}"
	}),
	s({trig = "comment-", descr = "(comment-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- comment -%}", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t"{%- endcomment -%}"
	}),
	s({trig = "if-", descr = "(if-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- if ", i(1, "", {key = "i1"}), t" -%}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{%- endif -%}"
	}),
	s({trig = "else-", descr = "(else-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- else -%}"
	}),
	s({trig = "elsif-", descr = "(elsif-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- elsif ", i(1, "", {key = "i1"}), t" -%}"
	}),
	s({trig = "ifelse-", descr = "(ifelse-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- if ", i(1, "", {key = "i1"}), t" -%}", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"{%- else -%}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{%- endif -%}"
	}),
	s({trig = "unless-", descr = "(unless-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- unless ", i(1, "", {key = "i1"}), t" -%}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"{%- endunless -%}"
	}),
	s({trig = "case-", descr = "(case-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- case ", i(1, "variable", {key = "i1"}), t" -%}", nl(),
		t"\t{%- when ", i(2, "", {key = "i2"}), t" -%}", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t{%- else -%}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"{%- endcase -%}"
	}),
	s({trig = "when-", descr = "(when-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- when ", i(1, "", {key = "i1"}), t" -%}", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end)
	}),
	s({trig = "cycle-", descr = "(cycle-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- cycle \'", i(1, "odd", {key = "i1"}), t"\', \'", i(2, "even", {key = "i2"}), t"\' -%}"
	}),
	s({trig = "cyclegroup-", descr = "(cyclegroup-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- cycle \'", i(1, "group name", {key = "i1"}), t"\': \'", i(2, "odd", {key = "i2"}), t"\', \'", i(3, "even", {key = "i3"}), t"\' -%}"
	}),
	s({trig = "for-", descr = "(for-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- for ", i(1, "item", {key = "i1"}), t" in ", i(2, "collection", {key = "i2"}), t" -%}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{%- endfor -%}"
	}),
	s({trig = "continue-", descr = "(continue-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- continue -%}"
	}),
	s({trig = "tablerow-", descr = "(tablerow-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- tablerow ", i(1, "item", {key = "i1"}), t" in ", i(2, "collection", {key = "i2"}), t" cols: ", i(3, "2", {key = "i3"}), t" -%}", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"{%- endtablerow -%}"
	}),
	s({trig = "assign-", descr = "(assign-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- assign ", i(1, "variable", {key = "i1"}), t" = ", i(0, "value", {key = "i0"}), t" -%}"
	}),
	s({trig = "capture-", descr = "(capture-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- capture ", i(1, "variable", {key = "i1"}), t" -%}", i(0, "", {key = "i0"}), t"{%- endcapture -%}"
	}),
	s({trig = "include-", descr = "(include-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- include \'", i(0, "snippet", {key = "i0"}), t"\' -%}"
	}),
	s({trig = "includewith-", descr = "(includewith-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- include \'", i(1, "snippet", {key = "i1"}), t"\', ", i(2, "variable", {key = "i2"}), t": ", i(0, "value", {key = "i0"}), t" -%}"
	}),
	s({trig = "render-", descr = "(render-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- render \'", i(0, "snippet", {key = "i0"}), t"\' -%}"
	}),
	s({trig = "renderwith-", descr = "(renderwith-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- render \'", i(1, "snippet", {key = "i1"}), t"\', ", i(2, "variable", {key = "i2"}), t": ", i(0, "value", {key = "i0"}), t" -%}"
	}),
	s({trig = "section-", descr = "(section-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- section \'", i(1, "snippet", {key = "i1"}), t"\' -%}"
	}),
	s({trig = "layout-", descr = "(layout-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- layout \'", i(1, "layout", {key = "i1"}), t"\' -%}"
	}),
	s({trig = "layoutnone-", descr = "(layoutnone-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- layout none -%}"
	}),
	s({trig = "paginate-", descr = "(paginate-)", priority = -1000, trigEngine = te("w")}, {
		t"{%- paginate ", i(1, "collection.products", {key = "i1"}), t" by ", i(2, "12", {key = "i2"}), t" -%}", nl(),
		t"\t{%- for ", i(3, "product", {key = "i3"}), t" in ", cp(1), t" -%}", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t{%- endfor -%}", nl(),
		t"{%- endpaginate -%}"
	}),
	s({trig = "join", descr = "(join)", priority = -1000, trigEngine = te("w")}, {
		t"| join: \'", i(1, ", ", {key = "i1"}), t"\'"
	}),
	s({trig = "first", descr = "(first)", priority = -1000, trigEngine = te("w")}, {
		t"| first"
	}),
	s({trig = "last", descr = "(last)", priority = -1000, trigEngine = te("w")}, {
		t"| last"
	}),
	s({trig = "concat", descr = "(concat)", priority = -1000, trigEngine = te("w")}, {
		t"| concat: ", i(1, "array", {key = "i1"})
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"| map: \'", i(1, "key", {key = "i1"}), t"\'"
	}),
	s({trig = "reverse", descr = "(reverse)", priority = -1000, trigEngine = te("w")}, {
		t"| reverse"
	}),
	s({trig = "size", descr = "(size)", priority = -1000, trigEngine = te("w")}, {
		t"| size"
	}),
	s({trig = "sort", descr = "(sort)", priority = -1000, trigEngine = te("w")}, {
		t"| sort: \'", i(1, "key", {key = "i1"}), t"\'"
	}),
	s({trig = "uniq", descr = "(uniq)", priority = -1000, trigEngine = te("w")}, {
		t"| uniq"
	}),
	s({trig = "img_tag", descr = "(img_tag)", priority = -1000, trigEngine = te("w")}, {
		t"| img_tag"
	}),
	s({trig = "img_tag_param", descr = "(img_tag_param)", priority = -1000, trigEngine = te("w")}, {
		t"| img_tag: \'", i(1, "alt", {key = "i1"}), t"\', \'", i(2, "class", {key = "i2"}), t"\'"
	}),
	s({trig = "script_tag", descr = "(script_tag)", priority = -1000, trigEngine = te("w")}, {
		t"| script_tag"
	}),
	s({trig = "stylesheet_tag", descr = "(stylesheet_tag)", priority = -1000, trigEngine = te("w")}, {
		t"| stylesheet_tag"
	}),
	s({trig = "abs", descr = "(abs)", priority = -1000, trigEngine = te("w")}, {
		t"| abs"
	}),
	s({trig = "ceil", descr = "(ceil)", priority = -1000, trigEngine = te("w")}, {
		t"| ceil"
	}),
	s({trig = "divided_by", descr = "(divided_by)", priority = -1000, trigEngine = te("w")}, {
		t"| divided_by: ", i(1, "2", {key = "i1"})
	}),
	s({trig = "floor", descr = "(floor)", priority = -1000, trigEngine = te("w")}, {
		t"| floor"
	}),
	s({trig = "minus", descr = "(minus)", priority = -1000, trigEngine = te("w")}, {
		t"| minus: ", i(1, "1", {key = "i1"})
	}),
	s({trig = "plus", descr = "(plus)", priority = -1000, trigEngine = te("w")}, {
		t"| plus: ", i(1, "1", {key = "i1"})
	}),
	s({trig = "round", descr = "(round)", priority = -1000, trigEngine = te("w")}, {
		t"| round: ", i(1, "0", {key = "i1"})
	}),
	s({trig = "times", descr = "(times)", priority = -1000, trigEngine = te("w")}, {
		t"| times: ", i(1, "1", {key = "i1"})
	}),
	s({trig = "modulo", descr = "(modulo)", priority = -1000, trigEngine = te("w")}, {
		t"| modulo: ", i(1, "2", {key = "i1"})
	}),
	s({trig = "money", descr = "(money)", priority = -1000, trigEngine = te("w")}, {
		t"| money"
	}),
	s({trig = "money_with_currency", descr = "(money_with_currency)", priority = -1000, trigEngine = te("w")}, {
		t"| money_with_currency"
	}),
	s({trig = "money_without_trailing_zeros", descr = "(money_without_trailing_zeros)", priority = -1000, trigEngine = te("w")}, {
		t"| money_without_trailing_zeros"
	}),
	s({trig = "money_without_currency", descr = "(money_without_currency)", priority = -1000, trigEngine = te("w")}, {
		t"| money_without_currency"
	}),
	s({trig = "append", descr = "(append)", priority = -1000, trigEngine = te("w")}, {
		t"| append: \'", i(1, "string", {key = "i1"}), t"\'"
	}),
	s({trig = "camelcase", descr = "(camelcase)", priority = -1000, trigEngine = te("w")}, {
		t"| camelcase"
	}),
	s({trig = "capitalize", descr = "(capitalize)", priority = -1000, trigEngine = te("w")}, {
		t"| capitalize"
	}),
	s({trig = "downcase", descr = "(downcase)", priority = -1000, trigEngine = te("w")}, {
		t"| downcase"
	}),
	s({trig = "escape", descr = "(escape)", priority = -1000, trigEngine = te("w")}, {
		t"| escape"
	}),
	s({trig = "handleize", descr = "(handleize)", priority = -1000, trigEngine = te("w")}, {
		t"| handleize"
	}),
	s({trig = "md5", descr = "(md5)", priority = -1000, trigEngine = te("w")}, {
		t"| md5"
	}),
	s({trig = "newline_to_br", descr = "(newline_to_br)", priority = -1000, trigEngine = te("w")}, {
		t"| newline_to_br"
	}),
	s({trig = "pluralize", descr = "(pluralize)", priority = -1000, trigEngine = te("w")}, {
		t"| pluralize: \'", i(1, "item", {key = "i1"}), t"\', \'", i(2, "items", {key = "i2"}), t"\'"
	}),
	s({trig = "prepend", descr = "(prepend)", priority = -1000, trigEngine = te("w")}, {
		t"| prepend: \'", i(1, "string", {key = "i1"}), t"\'"
	}),
	s({trig = "remove", descr = "(remove)", priority = -1000, trigEngine = te("w")}, {
		t"| remove: \'", i(1, "string", {key = "i1"}), t"\'"
	}),
	s({trig = "remove_first", descr = "(remove_first)", priority = -1000, trigEngine = te("w")}, {
		t"| remove_first: \'", i(1, "string", {key = "i1"}), t"\'"
	}),
	s({trig = "replace", descr = "(replace)", priority = -1000, trigEngine = te("w")}, {
		t"| replace: \'", i(1, "target", {key = "i1"}), t"\', \'", i(2, "replace", {key = "i2"}), t"\'"
	}),
	s({trig = "replace_first", descr = "(replace_first)", priority = -1000, trigEngine = te("w")}, {
		t"| replace_first: \'", i(1, "target", {key = "i1"}), t"\', \'", i(2, "replace", {key = "i2"}), t"\'"
	}),
	s({trig = "slice", descr = "(slice)", priority = -1000, trigEngine = te("w")}, {
		t"| slice: ", i(1, "0", {key = "i1"}), t", ", i(2, "5", {key = "i2"})
	}),
	s({trig = "slice_single", descr = "(slice_single)", priority = -1000, trigEngine = te("w")}, {
		t"| slice: ", i(1, "at", {key = "i1"})
	}),
	s({trig = "split", descr = "(split)", priority = -1000, trigEngine = te("w")}, {
		t"| split: \'", i(1, ",", {key = "i1"}), t"\'"
	}),
	s({trig = "strip", descr = "(strip)", priority = -1000, trigEngine = te("w")}, {
		t"| strip"
	}),
	s({trig = "lstrip", descr = "(lstrip)", priority = -1000, trigEngine = te("w")}, {
		t"| lstrip"
	}),
	s({trig = "rstrip", descr = "(rstrip)", priority = -1000, trigEngine = te("w")}, {
		t"| rstrip"
	}),
	s({trig = "strip_html", descr = "(strip_html)", priority = -1000, trigEngine = te("w")}, {
		t"| strip_html"
	}),
	s({trig = "strip_newlines", descr = "(strip_newlines)", priority = -1000, trigEngine = te("w")}, {
		t"| strip_newlines"
	}),
	s({trig = "truncate", descr = "(truncate)", priority = -1000, trigEngine = te("w")}, {
		t"| truncate: ", i(1, "20", {key = "i1"}), t", \'", i(2, "...", {key = "i2"}), t"\'"
	}),
	s({trig = "truncatewords", descr = "(truncatewords)", priority = -1000, trigEngine = te("w")}, {
		t"| truncatewords: ", i(1, "5", {key = "i1"}), t", \'", i(2, "...", {key = "i2"}), t"\'"
	}),
	s({trig = "upcase", descr = "(upcase)", priority = -1000, trigEngine = te("w")}, {
		t"| upcase"
	}),
	s({trig = "url_encode", descr = "(url_encode)", priority = -1000, trigEngine = te("w")}, {
		t"| url_encode"
	}),
	s({trig = "url_escape", descr = "(url_escape)", priority = -1000, trigEngine = te("w")}, {
		t"| url_escape"
	}),
	s({trig = "url_param_escape", descr = "(url_param_escape)", priority = -1000, trigEngine = te("w")}, {
		t"| url_param_escape"
	}),
	s({trig = "asset_url", descr = "(asset_url)", priority = -1000, trigEngine = te("w")}, {
		t"| asset_url"
	}),
	s({trig = "asset_img_url", descr = "(asset_img_url)", priority = -1000, trigEngine = te("w")}, {
		t"| asset_img_url: \'", i(1, "medium", {key = "i1"}), t"\'"
	}),
	s({trig = "img_url", descr = "(img_url)", priority = -1000, trigEngine = te("w")}, {
		t"| img_url: \'", i(1, "medium", {key = "i1"}), t"\'"
	}),
	s({trig = "_schema", descr = "(_schema)", priority = -1000, trigEngine = te("w")}, {
		t"{% schema %}", nl(),
		t"\t{", nl(),
		t"\t\t\"name\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\t\"class\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\t\"settings\": [", nl(),
		t"\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t]", nl(),
		t"\t}", nl(),
		t"{% endschema %}"
	}),
	s({trig = "_blocks", descr = "(_blocks)", priority = -1000, trigEngine = te("w")}, {
		t"\"blocks\": [", nl(),
		t"\t{", nl(),
		t"\t\t\"type\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\t\"name\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\t\"settings\": [", nl(),
		t"\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t]", nl(),
		t"\t}", nl(),
		t"]"
	}),
	s({trig = "_text", descr = "(_text)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"text\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(4, "", {key = "i4"}), t"\",", nl(),
		t"\t\"placeholder\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_textarea", descr = "(_textarea)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"textarea\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(4, "", {key = "i4"}), t"\",", nl(),
		t"\t\"placeholder\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_image_picker", descr = "(_image_picker)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"image_picker\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_radio", descr = "(_radio)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"radio\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"options\": [", nl(),
		t"\t\t{ \"value\": \"", i(5, "", {key = "i5"}), t"\", \"label\": \"", i(0, "", {key = "i0"}), t"\" }", nl(),
		t"\t],", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(4, "", {key = "i4"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_select", descr = "(_select)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"select\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"options\": [", nl(),
		t"\t\t{", nl(),
		t"\t\t\t\"group\": \"", i(5, "", {key = "i5"}), t"\",", nl(),
		t"\t\t\t\"value\": \"", i(6, "", {key = "i6"}), t"\",", nl(),
		t"\t\t\t\"label\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"\t\t}", nl(),
		t"\t],", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(4, "", {key = "i4"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_checkbox", descr = "(_checkbox)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"checkbox\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": ", i(3, "true", {key = "i3"}), t",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_range", descr = "(_range)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"range\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"min\": ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\"max\": ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\"step\": ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\"unit\": \"", i(5, "", {key = "i5"}), t"\",", nl(),
		t"\t\"label\": \"", i(6, "", {key = "i6"}), t"\",", nl(),
		t"\t\"default\": ", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "_color", descr = "(_color)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"color\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_font", descr = "(_font)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"font_picker\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"default\": \"", i(0, "helvetica_n4", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_collection", descr = "(_collection)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"collection\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_product", descr = "(_product)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"product\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_blog", descr = "(_blog)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"blog\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_page", descr = "(_page)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"page\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_link_list", descr = "(_link_list)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"link_list\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_url", descr = "(_url)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"url\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_video", descr = "(_video)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"video_url\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"accept\": [\"youtube\", \"vimeo\"", i(0, "", {key = "i0"}), t"],", nl(),
		t"\t\"default\": \"", i(3, "", {key = "i3"}), t"\",", nl(),
		t"\t\"info\": \"", i(4, "", {key = "i4"}), t"\",", nl(),
		t"\t\"placeholder\": \"", i(5, "", {key = "i5"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_richtext", descr = "(_richtext)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"richtext\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": \"<p>", i(0, "", {key = "i0"}), t"</p>\"", nl(),
		t"}"
	}),
	s({trig = "_html", descr = "(_html)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"html\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"default\": \"<div>", i(0, "", {key = "i0"}), t"</div>\"", nl(),
		t"}"
	}),
	s({trig = "_article", descr = "(_article)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"article\",", nl(),
		t"\t\"id\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"label\": \"", i(2, "", {key = "i2"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_header", descr = "(_header)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"header\",", nl(),
		t"\t\"content\": \"", i(1, "", {key = "i1"}), t"\",", nl(),
		t"\t\"info\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
	s({trig = "_paragraph", descr = "(_paragraph)", priority = -1000, trigEngine = te("w")}, {
		t"{", nl(),
		t"\t\"type\": \"paragraph\",", nl(),
		t"\t\"content\": \"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"}"
	}),
})
