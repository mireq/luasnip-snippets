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


ls.add_snippets("gdscript", {
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "", {key = "i1"}), t" extends ", i(2, "Reference", {key = "i2"}), nl(),
		t"\\t", i(3, "", {key = "i3"})
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"print(", i(1, "", {key = "i1"}), t")"
	}),
	s({trig = "ready", descr = "(ready)", priority = -1000, trigEngine = te("w")}, {
		t"func _ready():", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "init", descr = "(init)", priority = -1000, trigEngine = te("w")}, {
		t"func _init():", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "process", descr = "(process)", priority = -1000, trigEngine = te("w")}, {
		t"func _process(delta):", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "input", descr = "(input)", priority = -1000, trigEngine = te("w")}, {
		t"func _input(event):", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "inpute", descr = "(inpute)", priority = -1000, trigEngine = te("w")}, {
		t"func _input_event(event):", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "draw", descr = "(draw)", priority = -1000, trigEngine = te("w")}, {
		t"func _draw():", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "guii", descr = "(guii)", priority = -1000, trigEngine = te("w")}, {
		t"func _gui_input(event):", nl(),
		t"\\t", i(1, "pass", {key = "i1"})
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t":", nl(),
			t"\\t", i(3, "pass", {key = "i3"})
		},
		{
			t"for ", i(1, "", {key = "i1"}), t" in range(", i(2, "start", {key = "i2"}), t"{", i(3, "", {key = "i3"}), t":,end}):", nl(),
			t"\\t", i(4, "pass", {key = "i4"})
		},
	})),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
			t"\\t", i(3, "pass", {key = "i3"}), nl(),
			t"elif ", i(2, "condition", {key = "i2"}), t":", nl(),
			t"\\t", i(4, "pass", {key = "i4"}), nl(),
			t"else:", nl(),
			t"\\t", i(5, "pass", {key = "i5"})
		},
		{
			t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
			t"\\t", i(2, "pass", {key = "i2"}), nl(),
			t"else:", nl(),
			t"\\t", i(3, "pass", {key = "i3"})
		},
		{
			t"if ", i(1, "condition", {key = "i1"}), t":", nl(),
			t"\\t", i(2, "pass", {key = "i2"})
		},
	})),
	s({trig = "while", descr = "(while)", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "condition", {key = "i1"}), t":", nl(),
		t"\\t", i(2, "pass", {key = "i2"})
	}),
	s({trig = "func", descr = "(func)", priority = -1000, trigEngine = te("w")}, {
		t"func ", i(1, "method", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t"):", nl(),
		t"\\t", i(3, "pass", {key = "i3"})
	}),
	s({trig = "signal", descr = "(signal)", priority = -1000, trigEngine = te("w")}, {
		t"signal ", i(1, "signalname", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t")"
	}),
	s({trig = "export", descr = "(export)", priority = -1000, trigEngine = te("w")}, {
		t"export(", i(1, "type", {key = "i1"}), i(2, ",other_configs", {key = "i2"}), t") var ", i(3, "name", {key = "i3"}), i(4, " = default", {key = "i4"}), i(5, " setget ", {key = "i5"})
	}),
	s({trig = "var", descr = "(var)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "name", {key = "i1"}), i(2, " = default", {key = "i2"}), i(3, " setget ", {key = "i3"})
	}),
	s({trig = "onready", descr = "(onready)", priority = -1000, trigEngine = te("w")}, {
		t"onready var ", i(1, "name", {key = "i1"}), t" = get_node(", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		i(1, "instance", {key = "i1"}), t" is ", i(2, "class", {key = "i2"})
	}),
	s({trig = "in", descr = "(in)", priority = -1000, trigEngine = te("w")}, {
		i(1, "element", {key = "i1"}), t" in ${", i(2, "", {key = "i2"}), t":array}"
	}),
	s({trig = "gdscript", descr = "(gdscript)", priority = -1000, trigEngine = te("w")}, {
		t"extends ", i(1, "BaseClass", {key = "i1"}), nl(),
		nl(),
		t"# class member variables go here, for example:", nl(),
		t"# var a = 2", nl(),
		t"# var b = \\textvar\\", nl(),
		nl(),
		t"func _ready():", nl(),
		t"\\t# Called every time the node is added to the scene.", nl(),
		t"\\t# Initialization here", nl(),
		t"\\tpass"
	}),
})
