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
	{0, 1},
	{0, 1},
	{0},
	{0},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
}
ls.add_snippets("php-phpspec", {
	s({trig = "spec", descr = "(spec) \"class XYZSpec extends ObjectBehaviour\"", priority = -50, trigEngine = te("")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php-phpspec", 1}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[1]) end, ae(am[1])), t";", nl(),
		nl(),
		t"use PhpSpec\\ObjectBehavior;", nl(),
		t"use Prophecy\\Argument;", nl(),
		nl(),
		t"/**", nl(),
		t" * @author ", f(function(args, snip) return c_viml("g:snips_author") end), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php-phpspec", 1}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[1]) end, ae(am[1])), t" extends ObjectBehavior", nl(),
		t"{", nl(),
		t"\tfunction it_", i(1, "", {key = "i1"}), t"()", nl(),
		t"\t{", nl(),
		t"\t\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "it", descr = "(it) \"function it_does_something() { ... }\"", priority = -50, trigEngine = te("")}, {
		t"function it_", i(1, "", {key = "i1"}), t"()", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "let", descr = "(let) \"function let() { ... }\"", priority = -50, trigEngine = te("")}, {
		t"function let()", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "letgo", descr = "(letgo) \"function letgo() { ... }\"", priority = -50, trigEngine = te("")}, {
		t"function letgo()", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "cw", descr = "(cw) \"$this->beConstructedWith($arg)\"", priority = -50, trigEngine = te("")}, {
		t"$this->beConstructedWith(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "ct", descr = "(ct) \"$this->beConstructedThrough($methodName, [$arg])\"", priority = -50, trigEngine = te("")}, {
		t"$this->beConstructedThrough(", i(1, "\'methodName\'", {key = "i1"}), t", [", i(2, "\'$arg\'", {key = "i2"}), t"]);"
	}),
	s({trig = "sreturn", descr = "(sreturn) \"$this->XYZ()->shouldReturn(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldReturn(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "snreturn", descr = "(snreturn) \"$this->XYZ()->shouldNotReturn(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotReturn(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sbe", descr = "(sbe) \"$this->XYZ()->shouldBe(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldBe(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "snbe", descr = "(snbe) \"$this->XYZ()->shouldNotBe(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotBe(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sequal", descr = "(sequal) \"$this->XYZ()->shouldEqual(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldEqual(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "snequal", descr = "(snequal) \"$this->XYZ()->shouldNotEqual(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotEqual(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sbequalto", descr = "(sbequalto) \"$this->XYZ()->shouldBeEqualTo(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldBeEqualTo(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "snbequalto", descr = "(snbequalto) \"$this->XYZ()->shouldNotBeEqualTo(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotBeEqualTo(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sblike", descr = "(sblike) \"$this->XYZ()->shouldBeLike(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldBeLike(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "snblike", descr = "(snblike) \"$this->XYZ()->shouldNotBeLike(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotBeLike(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sthrowm", descr = "(sthrowm) \"$this->shouldThrow(\'\\Exception\')->duringXYZ($arg)\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldThrow(", i(1, "\'\\Exception\'", {key = "i1"}), t")->during", i(2, "Method", {key = "i2"}), t"(", i(3, "\'$arg\'", {key = "i3"}), t");"
	}),
	s({trig = "sthrowi", descr = "(sthrowi) \"$this->shouldThrow(\'\\Exception\')->duringInstantiation()\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldThrow(", i(1, "\'\\Exception\'", {key = "i1"}), t")->duringInstantiation();"
	}),
	s({trig = "stype", descr = "(stype) \"$this->shouldHaveType(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldHaveType(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "sntype", descr = "(sntype) \"$this->shouldNotHaveType(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldNotHaveType(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "srinstance", descr = "(srinstance) \"$this->shouldReturnAnInstanceOf(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldReturnAnInstanceOf(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "snrinstance", descr = "(snrinstance) \"$this->shouldNotReturnAnInstanceOf(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldNotReturnAnInstanceOf(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "sbinstance", descr = "(sbinstance) \"$this->shouldBeAnInstanceOf(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldBeAnInstanceOf(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "snbinstance", descr = "(snbinstance) \"$this->shouldNotBeAnInstanceOf(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldNotBeAnInstanceOf(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "simplement", descr = "(simplement) \"$this->shouldImplement(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldImplement(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "snimplement", descr = "(snimplement) \"$this->shouldNotImplement(\'Type\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldNotImplement(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "sbstate", descr = "(sbstate) \"$this->shouldBeXYZ()\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldBe", i(1, "", {key = "i1"}), t"();"
	}),
	s({trig = "snbstate", descr = "(snbstate) \"$this->shouldNotBeXYZ()\"", priority = -50, trigEngine = te("")}, {
		t"$this->shouldNotBe", i(1, "", {key = "i1"}), t"();"
	}),
	s({trig = "scount", descr = "(scount) \"$this->XYZ()->shouldHaveCount(7)\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldHaveCount(", i(2, "7", {key = "i2"}), t");"
	}),
	s({trig = "sncount", descr = "(sncount) \"$this->XYZ()->shouldNotHaveCount(7)\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotHaveCount(", i(2, "7", {key = "i2"}), t");"
	}),
	s({trig = "sbscalar", descr = "(sbscalar) \"$this->XYZ()->shouldBeString|Array|Bool()\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldBe", i(2, "String|Array|Bool", {key = "i2"}), t"();"
	}),
	s({trig = "snbscalar", descr = "(snbscalar) \"$this->XYZ()->shouldNotBeString|Array|Bool()\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotBe", i(2, "String|Array|Bool", {key = "i2"}), t"();"
	}),
	s({trig = "scontain", descr = "(scontain) \"$this->XYZ()->shouldContain(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldContain(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "sncontain", descr = "(sncontain) \"$this->XYZ()->shouldNotContain(\'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotContain(", i(2, "\'value\'", {key = "i2"}), t");"
	}),
	s({trig = "skey", descr = "(skey) \"$this->XYZ()->shouldHaveKey(\'key\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldHaveKey(", i(2, "\'key\'", {key = "i2"}), t");"
	}),
	s({trig = "snkey", descr = "(snkey) \"$this->XYZ()->shouldNotHaveKey(\'key\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotHaveKey(", i(2, "\'key\'", {key = "i2"}), t");"
	}),
	s({trig = "skeyvalue", descr = "(skeyvalue) \"$this->XYZ()->shouldHaveKeyWithValue(\'key\', \'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldHaveKeyWithValue(", i(2, "\'key\'", {key = "i2"}), t", ", i(3, "\'value\'", {key = "i3"}), t");"
	}),
	s({trig = "snkeyvalue", descr = "(snkeyvalue) \"$this->XYZ()->shouldNotHaveKeyWithValue(\'key\', \'value\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotHaveKeyWithValue(", i(2, "\'key\'", {key = "i2"}), t", ", i(3, "\'value\'", {key = "i3"}), t");"
	}),
	s({trig = "sstart", descr = "(sstart) \"$this->XYZ()->shouldStartWith(\'string\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldStartWith(", i(2, "\'string\'", {key = "i2"}), t");"
	}),
	s({trig = "snstart", descr = "(snstart) \"$this->XYZ()->shouldNotStartWith(\'string\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotStartWith(", i(2, "\'string\'", {key = "i2"}), t");"
	}),
	s({trig = "send", descr = "(send) \"$this->XYZ()->shouldEndWith(\'string\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldEndWith(", i(2, "\'string\'", {key = "i2"}), t");"
	}),
	s({trig = "snend", descr = "(snend) \"$this->XYZ()->shouldNotEndWith(\'string\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotEndWith(", i(2, "\'string\'", {key = "i2"}), t");"
	}),
	s({trig = "smatch", descr = "(smatch) \"$this->XYZ()->shouldMatch(\'/wizard/i\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldMatch(", i(2, "\'/wizard/i\'", {key = "i2"}), t");"
	}),
	s({trig = "snmatch", descr = "(snmatch) \"$this->XYZ()->shouldNotMatch(\'/wizard/i\')\"", priority = -50, trigEngine = te("")}, {
		t"$this->", i(1, "method", {key = "i1"}), t"()->shouldNotMatch(", i(2, "\'/wizard/i\'", {key = "i2"}), t");"
	}),
})
