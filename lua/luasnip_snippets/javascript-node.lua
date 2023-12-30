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
	0,
	1,
	1,
	2,
	{{1, 1}, {2, 3}, {3, 4}, {4, 5}, {5, 6}},
	2,
	3,
	3,
	3,
	3,
	0,
	0,
	0,
}
ls.add_snippets("javascript-node", {
	s({trig = "#!", descr = "(#!) \"#!/usr/bin/env node\"", priority = -50, trigEngine = te("b")}, {
		t"#!/usr/bin/env node"
	}),
	s({trig = "vreq", descr = "(vreq) \"assign a CommonJS-style module to a var\"", priority = -50, trigEngine = te("")}, {
		t"var ", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "(.+\\/)*(\\w+)(-|\\b|$)(\\..+$)?", "\\u$2")}, ""), {key = "i2"}) }) end, {k"i1"}), t" = require(\'", i(1, "", {key = "i1"}), t"\');"
	}),
	s({trig = "ex", descr = "(ex) \"module.exports\"", priority = -50, trigEngine = te("")}, {
		t"module.exports = ", i(1, "", {key = "i1"}), t";"
	}),
	s({trig = "hcs", descr = "(hcs) \"http.createServer\"", priority = -50, trigEngine = te("")}, {
		t"http.createServer(", i(1, "", {key = "i1"}), t").listen(", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "ncs", descr = "(ncs) \"net.createServer\"", priority = -50, trigEngine = te("")}, {
		t"net.createServer(function(", i(1, "socket", {key = "i1"}), t"){", nl(),
		t"\t", cp(1), t".on(\'data\', function(", i(2, "data", {key = "i2"}), t"){", nl(),
		t"\t\t", i(3, "", {key = "i4"}), nl(),
		t"\t});", nl(),
		t"\t", cp(1), t".on(\'end\', function(){", nl(),
		t"\t\t", i(4, "", {key = "i5"}), nl(),
		t"\t});", nl(),
		t"}).listen(", i(5, "8124", {key = "i5"}), t");"
	}),
	s({trig = "pipe", descr = "(pipe) \"pipe\"", priority = -50, trigEngine = te("")}, {
		t"pipe(", i(1, "stream", {key = "i1"}), t")", i(2, "", {key = "i2"})
	}),
	s({trig = "eget", descr = "(eget) \"express GET\"", priority = -50, trigEngine = te("")}, {
		i(1, "app", {key = "i1"}), t".get(\'", i(2, "", {key = "i2"}), t"\', ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "epost", descr = "(epost) \"express POST\"", priority = -50, trigEngine = te("")}, {
		i(1, "app", {key = "i1"}), t".post(\'", i(2, "", {key = "i2"}), t"\', ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "eput", descr = "(eput) \"express PUT\"", priority = -50, trigEngine = te("")}, {
		i(1, "app", {key = "i1"}), t".put(\'", i(2, "", {key = "i2"}), t"\', ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "edelete", descr = "(edelete) \"express DELETE\"", priority = -50, trigEngine = te("")}, {
		i(1, "app", {key = "i1"}), t".delete(\'", i(2, "", {key = "i2"}), t"\', ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "stdout", descr = "(stdout) \"stdout\"", priority = -50, trigEngine = te("")}, {
		t"process.stdout"
	}),
	s({trig = "stdin", descr = "(stdin) \"stdin\"", priority = -50, trigEngine = te("")}, {
		t"process.stdin"
	}),
	s({trig = "stderr", descr = "(stderr) \"stderr\"", priority = -50, trigEngine = te("")}, {
		t"process.stderr"
	}),
})
