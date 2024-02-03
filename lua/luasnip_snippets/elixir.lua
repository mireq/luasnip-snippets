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
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{1, 2},
	{1},
	{1, 2},
	{1, 2, 3, 4},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{},
	{},
	{0, 1},
	{0},
	{0},
	{},
	{0, 1},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{1},
	{1},
	{1},
	{},
	{0, 1},
	{1},
	{1},
	{0, 1, 2},
	{0},
	{0},
	{1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3},
	{},
	{1},
	{1, 2, 3, 4, 5},
	{},
	{1},
	{0, 1},
	{0},
	{0},
}
ls.add_snippets("elixir", {
	s({trig = "do", descr = "(do)", priority = -1000, trigEngine = te("w")}, {
		t"do", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "put", descr = "(put) IO.puts", priority = -1000, trigEngine = te("w")}, {
		t"IO.puts(\"", i(0, "", {key = "i0"}), t"\")"
	}),
	s({trig = "ins", descr = "(ins) IO.inspect", priority = -1000, trigEngine = te("w")}, {
		t"IO.inspect(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "insl", descr = "(insl) IO.inspect with label", priority = -1000, trigEngine = te("w")}, {
		t"IO.inspect(", i(0, "", {key = "i0"}), t"label: \"", i(1, "label", {key = "i1"}), t"\")"
	}),
	s({trig = "if", descr = "(if) if .. do .. end", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "if:", descr = "(if:) if .. do: ..", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t", do: ", i(0, "", {key = "i0"})
	}),
	s({trig = "ife", descr = "(ife) if .. do .. else .. end", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "ife:", descr = "(ife:) if .. do: .. else:", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t", do: ", i(2, "", {key = "i2"}), t", else: ", i(0, "", {key = "i0"})
	}),
	s({trig = "unless", descr = "(unless) unless .. do .. end", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "unless:", descr = "(unless:) unless .. do: ..", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), t", do: ", i(0, "", {key = "i0"})
	}),
	s({trig = "unlesse", descr = "(unlesse) unless .. do .. else .. end", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "unlesse:", descr = "(unlesse:) unless .. do: .. else:", priority = -1000, trigEngine = te("w")}, {
		t"unless ", i(1, "", {key = "i1"}), t", do: ", i(2, "", {key = "i2"}), t", else: ", i(0, "", {key = "i0"})
	}),
	s({trig = "cond", descr = "(cond)", priority = -1000, trigEngine = te("w")}, {
		t"cond do", nl(),
		t"\t", i(1, "", {key = "i1"}), t" ->", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"end"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t" do", nl(),
		t"\t", i(2, "", {key = "i2"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "item", {key = "i1"}), t" <- ", i(2, "items", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "for:", descr = "(for:)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "item", {key = "i1"}), t" <- ", i(2, "items", {key = "i2"}), t", do: ", i(0, "", {key = "i0"})
	}),
	s({trig = "fori", descr = "(fori)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "item", {key = "i1"}), t" <- ", i(2, "items", {key = "i2"}), t", into: ", i(3, "", {key = "i3"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wi", descr = "(wi)", priority = -1000, trigEngine = te("w")}, {
		t"with ", i(1, "item", {key = "i1"}), t" <- ", i(2, "items", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wie", descr = "(wie)", priority = -1000, trigEngine = te("w")}, {
		t"with(", nl(),
		t"\t", i(1, "item", {key = "i1"}), t" <- ", i(2, "items", {key = "i2"}), nl(),
		t") do", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"else", nl(),
		t"\t", i(4, "", {key = "i4"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "sp", descr = "(sp)", priority = -1000, trigEngine = te("w")}, {
		t"@spec ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") :: ", i(3, "returns", {key = "i3"})
	}),
	s({trig = "op", descr = "(op)", priority = -1000, trigEngine = te("w")}, {
		t"@opaque ", i(1, "type_name", {key = "i1"}), t" :: ", i(2, "type", {key = "i2"})
	}),
	s({trig = "ty", descr = "(ty)", priority = -1000, trigEngine = te("w")}, {
		t"@type ", i(1, "type_name", {key = "i1"}), t" :: ", i(2, "type", {key = "i2"})
	}),
	s({trig = "typ", descr = "(typ)", priority = -1000, trigEngine = te("w")}, {
		t"@typep ", i(1, "type_name", {key = "i1"}), t" :: ", i(2, "type", {key = "i2"})
	}),
	s({trig = "cb", descr = "(cb)", priority = -1000, trigEngine = te("w")}, {
		t"@callback ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") :: ", i(3, "returns", {key = "i3"})
	}),
	s({trig = "df", descr = "(df)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t", do: ", i(2, "", {key = "i2"})
	}),
	s({trig = "dfw", descr = "(dfw)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") when ", i(3, "guard", {key = "i3"}), t", do:"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defd", descr = "(defd)", priority = -1000, trigEngine = te("w")}, {
		t"@doc \"\"\"", nl(),
		i(1, "doc string", {key = "i1"}), nl(),
		t"\"\"\"", nl(),
		t"def ", i(2, "name", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defs", descr = "(defs)", priority = -1000, trigEngine = te("w")}, {
		t"@spec ", i(1, "name", {key = "i1"}), t"(", i(2, "arg types", {key = "i2"}), t") :: ", i(3, "no_return", {key = "i3"}), nl(),
		t"def ", cp(1), t"(", i(4, "args", {key = "i4"}), t") do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defsd", descr = "(defsd)", priority = -1000, trigEngine = te("w")}, {
		t"@doc \"\"\"", nl(),
		i(1, "doc string", {key = "i1"}), nl(),
		t"\"\"\"", nl(),
		t"@spec ", i(2, "name", {key = "i2"}), t"(", i(3, "arg types", {key = "i3"}), t") :: ", i(4, "no_return", {key = "i4"}), nl(),
		t"def ", cp(2), t"(", i(5, "args", {key = "i5"}), t") do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defw", descr = "(defw)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") when ", i(3, "guard", {key = "i3"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defim", descr = "(defim)", priority = -1000, trigEngine = te("w")}, {
		t"defimpl ", i(1, "protocol_name", {key = "i1"}), t", for: ", i(2, "data_type", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defma", descr = "(defma)", priority = -1000, trigEngine = te("w")}, {
		t"defmacro ", i(1, "name", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defmo", descr = "(defmo)", priority = -1000, trigEngine = te("w")}, {
		t"defmodule ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "%M", descr = "(%M)", priority = -1000, trigEngine = te("w")}, {
		t"%__MODULE__{", nl(),
		t"\t", i(1, "key_name", {key = "i1"}), t": ", i(2, "value", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "enfk", descr = "(enfk)", priority = -1000, trigEngine = te("w")}, {
		t"@enforce_keys [:", i(1, "key_name", {key = "i1"}), t"]"
	}),
	s({trig = "dfp", descr = "(dfp)", priority = -1000, trigEngine = te("w")}, {
		t"defp ", i(1, "name", {key = "i1"}), t", do: ", i(2, "", {key = "i2"})
	}),
	s({trig = "dfpw", descr = "(dfpw)", priority = -1000, trigEngine = te("w")}, {
		t"defp ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") when ", i(3, "guard", {key = "i3"}), t", do: ", i(4, "", {key = "i4"})
	}),
	s({trig = "defp", descr = "(defp)", priority = -1000, trigEngine = te("w")}, {
		t"defp ", i(1, "name", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defpw", descr = "(defpw)", priority = -1000, trigEngine = te("w")}, {
		t"defp ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t") when ", i(3, "guard", {key = "i3"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "defpr", descr = "(defpr)", priority = -1000, trigEngine = te("w")}, {
		t"defprotocol ", i(1, "name", {key = "i1"}), t", [", i(0, "function", {key = "i0"}), t"]"
	}),
	s({trig = "defr", descr = "(defr)", priority = -1000, trigEngine = te("w")}, {
		t"defrecord ", i(1, "record_name", {key = "i1"}), t", ", i(0, "fields", {key = "i0"})
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"@doc \"\"\"", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"\"\"\""
	}),
	s({trig = "docs", descr = "(docs)", priority = -1000, trigEngine = te("w")}, {
		t"@doc ~S\"\"\"", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"\"\"\""
	}),
	s({trig = "docf", descr = "(docf)", priority = -1000, trigEngine = te("w")}, {
		t"@doc false"
	}),
	s({trig = "im", descr = "(im)", priority = -1000, trigEngine = te("w")}, {
		t"@impl true"
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"fn ", i(1, "args", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t" end"
	}),
	s({trig = "mdoc", descr = "(mdoc)", priority = -1000, trigEngine = te("w")}, {
		t"@moduledoc \"\"\"", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"\"\"\""
	}),
	s({trig = "mdocs", descr = "(mdocs)", priority = -1000, trigEngine = te("w")}, {
		t"@moduledoc ~S\"\"\"", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"\"\"\""
	}),
	s({trig = "mdocf", descr = "(mdocf)", priority = -1000, trigEngine = te("w")}, {
		t"@moduledoc false"
	}),
	s({trig = "rec", descr = "(rec)", priority = -1000, trigEngine = te("w")}, {
		t"receive do", nl(),
		t"\t", i(1, "", {key = "i1"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "req", descr = "(req)", priority = -1000, trigEngine = te("w")}, {
		t"require ", i(0, "Logger", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "module_name", {key = "i0"})
	}),
	s({trig = "ali", descr = "(ali)", priority = -1000, trigEngine = te("w")}, {
		t"alias ", i(0, "module_name", {key = "i0"})
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"test \"", i(1, "test name", {key = "i1"}), t"\" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "testc", descr = "(testc)", priority = -1000, trigEngine = te("w")}, {
		t"test \"", i(1, "test_name", {key = "i1"}), t"\", ctx do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "testa", descr = "(testa)", priority = -1000, trigEngine = te("w")}, {
		t"test \"", i(1, "test_name", {key = "i1"}), t"\", %{", i(2, "arg: arg", {key = "i2"}), t"} do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "des", descr = "(des)", priority = -1000, trigEngine = te("w")}, {
		t"describe \"", i(1, "test group subject", {key = "i1"}), t"\" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "destag", descr = "(destag)", priority = -1000, trigEngine = te("w")}, {
		t"@describetag :", i(1, "describe tag", {key = "i1"})
	}),
	s({trig = "mtag", descr = "(mtag)", priority = -1000, trigEngine = te("w")}, {
		t"@moduletag :", i(1, "module tag", {key = "i1"})
	}),
	s({trig = "dt", descr = "(dt)", priority = -1000, trigEngine = te("w")}, {
		t"doctest ", i(1, "filename", {key = "i1"})
	}),
	s({trig = "tp", descr = "(tp)", priority = -1000, trigEngine = te("w")}, {
		t"@tag :pending"
	}),
	s({trig = "exunit", descr = "(exunit)", priority = -1000, trigEngine = te("w")}, {
		t"defmodule ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" do", nl(),
		t"\tuse ExUnit.Case, async: true", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "setup", descr = "(setup)", priority = -1000, trigEngine = te("w")}, {
		t"setup do", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "setupa", descr = "(setupa)", priority = -1000, trigEngine = te("w")}, {
		t"setup_all do", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "try", descr = "(try) try .. rescue .. end", priority = -1000, trigEngine = te("w")}, {
		t"try do", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"rescue", nl(),
		t"\t", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "pry", descr = "(pry)", priority = -1000, trigEngine = te("w")}, {
		t"require IEx; IEx.pry", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ppry", descr = "(ppry)", priority = -1000, trigEngine = te("w")}, {
		t"|> (fn x -> require IEx; IEx.pry; x end).()", i(0, "", {key = "i0"})
	}),
	s({trig = "qu", descr = "(qu)", priority = -1000, trigEngine = te("w")}, {
		t"quote do", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"end"
	}),
	s({trig = "beh", descr = "(beh)", priority = -1000, trigEngine = te("w")}, {
		t"@behaviour ", i(1, "Mix.Task", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"})
	}),
	s({trig = ">e", descr = "(>e) pipe to each", priority = -1000, trigEngine = te("w")}, {
		t"|> Enum.each(fn ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t" end)"
	}),
	s({trig = ">m", descr = "(>m) pipe to map", priority = -1000, trigEngine = te("w")}, {
		t"|> Enum.map(fn ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t" end)"
	}),
	s({trig = ">f", descr = "(>f) pipe to filter", priority = -1000, trigEngine = te("w")}, {
		t"|> Enum.filter(fn ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t" end)"
	}),
	s({trig = ">r", descr = "(>r) pipe to reduce", priority = -1000, trigEngine = te("w")}, {
		t"|> Enum.reduce(", i(1, "acc", {key = "i1"}), t", fn ", i(2, "", {key = "i2"}), t", ", i(3, "acc", {key = "i3"}), t" -> ", i(0, "", {key = "i0"}), t" end)"
	}),
	s({trig = ">i", descr = "(>i) pipe to inspect", priority = -1000, trigEngine = te("w")}, {
		t"|> IO.inspect()"
	}),
	s({trig = ">il", descr = "(>il) pipe to inspect with label", priority = -1000, trigEngine = te("w")}, {
		t"|> IO.inspect(label: \"", i(1, "label", {key = "i1"}), t"\")"
	}),
	s({trig = "cs", descr = "(cs)", priority = -1000, trigEngine = te("w")}, {
		t"@doc false", nl(),
		t"def child_spec(", i(1, "_opts", {key = "i1"}), t") do", nl(),
		t"\t%{", nl(),
		t"\t\tid: __MODULE__,", nl(),
		t"\t\tstart: {__MODULE__, :start_link, ", i(2, "[]", {key = "i2"}), t"},", nl(),
		t"\t\trestart: ", i(3, ":permanent", {key = "i3"}), t",", nl(),
		t"\t\tshutdown: ", i(4, "5000", {key = "i4"}), t",", nl(),
		t"\t\ttype: ", i(5, ":worker", {key = "i5"}), nl(),
		t"\t}", nl(),
		t"end"
	}),
	s({trig = "genserver", descr = "(genserver) basic genserver structure", priority = -1000, trigEngine = te("w")}, {
		t"use GenServer", nl(),
		nl(),
		t"@doc false", nl(),
		t"def start_link(init_args) do", nl(),
		t"\tGenServer.start_link(__MODULE__, init_args, name: __MODULE__)", nl(),
		t"end", nl(),
		nl(),
		t"@impl true", nl(),
		t"def init(state) do", nl(),
		t"\t{:ok, state}", nl(),
		t"end"
	}),
	s({trig = "super", descr = "(super) basic supervisor structure", priority = -1000, trigEngine = te("w")}, {
		t"use Supervisor", nl(),
		nl(),
		t"@doc false", nl(),
		t"def start_link(init_args) do", nl(),
		t"\tSupervisor.start_link(__MODULE__, init_args, name: __MODULE__)", nl(),
		t"end", nl(),
		nl(),
		t"@impl true", nl(),
		t"def init(_init_args) do", nl(),
		t"\tchildren = [", i(1, "", {key = "i1"}), t"]", nl(),
		t"\tSupervisor.init(children, strategy: :one_for_one)", nl(),
		t"end"
	}),
	s({trig = "impl", descr = "(impl)", priority = -1000, trigEngine = te("w")}, {
		t"@impl true", nl(),
		t"def ", i(1, "name", {key = "i1"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "wl", descr = "(wl) word list", priority = -1000, trigEngine = te("w")}, {
		t"~w(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "al", descr = "(al) atom list", priority = -1000, trigEngine = te("w")}, {
		t"~w(", i(0, "", {key = "i0"}), t")a"
	}),
})
