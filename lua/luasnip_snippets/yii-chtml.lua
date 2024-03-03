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


ls.add_snippets("yii-chtml", {
	s({trig = "yhrb", descr = "(yhrb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::radioButton(\'", i(1, "name", {key = "i1"}), t"\', ", i(2, "false", {key = "i2"}), t",array(", i(3, "optionName", {key = "i3"}), t"=>", i(0, "optionValue", {key = "i0"}), t" );"
	}),
	s({trig = "yhass", descr = "(yhass)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::asset(\'", i(0, "path", {key = "i0"}), t"\');"
	}),
	s({trig = "yhale", descr = "(yhale)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeLabelEx(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yheca", descr = "(yheca)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::encodeArray(array(", i(0, "", {key = "i0"}), t"));"
	}),
	s({trig = "yhnurl", descr = "(yhnurl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::normalizeUrl(array(\'", i(0, "", {key = "i0"}), t"\'));"
	}),
	s({trig = "yhsb", descr = "(yhsb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::submitButton(\'", i(1, "label", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhlinkb", descr = "(yhlinkb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::linkButton(\'", i(1, "lable", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhata", descr = "(yhata)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeTextArea(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhajb", descr = "(yhajb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::ajaxButton(\'", i(1, "label", {key = "i1"}), t"\', \'", i(2, "url", {key = "i2"}), t"\',array(\'", i(3, "ajaxOptionName", {key = "i3"}), t"\'=>", i(4, "ajaxOptionValue", {key = "i4"}), t"),array(\'", i(5, "optionName", {key = "i5"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhai", descr = "(yhai)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeId(", i(1, "model", {key = "i1"}), t", \'", i(0, "attribute", {key = "i0"}), t"\');"
	}),
	s({trig = "yhacb", descr = "(yhacb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeCheckBox(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhahf", descr = "(yhahf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeHiddenField(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhec", descr = "(yhec)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::encode(", i(0, "text", {key = "i0"}), t");"
	}),
	s({trig = "yhmtag", descr = "(yhmtag)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::metaTag(\'", i(1, "content", {key = "i1"}), t"\', \'", i(2, "name", {key = "i2"}), t"\', \'", i(3, "httpEquiv", {key = "i3"}), t"\',array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhddl", descr = "(yhddl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::dropDownList(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "select", {key = "i2"}), t"\', array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhlb", descr = "(yhlb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::listBox(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "select", {key = "i2"}), t"\',array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhjs", descr = "(yhjs)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::script(\'", i(0, "test", {key = "i0"}), t"\');"
	}),
	s({trig = "yhaj", descr = "(yhaj)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::ajax(array(", i(0, "", {key = "i0"}), t"));"
	}),
	s({trig = "yhtf", descr = "(yhtf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::textField(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "value", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhapf", descr = "(yhapf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activePasswordField(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhld", descr = "(yhld)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::listData(array(", i(1, "", {key = "i1"}), t"),\'", i(2, "valueField", {key = "i2"}), t"\', \'", i(3, "textField", {key = "i3"}), t"\',\'", i(0, "groupField", {key = "i0"}), t"\');"
	}),
	s({trig = "yhmt", descr = "(yhmt)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::mailto(\'", i(1, "text", {key = "i1"}), t"\', \'", i(2, "email", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhimg", descr = "(yhimg)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::image(\'", i(1, "src", {key = "i1"}), t"\', \'", i(2, "alt", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhalb", descr = "(yhalb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeListBox(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\', array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhaff", descr = "(yhaff)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeFileField(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhct", descr = "(yhct)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::closeTag(\'", i(0, "tag", {key = "i0"}), t"\');"
	}),
	s({trig = "yhaif", descr = "(yhaif)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeInputField(\'", i(1, "type", {key = "i1"}), t"\', ", i(2, "model", {key = "i2"}), t", \'", i(3, "attribute", {key = "i3"}), t"\',array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhjsf", descr = "(yhjsf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::scriptFile(\'", i(0, "url", {key = "i0"}), t"\');"
	}),
	s({trig = "yhrbl", descr = "(yhrbl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::radioButtonList(\'", i(1, "name", {key = "i1"}), t"\', ", i(2, "select", {key = "i2"}), t", array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhcssf", descr = "(yhcssf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::cssFile(\'", i(1, "url", {key = "i1"}), t"\',\'", i(0, "media", {key = "i0"}), t"\');"
	}),
	s({trig = "yherr", descr = "(yherr)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::error(", i(1, "model", {key = "i1"}), t", \'", i(0, "attribute", {key = "i0"}), t"\');"
	}),
	s({trig = "yhpf", descr = "(yhpf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::passwordField(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "value", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhhf", descr = "(yhhf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::hiddenField(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "value", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhc", descr = "(yhc)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::cdata(", i(0, "text", {key = "i0"}), t");"
	}),
	s({trig = "yhlink", descr = "(yhlink)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::link(\'", i(1, "text", {key = "i1"}), t"\',array(", i(2, "", {key = "i2"}), t"),array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yherrs", descr = "(yherrs)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::errorSummary(", i(1, "model", {key = "i1"}), t",\'", i(2, "headerHtml", {key = "i2"}), t"\',\'", i(0, "footerHtml", {key = "i0"}), t"\');"
	}),
	s({trig = "yht", descr = "(yht)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::tag(\'", i(1, "tag", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(3, "optionValue", {key = "i3"}), t"),", i(4, "false", {key = "i4"}), t",", i(0, "true", {key = "i0"}), t");"
	}),
	s({trig = "yhajl", descr = "(yhajl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::ajaxLink(\'", i(1, "label", {key = "i1"}), t"\', \'", i(2, "url", {key = "i2"}), t"\',array(\'", i(3, "ajaxOptionName", {key = "i3"}), t"\'=>", i(4, "ajaxOptionValue", {key = "i4"}), t"),array(\'", i(5, "optionName", {key = "i5"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhlabel", descr = "(yhlabel)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::label(\'", i(1, "label", {key = "i1"}), t"\', \'", i(2, "for", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhan", descr = "(yhan)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeName(", i(1, "model", {key = "i1"}), t", \'", i(0, "attribute", {key = "i0"}), t"\');"
	}),
	s({trig = "yhsform", descr = "(yhsform)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::statefulForm(array(\'", i(1, "", {key = "i1"}), t"\'), \'", i(2, "post", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhff", descr = "(yhff)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::fileField(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "value", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhatf", descr = "(yhatf)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeTextField(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhcss", descr = "(yhcss)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::css(\'", i(1, "test", {key = "i1"}), t"\',\'", i(0, "media", {key = "i0"}), t"\');"
	}),
	s({trig = "yhimgb", descr = "(yhimgb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::imageButton(\'", i(1, "src", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhajsb", descr = "(yhajsb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::ajaxSubmitButton(\'", i(1, "label", {key = "i1"}), t"\', \'", i(2, "url", {key = "i2"}), t"\',array(\'", i(3, "ajaxOptionName", {key = "i3"}), t"\'=>", i(4, "ajaxOptionValue", {key = "i4"}), t"),array(\'", i(5, "optionName", {key = "i5"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhb", descr = "(yhb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::button(\'", i(1, "label", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhlo", descr = "(yhlo)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::listOptions(\'", i(1, "selection", {key = "i1"}), t"\', array(", i(2, "", {key = "i2"}), t"), array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhacbl", descr = "(yhacbl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeCheckBoxList(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\', array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhot", descr = "(yhot)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::openTag(\'", i(1, "tag", {key = "i1"}), t"\', array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhcb", descr = "(yhcb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::checkBox(\'", i(1, "name", {key = "i1"}), t"\', ", i(2, "false", {key = "i2"}), t", array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhta", descr = "(yhta)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::textArea(\'", i(1, "name", {key = "i1"}), t"\', \'", i(2, "value", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhlinkt", descr = "(yhlinkt)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::linkTag(\'", i(1, "relation", {key = "i1"}), t"\', \'", i(2, "type", {key = "i2"}), t"\', \'", i(3, "href", {key = "i3"}), t"\', \'", i(4, "media", {key = "i4"}), t"\',array(\'", i(5, "optionName", {key = "i5"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhrsb", descr = "(yhrsb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::resetButton(\'", i(1, "label", {key = "i1"}), t"\',array(\'", i(2, "optionName", {key = "i2"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yharbl", descr = "(yharbl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeRadioButtonList(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\', array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhcbl", descr = "(yhcbl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::checkBoxList(\'", i(1, "name", {key = "i1"}), t"\', ", i(2, "select", {key = "i2"}), t", array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhform", descr = "(yhform)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::form(array(\'", i(1, "", {key = "i1"}), t"\'), \'", i(2, "post", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhbeform", descr = "(yhbeform)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::beginForm(array(\'", i(1, "", {key = "i1"}), t"\'), \'", i(2, "post", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(4, "optionValue", {key = "i4"}), t"));", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"echo CHtml::endForm();"
	}),
	s({trig = "yhaddl", descr = "(yhaddl)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeDropDownList(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\', array(", i(3, "", {key = "i3"}), t"),array(\'", i(4, "optionName", {key = "i4"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yharb", descr = "(yharb)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeRadioButton(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
	s({trig = "yhal", descr = "(yhal)", priority = -1000, trigEngine = te("w")}, {
		t"echo CHtml::activeLabel(", i(1, "model", {key = "i1"}), t", \'", i(2, "attribute", {key = "i2"}), t"\',array(\'", i(3, "optionName", {key = "i3"}), t"\'=>", i(0, "optionValue", {key = "i0"}), t"));"
	}),
})
