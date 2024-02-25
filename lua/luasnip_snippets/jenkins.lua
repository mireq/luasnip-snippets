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
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{1},
}
ls.add_snippets("jenkins", {
	s({trig = "steps", descr = "(steps)", priority = -1000, trigEngine = te("w")}, {
		t"steps {", nl(),
		t"\tsh \'", i(1, "make check", {key = "i1"}), t"\'", nl(),
		t"\tjunit \'", i(2, "reports/**/*.xml", {key = "i2"}), t"\' ", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "stage", descr = "(stage)", priority = -1000, trigEngine = te("w")}, {
		t"stage(\'", i(1, "Test", {key = "i1"}), t"\'){", nl(),
		t"\tsteps {", nl(),
		t"\t\tsh \'", i(2, "make check", {key = "i2"}), t"\'", nl(),
		t"\t\tjunit \'", i(3, "reports/**/*.xml", {key = "i3"}), t"\' ", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pipeline", descr = "(pipeline)", priority = -1000, trigEngine = te("w")}, {
		t"pipeline {", nl(),
		t"\tagent any ", nl(),
		t"\tstages {", nl(),
		t"\t\tstage(\'", i(1, "Build", {key = "i1"}), t"\') { ", nl(),
		t"\t\t\tsteps { ", nl(),
		t"\t\t\t\tsh \'", i(2, "make", {key = "i2"}), t"\' ", nl(),
		t"\t\t\t}", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pipeline_sample", descr = "(pipeline_sample)", priority = -1000, trigEngine = te("w")}, {
		t"pipeline {", nl(),
		t"\tagent any ", nl(),
		t"\tstages {", nl(),
		t"\t\tstage(\'", i(1, "Build", {key = "i1"}), t"\') { ", nl(),
		t"\t\t\tsteps { ", nl(),
		t"\t\t\t\tsh \'", i(2, "make", {key = "i2"}), t"\' ", nl(),
		t"\t\t\t}", nl(),
		t"\t\t}", nl(),
		t"\t\tstage(\'", i(3, "Test", {key = "i3"}), t"\'){", nl(),
		t"\t\t\tsteps {", nl(),
		t"\t\t\t\tsh \'", i(4, "make check", {key = "i4"}), t"\'", nl(),
		t"\t\t\t\tjunit \'", i(5, "reports/**/*.xml", {key = "i5"}), t"\' ", nl(),
		t"\t\t\t}", nl(),
		t"\t\t}", nl(),
		t"\t\tstage(\'", i(6, "Deploy", {key = "i6"}), t"\') {", nl(),
		t"\t\t\tsteps {", nl(),
		t"\t\t\t\tsh \'", i(7, "make publish", {key = "i7"}), t"\'", nl(),
		t"\t\t\t}", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "d", descr = "(d)", priority = -1000, trigEngine = te("w")}, {
		t"docker {", nl(),
		t"\timage \'", i(1, "myregistry.com/node\'", {key = "i1"}), t"\'", nl(),
		t"\tlabel \'", i(2, "my-defined-label\'", {key = "i2"}), t"\'", nl(),
		t"\tregistryUrl \'", i(3, "https://myregistry.com/\'", {key = "i3"}), t"\'", nl(),
		t"\tregistryCredentialsId \'", i(4, "myPredefinedCredentialsInJenkins\'", {key = "i4"}), t"\'", nl(),
		t"}"
	}),
	s({trig = "df", descr = "(df)", priority = -1000, trigEngine = te("w")}, {
		t"dockerfile {", nl(),
		t"\tfilename \'", i(1, "Dockerfile.build", {key = "i1"}), t"\'", nl(),
		t"\tdir \'", i(2, "build", {key = "i2"}), t"\'", nl(),
		t"\tlabel \'", i(3, "my-defined-label", {key = "i3"}), t"\'", nl(),
		t"\tregistryUrl \'", i(4, "https://myregistry.com/", {key = "i4"}), t"\'", nl(),
		t"\tregistryCredentialsId \'", i(5, "myPredefinedCredentialsInJenkins", {key = "i5"}), t"\'", nl(),
		t"}"
	}),
	s({trig = "pa", descr = "(pa)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\talways { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pc", descr = "(pc)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"post { ", nl(),
			t"\tchanged { ", nl(),
			t"\t\t", i(1, "", {key = "i1"}), nl(),
			t"\t}", nl(),
			t"}", nl(),
			i(0, "", {key = "i0"})
		},
		{
			t"post { ", nl(),
			t"\tcleanup { ", nl(),
			t"\t\t", i(1, "", {key = "i1"}), nl(),
			t"\t}", nl(),
			t"}", nl(),
			i(0, "", {key = "i0"})
		},
	})),
	s({trig = "pf", descr = "(pf)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\tfixed { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\tregression { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pab", descr = "(pab)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\taborted { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pfa", descr = "(pfa)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\tfailure { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ps", descr = "(ps)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\tsuccess { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "pu", descr = "(pu)", priority = -1000, trigEngine = te("w")}, {
		t"post { ", nl(),
		t"\tunstable { ", nl(),
		t"\t\t", i(1, "", {key = "i1"}), nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "psss", descr = "(psss)", priority = -1000, trigEngine = te("w")}, {
		t"pipeline {", nl(),
		t"\tagent any ", nl(),
		t"\tstages {", nl(),
		t"\t\tstage(\'", i(1, "Build", {key = "i1"}), t"\') { ", nl(),
		t"\t\t\tsteps { ", nl(),
		t"\t\t\t\tsh \'", i(2, "make", {key = "i2"}), t"\' ", nl(),
		t"\t\t\t}", nl(),
		t"\t\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sss", descr = "(sss)", priority = -1000, trigEngine = te("w")}, {
		t"stages {", nl(),
		t"\tstage(\'", i(1, "Build", {key = "i1"}), t"\') { ", nl(),
		t"\t\tsteps { ", nl(),
		t"\t\t\tsh \'", i(2, "make", {key = "i2"}), t"\' ", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "parameters", descr = "(parameters)", priority = -1000, trigEngine = te("w")}, {
		t"parameters{ ", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "paramtext", descr = "(paramtext)", priority = -1000, trigEngine = te("w")}, {
		t"\ttext(name: \"", i(1, "BIOGRAPHY", {key = "i1"}), t"\" , defaultValue: \"", i(2, "default", {key = "i2"}), t"\" , description: \"", i(3, "Enter some information about the person", {key = "i3"}), t"\")", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "parambool", descr = "(parambool)", priority = -1000, trigEngine = te("w")}, {
		t"\tbooleanParam(name: \"", i(1, "TOGGLE", {key = "i1"}), t"\" , defaultValue: ", i(2, "default", {key = "i2"}), t", description: \"", i(3, "Toggle this value", {key = "i3"}), t"\")", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "paramchoice", descr = "(paramchoice)", priority = -1000, trigEngine = te("w")}, {
		t"\tchoice(name: \"", i(1, "CHOICE", {key = "i1"}), t"\" , choices: [\"", i(2, "Choices", {key = "i2"}), t"\",] , description: \"", i(3, "Pick something", {key = "i3"}), t"\") ", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "parampassword", descr = "(parampassword)", priority = -1000, trigEngine = te("w")}, {
		t"\tpassword(name: \"", i(1, "PASSWORD", {key = "i1"}), t"\" , defaultValue: \"", i(2, "SECRET", {key = "i2"}), t"\" , description: \"", i(3, "Enter a password", {key = "i3"}), t"\")", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "paramfile", descr = "(paramfile)", priority = -1000, trigEngine = te("w")}, {
		t"\tfile(name: \"", i(1, "FILE", {key = "i1"}), t"\" , description: \"", i(2, "Choose a file to upload", {key = "i2"}), t"\")", i(0, "", {key = "i0"}), nl(),
		t"\t", cp(0)
	}),
	s({trig = "triggers", descr = "(triggers)", priority = -1000, trigEngine = te("w")}, {
		t"triggers {", nl(),
		t"\tcron(\'", i(1, "H */4 * * 1-5", {key = "i1"}), t"\')", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "input", descr = "(input)", priority = -1000, trigEngine = te("w")}, {
		t"input {", nl(),
		t"\tmessage \'", i(1, "Should we continue?", {key = "i1"}), t"\'", nl(),
		t"\tok \'", i(2, "Yes, we should.", {key = "i2"}), t"\'", nl(),
		t"\tsubmitter \'", i(3, "alice,bob", {key = "i3"}), t"\'", nl(),
		t"\tparameters { ", nl(),
		t"\t\tstring(name: \'", i(4, "PERSON", {key = "i4"}), t"\' , defaultValue: \'", i(5, "Mr Jenkins", {key = "i5"}), t"\' , description: \'", i(6, "Who should I say hello to?", {key = "i6"}), t"\')", nl(),
		t"\t}", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenbranch", descr = "(whenbranch)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tbranch \'", i(1, "branch", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenbuildingTag", descr = "(whenbuildingTag)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tbuildingTag \'", i(1, "tag", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenchangelog", descr = "(whenchangelog)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tchangelog \'", i(1, "changelog", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenchangeset", descr = "(whenchangeset)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tchangeset \'", i(1, "changeSet", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenchangeRequest", descr = "(whenchangeRequest)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tchangeRequest \'", i(1, "changeRequest", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenenvironment", descr = "(whenenvironment)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tenvironment \'", i(1, "environment", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenequals", descr = "(whenequals)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tequals \'", i(1, "equals", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenexpression", descr = "(whenexpression)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\texpression \'", i(1, "expression", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whentag", descr = "(whentag)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\ttag \'", i(1, "tag", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whennot", descr = "(whennot)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tnot \'", i(1, "not", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenallOf", descr = "(whenallOf)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tallOf \'", i(1, "allOf", {key = "i1"}), t"\'", nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "whenanyOf", descr = "(whenanyOf)", priority = -1000, trigEngine = te("w")}, {
		t"when {", nl(),
		t"\tanyOf \'", i(1, "anyOf", {key = "i1"}), t"\'", nl(),
		t"}"
	}),
})
