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
	{},
	{},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
}
ls.add_snippets("openfoam", {
	s({trig = "fv", descr = "(fv)", priority = -1000, trigEngine = te("w")}, {
		t"type\t\tfixedValue;", nl(),
		t"value\t\tuniform ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "zg", descr = "(zg)", priority = -1000, trigEngine = te("w")}, {
		t"type\t\tzeroGradient;"
	}),
	s({trig = "sym", descr = "(sym)", priority = -1000, trigEngine = te("w")}, {
		t"type\t\tsymmetryPlane;"
	}),
	s({trig = "forces", descr = "(forces)", priority = -1000, trigEngine = te("w")}, {
		t"forces", nl(),
		t"{", nl(),
		t"\ttype\t\t\t\tforces;", nl(),
		t"\tfunctionObjectLibs\t(\"libforces.so\");", nl(),
		t"\tenabled\t\t\t\ttrue;", nl(),
		t"\toutputControl\t\t", i(1, "timeStep", {key = "i1"}), t";", nl(),
		t"\toutputInterval\t\t", i(2, "1", {key = "i2"}), t";", nl(),
		t"\tpatches\t\t\t\t(", i(3, "", {key = "i3"}), t");", nl(),
		t"\tlog\t\t\t\t\t", i(4, "true", {key = "i4"}), t";", nl(),
		t"\tCofR\t\t\t\t(", i(0, "0 0 0", {key = "i0"}), t");", nl(),
		t"}"
	}),
	s({trig = "gamg", descr = "(gamg)", priority = -1000, trigEngine = te("w")}, {
		i(1, "p", {key = "i1"}), nl(),
		t"{", nl(),
		t"\tsolver          GAMG;", nl(),
		t"\ttolerance       1e-", i(2, "6", {key = "i2"}), t";", nl(),
		t"\trelTol          ", i(0, "0.0", {key = "i0"}), t";", nl(),
		t"\tsmoother        GaussSeidel;", nl(),
		t"\tcacheAgglomeration true;", nl(),
		t"\tnCellsInCoarsestLevel 10;", nl(),
		t"\tagglomerator    faceAreaPair;", nl(),
		t"\tmergeLevels     1;", nl(),
		t"}"
	}),
	s({trig = "pbicg", descr = "(pbicg)", priority = -1000, trigEngine = te("w")}, {
		i(1, "U", {key = "i1"}), nl(),
		t"{", nl(),
		t"\tsolver          PBiCG;", nl(),
		t"\tpreconditioner  DILU;", nl(),
		t"\ttolerance       1e-", i(2, "6", {key = "i2"}), t";", nl(),
		t"\trelTol          ", i(0, "0.0", {key = "i0"}), t";", nl(),
		t"}"
	}),
	s({trig = "pimple", descr = "(pimple)", priority = -1000, trigEngine = te("w")}, {
		t"PIMPLE", nl(),
		t"{", nl(),
		t"\tnOuterCorrectors \t", i(1, "outer", {key = "i1"}), t";", nl(),
		t"\tnCorrectors     \t", i(2, "inner", {key = "i2"}), t";", nl(),
		t"\tnNonOrthogonalCorrectors ", i(3, "nonOrtho", {key = "i3"}), t";", nl(),
		t"\tpRefCell        \t", i(4, "cell", {key = "i4"}), t";", nl(),
		t"\tpRefValue       \t", d(5, function(args) return sn(nil, {t"value for ", cp(4)}) end, {}, {key = "i0"}), t";", nl(),
		t"}"
	}),
})
