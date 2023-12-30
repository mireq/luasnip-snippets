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
	4,
	2,
	2,
	0,
	1,
	3,
	2,
	2,
	3,
	4,
	2,
	4,
	3,
	7,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	4,
	2,
	4,
	1,
	2,
	2,
	2,
	5,
	3,
	0,
	0,
	1,
	1,
	1,
	1,
	2,
	3,
	2,
	3,
	3,
	2,
	2,
	2,
	2,
	0,
	1,
	1,
	1,
	1,
	1,
	1,
	6,
	1,
	2,
	3,
	3,
	3,
	3,
	3,
	3,
	3,
	2,
	3,
	3,
	3,
	3,
	3,
	3,
	3,
	1,
	4,
	4,
	3,
	3,
	3,
	3,
	3,
	3,
	3,
}
ls.add_snippets("robot", {
	s({trig = "cat", descr = "(cat) \"Catenate\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "name", {key = "i1"}), t"}=    Catenate    SEPARATOR=", i(2, "---", {key = "i2"}), t"    ", i(3, "Hello", {key = "i3"}), t"    ", i(4, "world", {key = "i4"})
	}),
	s({trig = "eval", descr = "(eval) \"Evaluate\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "val", {key = "i1"}), t"}=    Evaluate    ", i(2, "${x} - 10", {key = "i2"})
	}),
	s({trig = "for", descr = "(for) \"FOR loop\"", priority = -50, trigEngine = te("b")}, {
		t":FOR    ${", i(1, "element", {key = "i1"}), t"}    IN    ", i(2, "@{ELEMENTS}", {key = "i2"}), nl(),
		t"\\    ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i3"}) }) end), t"    ${", cp(1), t"}"
	}),
	s({trig = "nop", descr = "(nop) \"No Operation\"", priority = -50, trigEngine = te("")}, {
		t"No Operation"
	}),
	s({trig = "rfk", descr = "(rfk) \"Return From Keyword\"", priority = -50, trigEngine = te("")}, {
		t"Return From Keyword    ", i(1, "${optional return value}", {key = "i1"})
	}),
	s({trig = "rfki", descr = "(rfki) \"Return From Keyword If\"", priority = -50, trigEngine = te("")}, {
		t"Return From Keyword If    \'${", i(1, "rc", {key = "i1"}), t"}\' != \'", i(2, "abc", {key = "i2"}), t"\'    ", i(3, "${optional return value}", {key = "i3"})
	}),
	s({trig = "rk", descr = "(rk) \"Run Keyword\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkacof", descr = "(rkacof) \"Run Keyword And Continue On Failure\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword And Continue On Failure    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkaee", descr = "(rkaee) \"Run Keyword And Expect Error\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword And Expect Error    ", i(1, "My error", {key = "i1"}), t"    ", i(2, "${kw}", {key = "i2"}), t"    ", i(3, "${args}", {key = "i3"})
	}),
	s({trig = "rkaie", descr = "(rkaie) \"Run Keyword And Ignore Error\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword And Ignore Error    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"}), nl(),
		t"${", i(3, "result", {key = "i3"}), t"}    ${", i(4, "return_value", {key = "i4"}), t"}=    Run Keyword And Ignore Error    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkar", descr = "(rkar) \"Run Keyword And Return\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword And Return    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkari", descr = "(rkari) \"Run Keyword And Return If\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword And Return If    \'${", i(1, "rc", {key = "i1"}), t"}\' != \'", i(2, "abc", {key = "i2"}), t"\'    ", i(3, "${kw}", {key = "i3"}), t"    ", i(4, "${args}", {key = "i4"})
	}),
	s({trig = "rkars", descr = "(rkars) \"Run Keyword And Return Status\"", priority = -50, trigEngine = te("")}, {
		t"${", i(3, "result", {key = "i3"}), t"}=    Run Keyword And Return Status    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rki", descr = "(rki) \"Run Keyword If\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If    \'${", i(1, "rc", {key = "i1"}), t"}\' != \'", i(2, "abc", {key = "i2"}), t"\'", nl(),
		t"...               ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i3"}) }) end), nl(),
		t"...    ELSE IF    \'${", i(4, "str", {key = "i4"}), t"}\' != \'", i(5, "def", {key = "i5"}), t"\'", nl(),
		t"...               ", i(6, "Another keyword", {key = "i6"}), nl(),
		t"...    ELSE", nl(),
		t"...               ", i(7, "Final keyword", {key = "i7"})
	}),
	s({trig = "rkiactf", descr = "(rkiactf) \"Run Keyword If Any Critical Tests Failed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If Any Critical Tests Failed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkiactp", descr = "(rkiactp) \"Run Keyword If All Critical Tests Passed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If All Critical Tests Passed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkiatf", descr = "(rkiatf) \"Run Keyword If Any Tests Failed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If Any Tests Failed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkiatp", descr = "(rkiatp) \"Run Keyword If All Tests Passed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If All Tests Passed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkitf", descr = "(rkitf) \"Run Keyword If Test Failed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If Test Failed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkitp", descr = "(rkitp) \"Run Keyword If Test Passed\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If Test Passed    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rkito", descr = "(rkito) \"Run Keyword If Timeout Occurred\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword If Timeout Occurred    ", i(1, "${kw}", {key = "i1"}), t"    ", i(2, "${args}", {key = "i2"})
	}),
	s({trig = "rks", descr = "(rks) \"Run Keywords\"", priority = -50, trigEngine = te("")}, {
		t"Run Keywords", nl(),
		t"...    ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"    AND", nl(),
		t"...    ", i(2, "Clear logs", {key = "i2"})
	}),
	s({trig = "rku", descr = "(rku) \"Run Keyword Unless\"", priority = -50, trigEngine = te("")}, {
		t"Run Keyword Unless    \'${", i(1, "rc", {key = "i1"}), t"}\' != \'", i(2, "abc", {key = "i2"}), t"\'    ", i(3, "${kw}", {key = "i3"}), t"    ", i(4, "${args}", {key = "i4"})
	}),
	s({trig = "sgv", descr = "(sgv) \"Set Global Variable\"", priority = -50, trigEngine = te("")}, {
		t"Set Global Variable    ${", i(1, "name", {key = "i1"}), t"}    ", i(2, "${value}", {key = "i2"})
	}),
	s({trig = "sbe", descr = "(sbe) \"Should Be Equal\"", priority = -50, trigEngine = te("")}, {
		t"Should Be Equal    \"${", i(1, "var", {key = "i1"}), t"}\"    \"", i(2, "expected value", {key = "i2"}), t"\"    ", i(3, "\"optional error msg\"", {key = "i3"}), t"\t", i(4, "ignore_case=True", {key = "i4"})
	}),
	s({trig = "sleep", descr = "(sleep) \"Sleep\"", priority = -50, trigEngine = te("")}, {
		t"Sleep    ", i(1, "2 minutes 10 seconds", {key = "i1"})
	}),
	s({trig = "ssv", descr = "(ssv) \"Set Suite Variable\"", priority = -50, trigEngine = te("")}, {
		t"Set Suite Variable    ${", i(1, "name", {key = "i1"}), t"}    ", i(2, "${value}", {key = "i2"})
	}),
	s({trig = "stv", descr = "(stv) \"Set Test Variable\"", priority = -50, trigEngine = te("")}, {
		t"Set Test Variable    ${", i(1, "name", {key = "i1"}), t"}    ", i(2, "${value}", {key = "i2"})
	}),
	s({trig = "sv", descr = "(sv) \"Set Variable\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "name", {key = "i1"}), t"}=    Set Variable    ", i(2, "${value}", {key = "i2"})
	}),
	s({trig = "svi", descr = "(svi) \"Set Variable If\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "var", {key = "i1"}), t"}=    Set Variable If    \'${", i(2, "rc", {key = "i2"}), t"}\' != \'", i(3, "abc", {key = "i3"}), t"\'", nl(),
		f(function(args, snip) return c_py({"robot", 30}, "snip.rv = \'...\' + \' \' * (len(t[1]) + 23)", python_globals, args, snip, "", am[30]) end, ae(am[30])), t" ", i(4, "${value true}", {key = "i4"}), nl(),
		f(function(args, snip) return c_py({"robot", 30}, "snip.rv = \'...\' + \' \' * (len(t[1]) + 23)", python_globals, args, snip, "", am[30]) end, ae(am[30])), t" ", i(5, "${value false}", {key = "i5"})
	}),
	s({trig = "wuks", descr = "(wuks) \"Wait Until Keyword Succeeds\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Keyword Succeeds    ", i(1, "10x", {key = "i1"}), t"    ", i(2, "2s", {key = "i2"}), t"    ", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i3"}) }) end)
	}),
	s({trig = "pause", descr = "(pause) \"Pause test execution\"", priority = -50, trigEngine = te("")}, {
		t"Import library    Dialogs", nl(),
		t"Pause execution"
	}),
	s({trig = "tpause", descr = "(tpause) \"Teardown Pause - pause test execution only on failure\"", priority = -50, trigEngine = te("")}, {
		t"[Teardown]    Run Keyword If Test Failed    Run Keywords", nl(),
		t"...    Import library    Dialogs    AND", nl(),
		t"...    Pause execution"
	}),
	s({trig = "cps", descr = "(cps) \"Capture Page Screenshot\"", priority = -50, trigEngine = te("")}, {
		t"Capture Page Screenshot    ", i(1, "${optional filename}", {key = "i1"})
	}),
	s({trig = "esbd", descr = "(esbd) \"Element Should Be Disabled\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Be Disabled    ${", i(1, "locator", {key = "i1"}), t"}"
	}),
	s({trig = "esbe", descr = "(esbe) \"Element Should Be Enabled\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Be Enabled    ${", i(1, "locator", {key = "i1"}), t"}"
	}),
	s({trig = "esbf", descr = "(esbf) \"Element Should Be Focused\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Be Focused    ${", i(1, "locator", {key = "i1"}), t"}"
	}),
	s({trig = "esbv", descr = "(esbv) \"Element Should Be Visible\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Be Visible    ${", i(1, "locator", {key = "i1"}), t"}    ", i(2, "${optional message}", {key = "i2"})
	}),
	s({trig = "esc", descr = "(esc) \"Element Should Contain\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Contain    ${", i(1, "locator", {key = "i1"}), t"}    ", i(2, "${expected}", {key = "i2"}), t"    ", i(3, "${optional message}", {key = "i3"})
	}),
	s({trig = "esnbv", descr = "(esnbv) \"Element Should Not Be Visible\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Not Be Visible    ${", i(1, "locator", {key = "i1"}), t"}    ", i(2, "${optional message}", {key = "i2"})
	}),
	s({trig = "esnc", descr = "(esnc) \"Element Should Not Contain\"", priority = -50, trigEngine = te("")}, {
		t"Element Should Not Contain    ${", i(1, "locator", {key = "i1"}), t"}    ", i(2, "${expected}", {key = "i2"}), t"    ", i(3, "${optional message}", {key = "i3"})
	}),
	s({trig = "etsb", descr = "(etsb) \"Element Text Should Be\"", priority = -50, trigEngine = te("")}, {
		t"Element Text Should Be    ${", i(1, "locator", {key = "i1"}), t"}    ", i(2, "${expected}", {key = "i2"}), t"    ", i(3, "${optional message}", {key = "i3"})
	}),
	s({trig = "eaj", descr = "(eaj) \"Execute Async Javascript\"", priority = -50, trigEngine = te("")}, {
		t"Execute Async Javascript    ", i(1, "${code line 1}", {key = "i1"}), t"    ", i(2, "${code line 2}", {key = "i2"})
	}),
	s({trig = "ej", descr = "(ej) \"Execute Javascript\"", priority = -50, trigEngine = te("")}, {
		t"Execute Javascript    ", i(1, "${code line 1}", {key = "i1"}), t"    ", i(2, "${code line 2}", {key = "i2"})
	}),
	s({trig = "gwp", descr = "(gwp) \"Get Window Position\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "x", {key = "i1"}), t"}    ${", i(2, "y", {key = "i2"}), t"}=    Get Window Position"
	}),
	s({trig = "gws", descr = "(gws) \"Get Window Size\"", priority = -50, trigEngine = te("")}, {
		t"${", i(1, "width", {key = "i1"}), t"}    ${", i(2, "height", {key = "i2"}), t"}=    Get Window Size"
	}),
	s({trig = "mbw", descr = "(mbw) \"Maximize Browser Window\"", priority = -50, trigEngine = te("")}, {
		t"Maximize Browser Window"
	}),
	s({trig = "md", descr = "(md) \"Mouse Down\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Down    ${", i(1, "locator", {key = "i1"}), t"}"
	}),
	s({trig = "mdoi", descr = "(mdoi) \"Mouse Down On Image\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Down On Image    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "mdol", descr = "(mdol) \"Mouse Down On Link\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Down On Link    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "mout", descr = "(mout) \"Mouse Out\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Out    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "mover", descr = "(mover) \"Mouse Over\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Over    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "mu", descr = "(mu) \"Mouse Up\"", priority = -50, trigEngine = te("")}, {
		t"Mouse Up    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "ob", descr = "(ob) \"Open Browser\"", priority = -50, trigEngine = te("")}, {
		t"Open Browser    ", i(1, "${url}", {key = "i1"}), t"    ", i(2, "${browser=firefox}", {key = "i2"}), t"    ", i(3, "${alias=None}", {key = "i3"}), t"    ", i(4, "${remote_url=False}", {key = "i4"}), t"    ", i(5, "${desired_capabilities=None}", {key = "i5"}), t"    ", i(6, "${ff_profile_dir=None}", {key = "i6"})
	}),
	s({trig = "ocm", descr = "(ocm) \"Open Context Menu\"", priority = -50, trigEngine = te("")}, {
		t"Open Context Menu    ", i(1, "${locator}", {key = "i1"})
	}),
	s({trig = "psc", descr = "(psc) \"Page Should Contain\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain    ", i(1, "${text}", {key = "i1"}), t"    ", i(2, "loglevel=INFO", {key = "i2"})
	}),
	s({trig = "pscb", descr = "(pscb) \"Page Should Contain Button\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Button    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "pscc", descr = "(pscc) \"Page Should Contain Checkbox\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Checkbox    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psce", descr = "(psce) \"Page Should Contain Element\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Element    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psci", descr = "(psci) \"Page Should Contain Image\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Image    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "pscl", descr = "(pscl) \"Page Should Contain Link\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Link    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "pscrb", descr = "(pscrb) \"Page Should Contain Radio Button\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Radio Button    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psct", descr = "(psct) \"Page Should Contain Textfield\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Contain Textfield    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psnc", descr = "(psnc) \"Page Should Not Contain\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain    ", i(1, "${text}", {key = "i1"}), t"    ", i(2, "loglevel=INFO", {key = "i2"})
	}),
	s({trig = "psncb", descr = "(psncb) \"Page Should Not Contain Button\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Button    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psncc", descr = "(psncc) \"Page Should Not Contain Checkbox\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Checkbox    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psnce", descr = "(psnce) \"Page Should Not Contain Element\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Element    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psnci", descr = "(psnci) \"Page Should Not Contain Image\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Image    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psncl", descr = "(psncl) \"Page Should Not Contain Link\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Link    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psncrb", descr = "(psncrb) \"Page Should Not Contain Radio Button\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Radio Button    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "psnct", descr = "(psnct) \"Page Should Not Contain Textfield\"", priority = -50, trigEngine = te("")}, {
		t"Page Should Not Contain Textfield    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${message=}", {key = "i2"}), t"    ", i(3, "loglevel=INFO", {key = "i3"})
	}),
	s({trig = "rktrof", descr = "(rktrof) \"Register Keyword To Run On Failure\"", priority = -50, trigEngine = te("")}, {
		t"Register Keyword To Run On Failure    ", i(1, "${kw}", {key = "i1"})
	}),
	s({trig = "wuec", descr = "(wuec) \"Wait Until Element Contains\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Element Contains    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${text}", {key = "i2"}), t"    ", i(3, "${timeout=None}", {key = "i3"}), t"    ", i(4, "${error=None}", {key = "i4"})
	}),
	s({trig = "wuednc", descr = "(wuednc) \"Wait Until Element Does Not Contain\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Element Does Not Contain    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${text}", {key = "i2"}), t"    ", i(3, "${timeout=None}", {key = "i3"}), t"    ", i(4, "${error=None}", {key = "i4"})
	}),
	s({trig = "wueie", descr = "(wueie) \"Wait Until Element Is Enabled\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Element Is Enabled    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wueinv", descr = "(wueinv) \"Wait Until Element Is Not Visible\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Element Is Not Visible    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wueiv", descr = "(wueiv) \"Wait Until Element Is Visible\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Element Is Visible    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wupc", descr = "(wupc) \"Wait Until Page Contains\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Page Contains    ", i(1, "${text}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wupce", descr = "(wupce) \"Wait Until Page Contains Element\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Page Contains Element    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wupdnc", descr = "(wupdnc) \"Wait Until Page Does Not Contain\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Page Does Not Contain    ", i(1, "${text}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
	s({trig = "wupdnce", descr = "(wupdnce) \"Wait Until Page Does Not Contain Element\"", priority = -50, trigEngine = te("")}, {
		t"Wait Until Page Does Not Contain Element    ", i(1, "${locator}", {key = "i1"}), t"    ", i(2, "${timeout=None}", {key = "i2"}), t"    ", i(3, "${error=None}", {key = "i3"})
	}),
})
