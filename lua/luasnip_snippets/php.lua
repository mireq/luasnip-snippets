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
	{1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{},
	{0, 1, 3},
	{0, 1, 2},
	{1, 2, 3, 4, 5},
	{1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{1, 2, 3, 4, 5},
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
	{1},
	{1},
	{1, 2},
	{0},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3, 4},
	{1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6},
	{1},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4},
	{1, 2, 3, 4},
	{},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{0, 1},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1},
	{1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3, 4},
	{0, 1, 2, 3},
	{1, 2, 3, 4},
	{0, 1},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{0},
	{0},
	{1, 2},
	{},
	{1, 2},
	{1, 2},
	{1},
	{0, 1},
	{1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5, 6},
	{},
	{},
	{0, 1, 2},
	{0, 1, 2, 3},
	{1, 2},
	{},
	{},
	{1, 2},
	{1, 2},
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
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{1},
	{0, 1},
	{0},
	{0},
	{1, 2},
	{1, 2},
	{1, 2, 3, 4},
	{1},
	{1},
	{1},
	{1},
	{1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{1},
	{},
	{0},
	{0, 1, 2},
	{0, 1, 2, 3, 5, 6},
	{1, 2, 3},
	{1, 2},
}

local python_globals = {
	[[import vim

# Set g:ultisnips_php_scalar_types to 1 if you'd like to enable PHP 7's scalar types for return values
def isPHPScalarTypesEnabled():
	isEnabled = vim.eval("get(g:, 'ultisnips_php_scalar_types', 0)") == "1"
	return isEnabled or re.match(r'<\?php\s+declare\(strict_types=[01]\);', '\n'.join(vim.current.window.buffer))]]
}


ls.add_snippets("php", {
	s({trig = "<?", descr = "(<?)", priority = -1000, trigEngine = te("w")}, {
		t"<?php", nl(),
		nl(),
		d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "dst", descr = "(dst) \"declare(strict_types=1)\"", priority = -1000, trigEngine = te("w")}, {
		t"declare(strict_types=", i(1, "1", {key = "i1"}), t");"
	}),
	s({trig = "ec", descr = "(ec)", priority = -1000, trigEngine = te("w")}, {
		t"echo ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "<?e", descr = "(<?e)", priority = -1000, trigEngine = te("w")}, {
		t"<?php echo ", i(0, "", {key = "i0"}), t" ?>"
	}),
	s({trig = "<?=", descr = "(<?=)", priority = -1000, trigEngine = te("w")}, {
		t"<?=", i(0, "", {key = "i0"}), t"?>"
	}),
	s({trig = "?=", descr = "(?=)", priority = -1000, trigEngine = te("w")}, {
		t"<?= ", i(0, "", {key = "i0"}), t" ?>"
	}),
	s({trig = "?", descr = "(?)", priority = -1000, trigEngine = te("w")}, {
		t"<?php ", i(0, "", {key = "i0"}), t" ?>"
	}),
	s({trig = "?f", descr = "(?f)", priority = -1000, trigEngine = te("w")}, {
		t"<?php foreach ($", i(1, "vars", {key = "i1"}), t" as $", i(2, "$var", {key = "i2"}), t"): ?>", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<?php endforeach ?>"
	}),
	s({trig = "?i", descr = "(?i)", priority = -1000, trigEngine = te("w")}, {
		t"<?php if ($", i(1, "var", {key = "i1"}), t"): ?>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<?php endif ?>"
	}),
	s({trig = "ns", descr = "(ns) \"namespace declaration\"", priority = -50, trigEngine = te("b")}, {
		t"namespace ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 10}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[10])}, ""), {key = "i1"}) }) end), t";"
	}),
	s({trig = "c", descr = "(c)", priority = -1000, trigEngine = te("w")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "i", descr = "(i)", priority = -1000, trigEngine = te("w")}, {
		t"interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "t.", descr = "(t.)", priority = -1000, trigEngine = te("w")}, {
		t"$this->"
	}),
	s({trig = "f", descr = "(f)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "", {key = "i1"}), t"(", i(2, "", {key = "i3"}), t")", nl(),
		t"{", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "m", descr = "(m)", priority = -1000, trigEngine = te("w")}, {
		i(1, "protected", {key = "i1"}), t" function ", i(2, "foo", {key = "i2"}), t"()", nl(),
		t"{", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "sm", descr = "(sm) \"PHP Class Setter\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * Setter for ", i(1, "", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @param ", i(2, "string", {key = "i2"}), t" $", cp(1), nl(),
		t" * @return ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 16}, "snip.rv=snip.basename", python_globals, args, snip, "", am[16])}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		t"public function set", tr(1, "\\w+\\s*", "\\u$0"), t"(", d(4, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "(void|string|int|integer|double|float|object|boolear|null|mixed|number|resource)|(.*)", "(?1::$2 )")}, ""), {key = "i4"}) }) end, {k"i2"}), t"$", cp(1), t")", nl(),
		t"{", nl(),
		t"    $this->", cp(1), t" = $", cp(1), t";", nl(),
		nl(),
		t"    ", i(5, "return $this;", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "gm", descr = "(gm) \"PHP Class Getter\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * Getter for ", i(1, "", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @return ", i(2, "string", {key = "i2"}), nl(),
		t" */", nl(),
		t"public function get", tr(1, "\\w+\\s*", "\\u$0"), t"()", f(function(args, snip) return c_py({"php", 17}, "snip.rv = \': \'+t[2] if isPHPScalarTypesEnabled() else \'\'", python_globals, args, snip, "", am[17]) end, ae(am[17])), nl(),
		t"{", nl(),
		t"    return $this->", cp(1), t";", nl(),
		t"}"
	}),
	s({trig = "$s", descr = "($s)", priority = -1000, trigEngine = te("w")}, {
		i(1, "$foo", {key = "i1"}), t"->set", i(2, "Bar", {key = "i2"}), t"(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "$g", descr = "($g)", priority = -1000, trigEngine = te("w")}, {
		i(1, "$foo", {key = "i1"}), t"->get", i(0, "Bar", {key = "i0"}), t"();"
	}),
	s({trig = "=?:", descr = "(=?:)", priority = -1000, trigEngine = te("w")}, {
		t"$", i(1, "foo", {key = "i1"}), t" = ", i(2, "true", {key = "i2"}), t" ? ", i(3, "a", {key = "i3"}), t" : ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "?:", descr = "(?:)", priority = -1000, trigEngine = te("w")}, {
		i(1, "true", {key = "i1"}), t" ? ", i(2, "a", {key = "i2"}), t" : ", i(0, "", {key = "i0"})
	}),
	s({trig = "t", descr = "(t) \"t\"", priority = 0, trigEngine = te("")}, {
		t"$", i(1, "retVal", {key = "i1"}), t" = (", i(2, "condition", {key = "i2"}), t") ? ", i(3, "a", {key = "i3"}), t" : ", i(4, "b", {key = "i4"}), t";", i(5, "", {key = "i5"})
	}),
	s({trig = "C", descr = "(C)", priority = -1000, trigEngine = te("w")}, {
		t"$_COOKIE[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "E", descr = "(E)", priority = -1000, trigEngine = te("w")}, {
		t"$_ENV[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "F", descr = "(F)", priority = -1000, trigEngine = te("w")}, {
		t"$_FILES[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "G", descr = "(G) \"_GET array\"", priority = -1000, trigEngine = te("w")}, {
		t"$_GET[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "P", descr = "(P) \"_POST array\"", priority = -1000, trigEngine = te("w")}, {
		t"$_POST[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "R", descr = "(R)", priority = -1000, trigEngine = te("w")}, {
		t"$_REQUEST[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "S", descr = "(S)", priority = -1000, trigEngine = te("w")}, {
		t"$_SERVER[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "SS", descr = "(SS)", priority = -1000, trigEngine = te("w")}, {
		t"$_SESSION[\'", i(1, "variable", {key = "i1"}), t"\']"
	}),
	s({trig = "get", descr = "(get) \"get\"", priority = 0, trigEngine = te("")}, {
		t"$_GET[\'", i(1, "", {key = "i1"}), t"\']", i(2, "", {key = "i2"})
	}),
	s({trig = "post", descr = "(post) \"post\"", priority = 0, trigEngine = te("")}, {
		t"$_POST[\'", i(1, "", {key = "i1"}), t"\']", i(2, "", {key = "i2"})
	}),
	s({trig = "session", descr = "(session) \"session\"", priority = 0, trigEngine = te("")}, {
		t"$_SESSION[\'", i(1, "", {key = "i1"}), t"\']", i(2, "", {key = "i2"})
	}),
	s({trig = "inc", descr = "(inc) \"inc\"", priority = 0, trigEngine = te("")}, {
		t"include \'", i(1, "file", {key = "i1"}), t"\';", i(2, "", {key = "i2"})
	}),
	s({trig = "inc1", descr = "(inc1)", priority = -1000, trigEngine = te("w")}, {
		t"include_once \'", i(1, "file", {key = "i1"}), t"\';"
	}),
	s({trig = "req", descr = "(req)", priority = -1000, trigEngine = te("w")}, {
		t"require \'", i(1, "file", {key = "i1"}), t"\';"
	}),
	s({trig = "req1", descr = "(req1) \"req1\"", priority = 0, trigEngine = te("")}, {
		t"require_once \'", i(1, "file", {key = "i1"}), t"\';", i(2, "", {key = "i2"})
	}),
	s({trig = "/*", descr = "(/*) \"doxygen comment\"", priority = 0, trigEngine = te("")}, {
		t"/**", nl(),
		t" * ", i(0, "", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "doc_cp", descr = "(doc_cp)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "undocumented class", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @package ", i(2, "default", {key = "i2"}), nl(),
		t" * @subpackage ", i(3, "default", {key = "i3"}), nl(),
		t" * @author ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i4"}) }) end), nl(),
		t" */"
	}),
	s({trig = "doc_vp", descr = "(doc_vp)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "undocumented class variable", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @var ", i(2, "string", {key = "i2"}), nl(),
		t" */"
	}),
	s({trig = "doc_v", descr = "(doc_v)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented class variable", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @var ", i(4, "string", {key = "i4"}), nl(),
		t" */", nl(),
		i(1, "var", {key = "i1"}), t" $", i(2, "", {key = "i2"}), t";", nl()
	}),
	s({trig = "att", descr = "(att)", priority = -1000, trigEngine = te("w")}, {
		t"/** @var ", i(3, "string", {key = "i3"}), t" */", nl(),
		i(1, "public", {key = "i1"}), t" $", i(2, "", {key = "i2"}), t";", nl()
	}),
	s({trig = "doc_c", descr = "(doc_c)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented class", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @package ", i(4, "default", {key = "i4"}), nl(),
		t" * @subpackage ", i(5, "default", {key = "i5"}), nl(),
		t" * @author ", d(6, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i6"}) }) end), nl(),
		t" */", nl(),
		i(1, "", {key = "i1"}), t"class ", i(2, "", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", d(7, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} // END ", cp(1), t"class ", cp(2)
	}),
	s({trig = "doc_dp", descr = "(doc_dp)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "undocumented constant", {key = "i1"}), nl(),
		t" */"
	}),
	s({trig = "doc_d", descr = "(doc_d)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented constant", {key = "i3"}), nl(),
		t" */", nl(),
		t"define(", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "doc_fp", descr = "(doc_fp)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "undocumented function", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @return ", i(2, "void", {key = "i2"}), nl(),
		t" * @author ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" */"
	}),
	s({trig = "doc_s", descr = "(doc_s)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(4, "undocumented function", {key = "i4"}), nl(),
		t" *", nl(),
		t" * @return ", i(5, "void", {key = "i5"}), nl(),
		t" * @author ", d(6, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i6"}) }) end), nl(),
		t" */", nl(),
		i(1, "", {key = "i1"}), t"function ", i(2, "", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "doc_f", descr = "(doc_f) \"doc_f\"", priority = 0, trigEngine = te("")}, {
		t"/**", nl(),
		t" * ", cp(2), nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" * @author ", d(5, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i5"}) }) end), nl(),
		t" **/", nl(),
		i(1, "public ", {key = "i1"}), t"function ", i(2, "someFunc", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t")", nl(),
		t"{", i(6, "", {key = "i6"}), nl(),
		t"}"
	}),
	s({trig = "doc_h", descr = "(doc_h)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @author ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i2"}) }) end), nl(),
		t" * @version ", i(3, "$Id$", {key = "i3"}), nl(),
		t" * @copyright ", d(4, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i4"}), t", ", f(function(args, snip) return c_viml("strftime(\'%d %B, %Y\')") end, {}), nl(),
		t" * @package ", i(0, "default", {key = "i0"}), nl(),
		t" */"
	}),
	s({trig = "doc_i", descr = "(doc_i) \"doc_i\"", priority = 0, trigEngine = te("")}, {
		t"/**", nl(),
		t" * ", cp(1), nl(),
		t" * @package ", i(2, "default", {key = "i2"}), nl(),
		t" * @author ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" **/", nl(),
		t"interface ", i(1, "someClass", {key = "i1"}), nl(),
		t"{", i(4, "", {key = "i4"}), nl(),
		t"} // END interface ", cp(1), t"\""
	}),
	s({trig = "inheritdoc", descr = "(inheritdoc) \"@inheritdoc docblock\"", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * {@inheritdoc}", nl(),
		t" */"
	}),
	s({trig = "interface", descr = "(interface) \"Interface declaration template\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 52}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[52])}, ""), {key = "i1"}) }) end), t";", nl(),
		nl(),
		t"/**", nl(),
		t" * Interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 52}, "snip.rv=snip.basename", python_globals, args, snip, "", am[52])}, " "), {key = "i1"}) }) end), nl(),
		t" * @author ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i2"}) }) end), nl(),
		t" */", nl(),
		t"interface ", cp(1), nl(),
		t"{", nl(),
		t"\tpublic function ", i(3, "someFunction", {key = "i3"}), t"();", i(4, "", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "trait", descr = "(trait) \"Trait declaration template\"", priority = -50, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 53}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[53])}, ""), {key = "i1"}) }) end), t";", nl(),
		nl(),
		t"/**", nl(),
		t" * Trait ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 53}, "snip.rv=snip.basename", python_globals, args, snip, "", am[53])}, " "), {key = "i1"}) }) end), nl(),
		t" * @author ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i2"}) }) end), nl(),
		t" */", nl(),
		t"trait ", cp(1), nl(),
		t"{", nl(),
		t"}"
	}),
	s({trig = "class", descr = "(class) \"class\"", priority = 0, trigEngine = te("")}, {
		t"/**", nl(),
		t" * ", i(1, "", {key = "i1"}), nl(),
		t" */", nl(),
		t"class ", i(2, "ClassName", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"\tfunction ", i(4, "__construct", {key = "i4"}), t"(", i(5, "argument", {key = "i5"}), t")", nl(),
		t"\t{", nl(),
		t"\t\t", i(6, "// code...", {key = "i6"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "nc", descr = "(nc)", priority = -1000, trigEngine = te("w")}, {
		t"namespace ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(substitute(expand(\"%:h\"), \'\\v^\\w+\\/(\\u)\', \'\\1\', \'\'), \'\\/\', \'\\\\\\\', \'g\')")}, ""), {key = "i1"}) }) end), t";", nl(),
		nl(),
		i(2, "abstract ", {key = "i2"}), t"class ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i3"}) }) end), nl(),
		t"{", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "def", descr = "(def) \"def\"", priority = 0, trigEngine = te("")}, {
		t"define(\'", i(1, "", {key = "i1"}), t"\'", i(2, "", {key = "i2"}), t");", i(3, "", {key = "i3"})
	}),
	s({trig = "def?", descr = "(def?)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t"defined(\'", i(2, "", {key = "i2"}), t"\')"
	}),
	s({trig = "wh", descr = "(wh) \"while (condition) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "do", descr = "(do) \"do\"", priority = 0, trigEngine = te("")}, {
		t"do {", nl(),
		t"\t", i(2, "// code... ", {key = "i2"}), nl(),
		t"} while (", i(1, "/* condition */", {key = "i1"}), t");\""
	}),
	s({trig = "if", descr = "(if) \"if\"", priority = 0, trigEngine = te("")}, {
		t"if (", i(1, "/* condition */", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "// code...", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ifn", descr = "(ifn) \"if (!condition) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"if (!", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ifil", descr = "(ifil) \"<?php if (condition): ?> ... <?php endif; ?>\"", priority = -1000, trigEngine = te("w")}, {
		t"<?php if (", i(1, "", {key = "i1"}), t"): ?>", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<?php endif; ?>"
	}),
	s({trig = "ife", descr = "(ife) \"if (cond) { ... } else { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "ifeil", descr = "(ifeil) \"<?php if (condition): ?> ... <?php else: ?> ... <?php endif; ?>\"", priority = -1000, trigEngine = te("w")}, {
		t"<?php if (", i(1, "", {key = "i1"}), t"): ?>", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<?php else: ?>", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"<?php endif; ?>"
	}),
	s({trig = "el", descr = "(el) \"else { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "eif", descr = "(eif) \"elseif(condition) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"elseif (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "switch", descr = "(switch) \"switch($var) { case \'xyz\': ... default: .... }\"", priority = -1000, trigEngine = te("w")}, {
		t"switch ($", i(1, "variable", {key = "i1"}), t") {", nl(),
		t"\tcase \'", i(2, "value", {key = "i2"}), t"\':", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t\tbreak;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\tbreak;", nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) \"case \'value\': ... break\"", priority = -1000, trigEngine = te("w")}, {
		t"case \'", i(1, "value", {key = "i1"}), t"\':", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"\tbreak;"
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = 0, trigEngine = te("")}, {
		t"for ($", i(2, "i", {key = "i2"}), t" = 0; $", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; $", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "// code...", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "foreach", descr = "(foreach) \"foreach ($var as $value) { .. }\"", priority = -1000, trigEngine = te("w")}, {
		t"foreach ($", i(1, "variable", {key = "i1"}), t" as $", i(2, "value", {key = "i2"}), t") {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "foreachil", descr = "(foreachil) \"<?php foreach ($var as $value): ?>  ... <?php endforeach; ?>\"", priority = -1000, trigEngine = te("w")}, {
		t"<?php foreach ($", i(1, "variable", {key = "i1"}), t" as $", i(2, "value", {key = "i2"}), t"): ?>", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"<?php endforeach; ?>"
	}),
	s({trig = "foreachk", descr = "(foreachk) \"foreachk\"", priority = 0, trigEngine = te("")}, {
		t"foreach ($", i(1, "variable", {key = "i1"}), t" as $", i(2, "key", {key = "i2"}), t" => $", i(3, "value", {key = "i3"}), t"){", nl(),
		t"\t", i(4, "// code...", {key = "i4"}), nl(),
		t"}"
	}),
	s({trig = "foreachkil", descr = "(foreachkil) \"<?php foreach ($var as $key => $value): ?>  ... <?php endforeach; ?>\"", priority = -1000, trigEngine = te("w")}, {
		t"<?php foreach ($", i(1, "variable", {key = "i1"}), t" as $", i(2, "key", {key = "i2"}), t" => $", i(3, "value", {key = "i3"}), t"): ?>", nl(),
		t"\t", i(0, "<!-- html... -->", {key = "i0"}), nl(),
		t"<?php endforeach; ?>"
	}),
	s({trig = "array", descr = "(array) \"array\"", priority = 0, trigEngine = te("")}, {
		t"$", i(1, "arrayName", {key = "i1"}), t" = array(\'", i(2, "", {key = "i2"}), t"\' => ", i(3, "", {key = "i3"}), t");", i(4, "", {key = "i4"})
	}),
	s({trig = "try", descr = "(try) \"try { ... } catch (Exception $e) { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch (", i(1, "Exception", {key = "i1"}), t" $e) {", nl(),
		t"}"
	}),
	s({trig = "lambda", descr = "(lambda)", priority = -1000, trigEngine = te("w")}, {
		i(1, "static ", {key = "i1"}), t"function (", i(2, "args", {key = "i2"}), t") use (", i(3, "&$x, $y /*put vars in scope (closure) */", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"};"
	}),
	s({trig = "pd", descr = "(pd)", priority = -1000, trigEngine = te("w")}, {
		t"echo \'<pre>\'; var_dump(", i(0, "", {key = "i0"}), t"); echo \'</pre>\';"
	}),
	s({trig = "pdd", descr = "(pdd)", priority = -1000, trigEngine = te("w")}, {
		t"echo \'<pre>\'; var_dump(", i(1, "", {key = "i1"}), t"); echo \'</pre>\'; die(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "vd", descr = "(vd)", priority = -1000, trigEngine = te("w")}, {
		t"var_dump(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "vdd", descr = "(vdd)", priority = -1000, trigEngine = te("w")}, {
		t"var_dump(", i(1, "", {key = "i1"}), t"); die(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"print_r(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "prs", descr = "(prs)", priority = -1000, trigEngine = te("w")}, {
		t"print_r(", i(0, "", {key = "i0"}), t", 1);"
	}),
	s({trig = "vdf", descr = "(vdf)", priority = -1000, trigEngine = te("w")}, {
		t"error_log(print_r($", i(1, "foo", {key = "i1"}), t", true), 3, \'", i(2, "/tmp/debug.log", {key = "i2"}), t"\');"
	}),
	s({trig = "http_redirect", descr = "(http_redirect)", priority = -1000, trigEngine = te("w")}, {
		t"header (\"HTTP/1.1 301 Moved Permanently\");", nl(),
		t"header (\"Location: \".URL);", nl(),
		t"exit();"
	}),
	s({trig = "log", descr = "(log) \"log\"", priority = 0, trigEngine = te("")}, {
		t"error_log(var_export(", i(1, "", {key = "i1"}), t", true));", i(2, "", {key = "i2"})
	}),
	s({trig = "var", descr = "(var) \"var\"", priority = 0, trigEngine = te("")}, {
		t"var_export(", i(1, "", {key = "i1"}), t");", i(2, "", {key = "i2"})
	}),
	s({trig = "ve", descr = "(ve) \"Dumb debug helper in HTML\"", priority = -1000, trigEngine = te("w")}, {
		t"echo \'<pre>\' . var_export(", i(1, "", {key = "i1"}), t", 1) . \'</pre>\';"
	}),
	s({trig = "pc", descr = "(pc) \"Dumb debug helper in cli\"", priority = -1000, trigEngine = te("w")}, {
		t"var_export(", i(1, "", {key = "i1"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "gs", descr = "(gs) \"PHP Class Getter Setter\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * Getter for ", i(1, "", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @return ", i(2, "string", {key = "i2"}), nl(),
		t" */", nl(),
		t"public function get", tr(1, "\\w+\\s*", "\\u$0"), t"()", f(function(args, snip) return c_py({"php", 89}, "snip.rv = \': \'+t[2] if isPHPScalarTypesEnabled() else \'\'", python_globals, args, snip, "", am[89]) end, ae(am[89])), nl(),
		t"{", nl(),
		t"    return $this->", cp(1), t";", nl(),
		t"}", nl(),
		nl(),
		t"/**", nl(),
		t" * Setter for ", cp(1), nl(),
		t" *", nl(),
		t" * @param ", cp(2), t" $", cp(1), nl(),
		t" * @return ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_py({"php", 89}, "snip.rv=snip.basename", python_globals, args, snip, "", am[89])}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		t"public function set", tr(1, "\\w+\\s*", "\\u$0"), t"(", d(4, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "(void|string|int|integer|double|float|object|boolear|null|mixed|number|resource)|(.*)", "(?1::$2 )")}, ""), {key = "i4"}) }) end, {k"i2"}), t"$", cp(1), t")", nl(),
		t"{", nl(),
		t"    $this->", cp(1), t" = $", cp(1), t";", nl(),
		nl(),
		t"    ", i(5, "return $this;", {key = "i5"}), nl(),
		t"}"
	}),
	s({trig = "ags", descr = "(ags)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" * ", i(1, "description", {key = "i1"}), nl(),
		t" *", nl(),
		t" * @", i(0, "", {key = "i0"}), nl(),
		t" */", nl(),
		i(2, "protected", {key = "i2"}), t" $", i(3, "foo", {key = "i3"}), t";", nl(),
		nl(),
		t"public function get", d(4, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i4"}), t"()", nl(),
		t"{", nl(),
		t"\treturn $this->", cp(3), t";", nl(),
		t"}", nl(),
		nl(),
		t"public function set", cp(4), t"(", d(5, function(args) return sn(nil, {cp(4), t" "}) end, {}, {key = "i5"}), t"$", d(6, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i6"}), t")", nl(),
		t"{", nl(),
		t"\t$this->", cp(3), t" = $", cp(6), t";", nl(),
		t"\treturn $this;", nl(),
		t"}"
	}),
	s({trig = "rett", descr = "(rett)", priority = -1000, trigEngine = te("w")}, {
		t"return true;"
	}),
	s({trig = "retf", descr = "(retf)", priority = -1000, trigEngine = te("w")}, {
		t"return false;"
	}),
	s({trig = "am", descr = "(am)", priority = -1000, trigEngine = te("w")}, {
		t"$", i(1, "foo", {key = "i1"}), t" = array_map(function($", i(2, "v", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\treturn $", cp(2), t";", nl(),
		t"}, $", cp(1), t");"
	}),
	s({trig = "aw", descr = "(aw)", priority = -1000, trigEngine = te("w")}, {
		t"array_walk($", i(1, "foo", {key = "i1"}), t", function(&$", i(2, "v", {key = "i2"}), t", $", i(3, "k", {key = "i3"}), t") {", nl(),
		t"\t$", cp(2), t" = ", i(0, "", {key = "i0"}), t";", nl(),
		t"});"
	}),
	s({trig = "static_var", descr = "(static_var)", priority = -1000, trigEngine = te("w")}, {
		t"static $", i(1, "", {key = "i1"}), t" = null;", nl(),
		t"if (is_null($", cp(1), t")){", nl(),
		t"\t$", cp(1), t" = ", i(2, "", {key = "i2"}), t";", nl(),
		t"}"
	}),
	s({trig = "CSVWriter", descr = "(CSVWriter)", priority = -1000, trigEngine = te("w")}, {
		t"<?php", nl(),
		nl(),
		t"class CSVWriter {", nl(),
		t"\tpublic function __construct($file_or_handle, $sep = \"\\t\", $quot = \'\"\'){", nl(),
		t"\t\t$args = func_get_args();", nl(),
		t"\t\t$mode = isset($opts[\'mode\']) ? $opts[\'mode\'] : \'w\';", nl(),
		nl(),
		t"\t\t$this->f =", nl(),
		t"\t\t\tis_string($file_or_handle)", nl(),
		t"\t\t\t? fopen($file_or_handle, $mode)", nl(),
		t"\t\t\t: $file_or_handle;", nl(),
		nl(),
		t"\t\t$this->fputcsv_args = [$this->f, null, $sep, $quot];", nl(),
		nl(),
		t"\t\tif (!$this->f) throw new Exception(\'bad file descriptor\');", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function write($row){", nl(),
		t"\t\t$this->fputcsv_args[1] =& $row;", nl(),
		t"\t\tcall_user_func_array(\'fputcsv\', $this->fputcsv_args);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function close(){", nl(),
		t"\t\tif (!is_null($this->f))", nl(),
		t"\t\t\tfclose($this->f);", nl(),
		t"\t\t$this->f = null;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function __destruct(){", nl(),
		t"\t\t$this->close();", nl(),
		t"\t}", nl(),
		nl(),
		t"}"
	}),
	s({trig = "CSVIterator", descr = "(CSVIterator)", priority = -1000, trigEngine = te("w")}, {
		nl(),
		t"// http://snipplr.com/view.php?codeview&id=1986 // modified", nl(),
		t"class CSVIterator implements Iterator", nl(),
		t"{\t", nl(),
		t"\tprivate $f;", nl(),
		t"\tprivate $curr;", nl(),
		t"\tprivate $rowCounter;", nl(),
		nl(),
		t"\t /* opts keys:", nl(),
		t"\t\t* row_size", nl(),
		t"\t\t* escape", nl(),
		t"\t\t* enclosure", nl(),
		t"\t\t* delimiter", nl(),
		t"\t\t*/", nl(),
		t"\tpublic function __construct( $file_or_handle, $opts = [4096, \',\'] )", nl(),
		t"\t{", nl(),
		t"\t\t$d = function($n) use(&$opts){ return isset($opts[$n]) ? $opts[$n] : false; };", nl(),
		nl(),
		t"\t\t$this->combine = $d(\'combine\');", nl(),
		t"\t\t$this->headers = $d(\'headers\');", nl(),
		t"\t\t$this->headerCheckFunction = $d(\'header_check_function\');", nl(),
		nl(),
		t"\t\t$this->f =", nl(),
		t"\t\t\tis_string($file_or_handle)", nl(),
		t"\t\t\t? fopen( $file_or_handle, \'r\' )", nl(),
		t"\t\t\t: $file_or_handle;", nl(),
		t"\t\tif (!$this->f) throw new Exception(\'bad file descriptor\');", nl(),
		t"\t\t$this->fgetcsv_args = [", nl(),
		t"\t\t\t\t$this->f,", nl(),
		t"\t\t\t\tisset($opts[\'row_size\']) ? $opts[\'row_size\'] : 4096,", nl(),
		t"\t\t\t\tisset($opts[\'delimiter\']) ? $opts[\'delimiter\'] : \',\',", nl(),
		t"\t\t\t\tisset($opts[\'enclosure\']) ? $opts[\'enclosure\'] : \'\"\',", nl(),
		t"\t\t\t\tisset($opts[\'escape\']) ? $opts[\'escape\'] : \'\\\',", nl(),
		t"\t\t];", nl(),
		t"\t\t$this->start();", nl(),
		t"\t}", nl(),
		nl(),
		t"\tprotected function readRow(){", nl(),
		t"\t\t$this->curr = call_user_func_array(\'fgetcsv\', $this->fgetcsv_args );", nl(),
		t"\t\t$this->rowCounter++;", nl(),
		t"\t\tif ($this->rowCounter == 1){", nl(),
		t"\t\t\t$this->processHeader();", nl(),
		t"\t\t} elseif ($this->curr) {", nl(),
		t"\t\t\t$this->processRow();", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function processHeader(){", nl(),
		t"\t\tif ($this->headers || $this->combine){", nl(),
		t"\t\t\t$this->header = $this->curr;", nl(),
		t"\t\t\tif ($this->headerCheckFunction){", nl(),
		t"\t\t\t\t$f = $this->headerCheckFunction;", nl(),
		t"\t\t\t\t$f($this->header);", nl(),
		t"\t\t\t}", nl(),
		t"\t\t\t$this->readRow();", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function processRow(){", nl(),
		t"\t\tif ($this->combine)", nl(),
		t"\t\t\t$this->curr = array_combine($this->header, $this->curr);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function start(){", nl(),
		t"\t\t$this->rowCounter = 0;", nl(),
		t"\t\trewind( $this->f );", nl(),
		t"\t\t$this->readRow();", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function rewind()", nl(),
		t"\t{", nl(),
		t"\t\t$this->start();", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function current()", nl(),
		t"\t{", nl(),
		t"\t\t$curr = $this->curr;", nl(),
		t"\t\t$this->readRow();", nl(),
		t"\t\treturn $curr;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function key()", nl(),
		t"\t{", nl(),
		t"\t\treturn $this->rowCounter;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function next()", nl(),
		t"\t{", nl(),
		t"\t\treturn $this->curr;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function valid(){", nl(),
		t"\t\tif( !$this->next() )", nl(),
		t"\t\t{", nl(),
		t"\t\t\tfclose( $this->f );", nl(),
		t"\t\t\treturn FALSE;", nl(),
		t"\t\t}", nl(),
		t"\t\treturn TRUE;", nl(),
		t"\t}", nl(),
		nl(),
		t"} // end class"
	}),
	s({trig = "ase", descr = "(ase) \"$this->assertEquals($a, $b)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertEquals(", i(1, "$expected", {key = "i1"}), t", ", i(2, "$actual", {key = "i2"}), t");"
	}),
	s({trig = "asne", descr = "(asne) \"$this->assertNotEquals($a, $b)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertNotEquals(", i(1, "$expected", {key = "i1"}), t", ", i(2, "$actual", {key = "i2"}), t");"
	}),
	s({trig = "asf", descr = "(asf) \"$this->assertFalse($a)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertFalse(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "ast", descr = "(ast) \"$this->assertTrue($a)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertTrue(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "asfex", descr = "(asfex) \"$this->assertFileExists(\'path/to/file\')\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertFileExists(", i(1, "\'path/to/file\'", {key = "i1"}), t");"
	}),
	s({trig = "asfnex", descr = "(asfnex) \"$this->assertFileNotExists(\'path/to/file\')\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertFileNotExists(", i(1, "\'path/to/file\'", {key = "i1"}), t");"
	}),
	s({trig = "ascon", descr = "(ascon) \"$this->assertContains($needle, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertContains(", i(1, "$needle", {key = "i1"}), t", ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "asncon", descr = "(asncon) \"$this->assertNotContains($needle, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertNotContains(", i(1, "$needle", {key = "i1"}), t", ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "ascono", descr = "(ascono) \"$this->assertContainsOnly($needle, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertContainsOnly(", i(1, "$needle", {key = "i1"}), t", ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "asconoi", descr = "(asconoi) \"$this->assertContainsOnlyInstancesOf(Example::class, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertContainsOnlyInstancesOf(", i(1, "Example", {key = "i1"}), t"::class, ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "ashk", descr = "(ashk) \"$this->assertArrayHasKey($key, $array)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertArrayHasKey(", i(1, "$key", {key = "i1"}), t", ", i(2, "$array", {key = "i2"}), t");"
	}),
	s({trig = "asnhk", descr = "(asnhk) \"$this->assertArrayNotHasKey($key, $array)\"", priority = -1000, trigEngine = te("w")}, {
		t"this->assertArrayNotHasKey(", i(1, "$key", {key = "i1"}), t", ", i(2, "$array", {key = "i2"}), t");"
	}),
	s({trig = "ascha", descr = "(ascha) \"$this->assertClassHasAttribute($name, Example::class)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertClassHasAttribute(", i(1, "$attributeName", {key = "i1"}), t", ", i(2, "Example", {key = "i2"}), t"::class);"
	}),
	s({trig = "asi", descr = "(asi) \"$this->assertInstanceOf(Example::class, $actual)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertInstanceOf(", i(1, "Example", {key = "i1"}), t"::class, ", i(2, "$actual", {key = "i2"}), t");"
	}),
	s({trig = "asit", descr = "(asit) \"$this->assertInternalType(\'string\', $actual)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertInternalType(", i(1, "\'string\'", {key = "i1"}), t", ", i(2, "actual", {key = "i2"}), t");"
	}),
	s({trig = "asco", descr = "(asco) \"$this->assertCount($count, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertCount(", i(1, "$expectedCount", {key = "i1"}), t", ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "asnco", descr = "(asnco) \"$this->assertNotCount($count, $haystack)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertNotCount(", i(1, "$count", {key = "i1"}), t", ", i(2, "$haystack", {key = "i2"}), t");"
	}),
	s({trig = "assub", descr = "(assub) \"$this->assertArraySubset($subset, $array)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertArraySubset(", i(1, "$subset", {key = "i1"}), t", ", i(2, "$array", {key = "i2"}), t");"
	}),
	s({trig = "asnu", descr = "(asnu) \"$this->assertNull($a)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertNull(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "asnnu", descr = "(asnnu) \"$this->assertNotNull($a)\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->assertNotNull(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "test", descr = "(test) \"public function testXYZ() { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"public function test", i(1, "", {key = "i1"}), t"()", nl(),
		t"{", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "setup", descr = "(setup) \"protected function setUp() { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"protected function setUp()", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "teardown", descr = "(teardown) \"protected function tearDown() { ... }\"", priority = -1000, trigEngine = te("w")}, {
		t"protected function tearDown()", nl(),
		t"{", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "proph", descr = "(proph) \"$observer = $this->prophesize(SomeClass::class);\"", priority = -1000, trigEngine = te("w")}, {
		t"$", i(1, "observer", {key = "i1"}), t" = $this->prophesize(", i(2, "SomeClass", {key = "i2"}), t"::class);"
	}),
	s({trig = "mock", descr = "(mock) \"$mock = $this->createMock(SomeClass::class);\"", priority = -1000, trigEngine = te("w")}, {
		t"$", i(1, "mock", {key = "i1"}), t" = $this->createMock(", i(2, "SomeClass", {key = "i2"}), t"::class);"
	}),
	s({trig = "exp", descr = "(exp) \"phpunit expects\"", priority = -1000, trigEngine = te("w")}, {
		t"expects($this->", i(1, "once", {key = "i1"}), t"())", nl(),
		t"\t->method(\'", i(2, "", {key = "i2"}), t"\')", nl(),
		t"\t->with(", i(3, "", {key = "i3"}), t")", nl(),
		t"\t->willReturn(", i(4, "", {key = "i4"}), t");"
	}),
	s({trig = "testcmt", descr = "(testcmt) \"phpunit comment with group\"", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t"* @group ", i(1, "", {key = "i1"}), nl(),
		t"*/"
	}),
	s({trig = "fail", descr = "(fail) \"$this->fail()\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->fail(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "marki", descr = "(marki) \"$this->markTestIncomplete()\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->markTestIncomplete(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "marks", descr = "(marks) \"$this->markTestSkipped()\"", priority = -1000, trigEngine = te("w")}, {
		t"$this->markTestSkipped(", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "te", descr = "(te) \"throw new Exception()\"", priority = -1000, trigEngine = te("w")}, {
		t"throw new ", i(1, "Exception", {key = "i1"}), t"(\"", i(2, "Error Processing Request", {key = "i2"}), t"\");"
	}),
	s({trig = "fpc", descr = "(fpc) \"file_put_contents\" b", priority = -1000, trigEngine = te("w")}, {
		t"file_put_contents(", i(1, "file", {key = "i1"}), t", ", i(2, "content", {key = "i2"}), i(3, ", FILE_APPEND", {key = "i3"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "sr", descr = "(sr) \"str_replace\"", priority = -1000, trigEngine = te("w")}, {
		t"str_replace(", i(1, "search", {key = "i1"}), t", ", i(2, "replace", {key = "i2"}), t", ", i(3, "subject", {key = "i3"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "ia", descr = "(ia) \"in_array\"", priority = -1000, trigEngine = te("w")}, {
		t"in_array(", i(1, "needle", {key = "i1"}), t", ", i(2, "haystack", {key = "i2"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "is", descr = "(is) \"isset\"", priority = -1000, trigEngine = te("w")}, {
		t"isset(", i(1, "var", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "isa", descr = "(isa) \"isset array\"", priority = -1000, trigEngine = te("w")}, {
		t"isset($", i(1, "array", {key = "i1"}), t"[", i(2, "key", {key = "i2"}), t"])", i(0, "", {key = "i0"})
	}),
	s({trig = "in", descr = "(in) \"is_null\"", priority = -1000, trigEngine = te("w")}, {
		t"is_null($", i(1, "var", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "fe", descr = "(fe) \"file_exists\"", priority = -1000, trigEngine = te("w")}, {
		t"file_exists(", i(1, "file", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "id", descr = "(id) \"is_dir\"", priority = -1000, trigEngine = te("w")}, {
		t"is_dir(", i(1, "path", {key = "i1"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "pub", descr = "(pub) \"Public function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"public function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pro", descr = "(pro) \"Protected function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"protected function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pri", descr = "(pri) \"Private function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"private function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pubs", descr = "(pubs) \"Public static function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"public static function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pros", descr = "(pros) \"Protected static function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"protected static function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pris", descr = "(pris) \"Private static function\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * ", i(3, "undocumented function", {key = "i3"}), nl(),
		t" *", nl(),
		t" * @return ", i(4, "void", {key = "i4"}), nl(),
		t" */", nl(),
		t"private static function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(5, "return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "fu", descr = "(fu) \"Function snip\"", priority = -50, trigEngine = te("b")}, {
		t"function ", i(1, "name", {key = "i1"}), t"(", i(2, "$param", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(3, "return null;", {key = "i3"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "new", descr = "(new) \"New class instance\"", priority = -50, trigEngine = te("b")}, {
		t"$", i(1, "variableName", {key = "i1"}), t" = new ", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "\\w+\\s*", "\\u$0")}, ""), {key = "i2"}) }) end, {k"i1"}), t"(", i(3, "", {key = "i3"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "construct", descr = "(construct) \"__construct()\"", priority = -50, trigEngine = te("b")}, {
		t"/**", nl(),
		t" * @param", i(2, "", {key = "i2"}), t" ", tr(1, ", ", "\\n     * \\@param "), nl(),
		t" */", nl(),
		t"public function __construct(", i(1, "$dependencies", {key = "i1"}), t")", nl(),
		t"{", tr(1, "\\w* ?\\$(\\w+)(, )*", "\\n        $this->$1 = $$1;"), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "testcase", descr = "(testcase) \"class XYZTest extends \\PHPUnit_Framework_TestCase { ... }\"", priority = -50, trigEngine = te("")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php", 146}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[146]) end, ae(am[146])), t";", nl(),
		nl(),
		t"/**", nl(),
		t" * @author ", f(function(args, snip) return c_viml("g:snips_author") end, {}), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php", 146}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[146]) end, ae(am[146])), t" extends \\PHPUnit_Framework_TestCase", nl(),
		t"{", nl(),
		t"\tpublic function test", i(1, "", {key = "i1"}), t"()", nl(),
		t"\t{", nl(),
		t"\t\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "testcase6", descr = "(testcase6) \"class XYZTest extends TestCase { ... }\"", priority = -50, trigEngine = te("")}, {
		t"<?php", nl(),
		nl(),
		t"namespace ", f(function(args, snip) return c_py({"php", 147}, "\nrelpath = os.path.relpath(path)\nm = re.search(r\'[A-Z].+(?=/)\', relpath)\nif m:\n\tsnip.rv = m.group().replace(\'/\', \'\\\\\')\n", python_globals, args, snip, "", am[147]) end, ae(am[147])), t";", nl(),
		nl(),
		t"use PHPUnit\\Framework\\TestCase;", nl(),
		nl(),
		t"/**", nl(),
		t" * @author ", f(function(args, snip) return c_viml("g:snips_author") end, {}), nl(),
		t" */", nl(),
		t"class ", f(function(args, snip) return c_py({"php", 147}, "\nsnip.rv = re.match(r\'.*(?=\\.)\', fn).group()\n", python_globals, args, snip, "", am[147]) end, ae(am[147])), t" extends TestCase", nl(),
		t"{", nl(),
		t"\tpublic function test", i(1, "", {key = "i1"}), t"()", nl(),
		t"\t{", nl(),
		t"\t\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t\t"), {key = "i0"}) }) end), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "else", descr = "(else) \"else\"", priority = 0, trigEngine = te("")}, {
		t"else {", nl(),
		t"\t", i(1, "// code...", {key = "i1"}), nl(),
		t"}"
	}),
	s({trig = "wp_admin_menu", descr = "(wp_admin_menu) \"Wordpress admin menu\"", priority = 0, trigEngine = te("")}, {
	}),
	s({trig = "wp_include_admin_ptions", descr = "(wp_include_admin_ptions) \"Include admin options\"", priority = 0, trigEngine = te("")}, {
		t"if (is_admin() && file_exists(STYLESHEETPATH. \'/admin-options.php\')) include_once(STYLESHEETPATH. \'/admin-options.php\');", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "wp_options_form", descr = "(wp_options_form)", priority = 0, trigEngine = te("")}, {
		t"<div class=\"wrap\">", nl(),
		t"<?php screen_icon(); ?>", nl(),
		t"<h2>", i(1, "Your Plugin Name", {key = "i1"}), t"</h2>", nl(),
		nl(),
		t"<form method=\"post\" action=\"options.php\">", nl(),
		t"\t<?php settings_fields(\'", i(2, "plugin", {key = "i2"}), t"_group\'); ?>", nl(),
		t"\t<?php do_settings_sections(\'", cp(2), t"-settings-page\'); ?>", nl(),
		t"\t<?php submit_button(); ?>", nl(),
		t"</form>", nl(),
		t"</div>", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "wp_options_page", descr = "(wp_options_page)", priority = 0, trigEngine = te("")}, {
		t"class ", i(1, "PluginSettingsPage", {key = "i1"}), nl(),
		t"{", nl(),
		t"\tprivate $options;", nl(),
		nl(),
		t"\tpublic function __construct()", nl(),
		t"\t{", nl(),
		t"\t\tadd_action(\'admin_menu\', array($this, \'add_plugin_page\'));", nl(),
		t"\t\tadd_action(\'admin_init\', array($this, \'page_init\'));", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function add_plugin_page()", nl(),
		t"\t{", nl(),
		t"\t\tadd_options_page(", nl(),
		t"\t\t\t\'", i(2, "Settings Admin", {key = "i2"}), t"\', // Page title", nl(),
		t"\t\t\t\'", i(2, "My Settings", {key = "i2"}), t"\', // Menu title", nl(),
		t"\t\t\t\'manage_options\', // capability", nl(),
		t"\t\t\t\'", i(3, "plugin", {key = "i3"}), t"-settings-page\',", nl(),
		t"\t\t\tarray($this, \'create_admin_page\')", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function create_admin_page()", nl(),
		t"\t{", nl(),
		t"\t\t$this->options = get_option(\'", cp(3), t"-settings\');", nl(),
		t"\t\tinclude(STYLESHEETPATH.\'/admin_", cp(3), t"_settings.php\');", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function page_init()", nl(),
		t"\t{", nl(),
		t"\t\tregister_setting(", nl(),
		t"\t\t\t\'", cp(3), t"_group\',", nl(),
		t"\t\t\t\'", cp(3), t"-settings\',", nl(),
		t"\t\t\tarray($this, \'sanitize\')", nl(),
		t"\t\t);", nl(),
		nl(),
		t"\t\tadd_settings_section(", nl(),
		t"\t\t\t\'setting_section_id\',", nl(),
		t"\t\t\t\'", cp(2), t"\',", nl(),
		t"\t\t\tarray($this, \'print_section_info\'),", nl(),
		t"\t\t\t\'", cp(3), t"-settings-page\'", nl(),
		t"\t\t);", nl(),
		nl(),
		t"\t\tadd_settings_field(", nl(),
		t"\t\t\t\'", i(4, "option_name", {key = "i5"}), t"\',", nl(),
		t"\t\t\t\'", i(5, "Option", {key = "i6"}), t"\',", nl(),
		t"\t\t\tarray($this, \'", cp(5), t"_callback\'),", nl(),
		t"\t\t\t\'", cp(3), t"-settings-page\',", nl(),
		t"\t\t\t\'setting_section_id\'", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function sanitize($input)", nl(),
		t"\t{", nl(),
		t"\t\treturn $input;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function print_section_info()", nl(),
		t"\t{", nl(),
		t"\t\tprint \'Enter your settings below:\';", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function ", cp(5), t"_callback()", nl(),
		t"\t{", nl(),
		t"\t\tprintf(", nl(),
		t"\t\t\t\'<input type=\"text\" id=\"id_", cp(5), t"\" name=\"", cp(3), t"-settings[", cp(5), t"]\" value=\"%s\" />\',", nl(),
		t"\t\t\tisset($this->options[\'", cp(5), t"\']) ? esc_attr($this->options[\'", cp(5), t"\']) : \'\'", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl(),
		nl(),
		t"$settings = new ", cp(1), t"();", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "wp_settings_field", descr = "(wp_settings_field) \"Settings field\"", priority = 0, trigEngine = te("")}, {
		t"add_settings_field(", nl(),
		t"\t\'", i(1, "option_name", {key = "i1"}), t"\',", nl(),
		t"\t\'", i(2, "Option", {key = "i2"}), t"\',", nl(),
		t"\tarray($this, \'", cp(1), t"_callback\'),", nl(),
		t"\t\'", i(3, "plugin", {key = "i3"}), t"-settings-page\',", nl(),
		t"\t\'setting_section_id\'", nl(),
		t");"
	}),
	s({trig = "wp_settings_field_callback", descr = "(wp_settings_field_callback) \"Settings field callback\"", priority = 0, trigEngine = te("")}, {
		t"public function ", i(1, "option_name", {key = "i1"}), t"_callback()", nl(),
		t"{", nl(),
		t"\tprintf(", nl(),
		t"\t\t\'<input type=\"text\" id=\"id_", cp(1), t"\" name=\"", i(2, "plugin", {key = "i2"}), t"-settings[", cp(1), t"]\" value=\"%s\" />\',", nl(),
		t"\t\tisset($this->options[\'", cp(1), t"\']) ? esc_attr($this->options[\'", cp(1), t"\']) : \'\'", nl(),
		t"\t);", nl(),
		t"}"
	}),
})
