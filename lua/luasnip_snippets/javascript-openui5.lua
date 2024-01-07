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
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6, 7, 8},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
	{},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
}
ls.add_snippets("javascript-openui5", {
	s({trig = "sapmlabel", descr = "(sapmlabel)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.Label({", nl(),
		t"\t\t\tdesign : ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\ttext : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\tvisible : ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\ttextAlign : ", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\ttextDirection : ", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\twidth : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\trequired : ", cp(7), nl(),
		t"\t\t});", nl()
	}),
	s({trig = "sapmtext", descr = "(sapmtext)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.Text({", nl(),
		t"\t\t\ttext :", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\ttextDirection :", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\tvisible :", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\twrapping : ", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\ttextAlign : ", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\twidth :", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\tmaxLines :", i(8, "", {key = "i8"}), nl(),
		t"\t\t});", nl()
	}),
	s({trig = "sapmbutton", descr = "(sapmbutton)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.Button({", nl(),
		t"\t\t\ttext : ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\ttype : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\twidth : ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\tenabled :", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\tvisible :", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\ticon : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\ticonFirst : ", i(8, "", {key = "i8"}), t",", nl(),
		t"\t\t\tactiveIcon :", i(9, "", {key = "i9"}), t",", nl(),
		t"\t\t\ticonDensityAware : ", i(10, "", {key = "i10"}), t",", nl(),
		t"\t\t});"
	}),
	s({trig = "sapmflexbox", descr = "(sapmflexbox)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.FlexBox({", nl(),
		t"\t\t\tvisible : ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\theight : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\twidth : ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\tdisplayInline :", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\tdirection :", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\tfitContainer : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\trenderType : ", i(8, "", {key = "i8"}), t",", nl(),
		t"\t\t\tjustifyContent :", i(9, "", {key = "i9"}), t",", nl(),
		t"\t\t\talignItems : ", i(10, "", {key = "i10"}), t",", nl(),
		t"\t\t\titems:[]", nl(),
		t"\t\t});"
	}),
	s({trig = "sapmhbox", descr = "(sapmhbox)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.HBox({", nl(),
		t"\t\t\tvisible : ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\theight : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\twidth : ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\tdisplayInline :", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\tdirection :", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\tfitContainer : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\trenderType : ", i(8, "", {key = "i8"}), t",", nl(),
		t"\t\t\tjustifyContent :", i(9, "", {key = "i9"}), t",", nl(),
		t"\t\t\talignItems : ", i(10, "", {key = "i10"}), t",", nl(),
		t"\t\t\titems:[]", nl(),
		t"\t\t});", nl()
	}),
	s({trig = "sapmvbox", descr = "(sapmvbox)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.VBox({", nl(),
		t"\t\t\tvisible : ", i(2, "", {key = "i2"}), t",", nl(),
		t"\t\t\theight : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\t\t\twidth : ", i(4, "", {key = "i4"}), t",", nl(),
		t"\t\t\tdisplayInline :", i(5, "", {key = "i5"}), t",", nl(),
		t"\t\t\tdirection :", i(6, "", {key = "i6"}), t",", nl(),
		t"\t\t\tfitContainer : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\t\t\trenderType : ", i(8, "", {key = "i8"}), t",", nl(),
		t"\t\t\tjustifyContent :", i(9, "", {key = "i9"}), t",", nl(),
		t"\t\t\talignItems : ", i(10, "", {key = "i10"}), t",", nl(),
		t"\t\t\titems:[]", nl(),
		t"\t\t});", nl()
	}),
	s({trig = "sapcomponent", descr = "(sapcomponent)", priority = -1000, trigEngine = te("w")}, {
		t"sap.ui.controller(\"", i(1, "", {key = "i1"}), t"\", {", nl(),
		t"   onInit: function(){", nl(),
		t"   },", nl(),
		t"   onAfterRendering: function() {", nl(),
		t"   },", nl(),
		t"   onAfterRendering: function() {", nl(),
		t"   },", nl(),
		t"   onExit: function() {", nl(),
		t"   },", nl(),
		t"});", nl()
	}),
	s({trig = "sapminput", descr = "(sapminput)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.Input({", nl(),
		t"\tvalue :", i(2, "", {key = "i2"}), t",", nl(),
		t"\twidth : ", i(3, "", {key = "i3"}), t",", nl(),
		t"\tenabled :", i(4, "", {key = "i4"}), t",", nl(),
		t"\tvisible :", i(5, "", {key = "i5"}), t",", nl(),
		t"\tvalueState :", i(6, "", {key = "i6"}), t",", nl(),
		t"\tname : ", i(7, "", {key = "i7"}), t",", nl(),
		t"\tplaceholder : ", i(8, "", {key = "i8"}), t",", nl(),
		t"\teditable : ", i(9, "", {key = "i9"}), t",", nl(),
		t"\ttype : ", i(10, "", {key = "i10"}), t",", nl(),
		t"\tmaxLength :", i(11, "", {key = "i11"}), t",", nl(),
		t"\tvalueStateText :", i(12, "", {key = "i12"}), t",", nl(),
		t"\tshowValueStateMessage :", i(13, "", {key = "i13"}), t",", nl(),
		t"\tdateFormat :", i(14, "", {key = "i14"}), t",", nl(),
		t"\tshowValueHelp :", i(15, "", {key = "i15"}), t",", nl(),
		t"\tshowSuggestion :", i(16, "", {key = "i16"}), t",", nl(),
		t"\tvalueHelpOnly :", i(17, "", {key = "i17"}), t",", nl(),
		t"\tfilterSuggests :", i(18, "", {key = "i18"}), t",", nl(),
		t"\tmaxSuggestionWidth :", i(19, "", {key = "i19"}), t",", nl(),
		t"\tstartSuggestion : ", i(20, "", {key = "i20"}), t",", nl(),
		t"\tshowTableSuggestionValueHelp : ", i(21, "", {key = "i21"}), t",", nl(),
		t"\tdescription : ", i(22, "", {key = "i22"}), t",", nl(),
		t"\tfieldWidth : ", i(23, "", {key = "i23"}), t",", nl(),
		t"\tvalueLiveUpdate :", i(24, "", {key = "i24"}), t",", nl(),
		t"\tsuggestionItems  :[", i(25, "", {key = "i25"}), t"],", nl(),
		t"\tsuggestionColumns : [", i(26, "", {key = "i26"}), t"],", nl(),
		t"\tsuggestionRows : [", i(27, "", {key = "i27"}), t"],", nl(),
		t"\tliveChange : ", i(28, "", {key = "i28"}), t",", nl(),
		t"\tvalueHelpRequest :", i(29, "", {key = "i29"}), t",", nl(),
		t"\tsuggest : ", i(30, "", {key = "i30"}), t",", nl(),
		t"\tsuggestionItemSelected : ", i(31, "", {key = "i31"}), nl(),
		t"});"
	}),
	s({trig = "_sthis", descr = "(_sthis)", priority = -1000, trigEngine = te("w")}, {
		t"var _self = this;", nl()
	}),
	s({trig = "sapmresponsivepopup", descr = "(sapmresponsivepopup)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.m.ResponsivePopover({", nl(),
		t"\t\t\tplacement :", i(2, "", {key = "i2"}), t" ,//sap.m.PlacementType (default: sap.m.PlacementType.Right)", nl(),
		t"\t\t\tshowHeader :", i(3, "", {key = "i3"}), t" ,//boolean (default: true)", nl(),
		t"\t\t\ttitle : ", i(4, "", {key = "i4"}), t",//string", nl(),
		t"\t\t\ticon :", i(5, "", {key = "i5"}), t" ,//sap.ui.core.URI", nl(),
		t"\t\t\tmodal :", i(6, "", {key = "i6"}), t" ,// boolean", nl(),
		t"\t\t\toffsetX :", i(7, "", {key = "i7"}), t", //int", nl(),
		t"\t\t\toffsetY :", i(8, "", {key = "i8"}), t", //int", nl(),
		t"\t\t\tcontentWidth : ", i(9, "", {key = "i9"}), t",//sap.ui.core.CSSSize", nl(),
		t"\t\t\tcontentHeight :", i(10, "", {key = "i10"}), t", //sap.ui.core.CSSSize", nl(),
		t"\t\t\thorizontalScrolling :", i(11, "", {key = "i11"}), t", //boolean", nl(),
		t"\t\t\tverticalScrolling :", i(12, "", {key = "i12"}), t", //boolean", nl(),
		t"\t\t\tshowCloseButton :", i(13, "", {key = "i13"}), t", //boolean (default: true)", nl(),
		t"\t\t\t//Aggregations", nl(),
		t"\t\t\tcontent :", i(14, "", {key = "i14"}), t",  //sap.ui.core.Control[]", nl(),
		t"\t\t\tcustomHeader :", i(15, "", {key = "i15"}), t",  //sap.m.IBar", nl(),
		t"\t\t\tsubHeader : ", i(16, "", {key = "i16"}), t", //sap.m.IBar", nl(),
		t"\t\t\tbeginButton :", i(17, "", {key = "i17"}), t",  //sap.m.Button", nl(),
		t"\t\t\tendButton : ", i(18, "", {key = "i18"}), t", //sap.m.Button", nl(),
		t"\t\t\t//Associations", nl(),
		t"\t\t\tinitialFocus : ", i(19, "", {key = "i19"}), t", //string | sap.ui.core.Control", nl(),
		t"\t\t\t//Events", nl(),
		t"\t\t\tbeforeOpen :", i(20, "", {key = "i20"}), t",  //fnListenerFunction or [fnListenerFunction, oListenerObject] or [oData, fnListenerFunction, oListenerObject]", nl(),
		t"\t\t\tafterOpen : ", i(21, "", {key = "i21"}), t", //fnListenerFunction or [fnListenerFunction, oListenerObject] or [oData, fnListenerFunction, oListenerObject]", nl(),
		t"\t\t\tbeforeClose : ", i(22, "", {key = "i22"}), t", //fnListenerFunction or [fnListenerFunction, oListenerObject] or [oData, fnListenerFunction, oListenerObject]", nl(),
		t"\t\t\tafterClose : ", i(23, "", {key = "i23"}), t" //fnList", nl(),
		t"\t\t});", nl()
	}),
	s({trig = "sapicon", descr = "(sapicon)", priority = -1000, trigEngine = te("w")}, {
		t"var ", i(1, "", {key = "i1"}), t" = new sap.ui.core.Icon({", nl(),
		t"\t\t\t\tsrc :", i(2, "", {key = "i2"}), t" , //sap.ui.core.URI", nl(),
		t"\t\t\t\tsize :", i(3, "", {key = "i3"}), t" , //sap.ui.core.CSSSize", nl(),
		t"\t\t\t\tcolor :", i(4, "", {key = "i4"}), t" , //sap.ui.core.CSSColor", nl(),
		t"\t\t\t\thoverColor : ", i(5, "", {key = "i5"}), t" ,  // sap.ui.core.CSSColor", nl(),
		t"\t\t\t\tactiveColor :", i(6, "", {key = "i6"}), t" , //sap.ui.core.CSSColor", nl(),
		t"\t\t\t\twidth :", i(7, "", {key = "i7"}), t" , //sap.ui.core.CSSSize", nl(),
		t"\t\t\t\theight : ", i(8, "", {key = "i8"}), t" ,//sap.ui.core.CSSSize", nl(),
		t"\t\t\t\tbackgroundColor :", cp(8), t" , //sap.ui.core.CSSColor", nl(),
		t"\t\t\t\thoverBackgroundColor :", i(9, "", {key = "i9"}), t" , //sap.ui.core.CSSColor", nl(),
		t"\t\t\t\tactiveBackgroundColor :", i(10, "", {key = "i10"}), t" , //sap.ui.core.CSSColor", nl(),
		t"\t\t\t\tvisible :", i(11, "", {key = "i11"}), t" , //boolean (default: true)", nl(),
		t"\t\t\t\tdecorative : ", i(12, "", {key = "i12"}), t" ,//boolean (default: true)", nl(),
		t"\t\t\t});"
	}),
	s({trig = "extendVerticalL", descr = "(extendVerticalL)", priority = -1000, trigEngine = te("w")}, {
		t"sap.ui.layout.VerticalLayout.extend(\"", i(1, "", {key = "i1"}), t"\", {", nl(),
		t"    metadata: {", nl(),
		t"\tproperties: {", nl(),
		t"\t  \t", i(2, "", {key = "i2"}), nl(),
		t"\t},", nl(),
		t"\taggregations: {", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t},", nl(),
		t"\tevents: {", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t}", nl(),
		t"    },", nl(),
		t"   init: function(){", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"    },", nl(),
		nl(),
		t"    renderer: \"", i(6, "", {key = "i6"}), t"\"", nl(),
		t"});"
	}),
	s({trig = "extendHorizontalL", descr = "(extendHorizontalL)", priority = -1000, trigEngine = te("w")}, {
		t"sap.ui.layout.HorizontalLayout.extend(\"", i(1, "", {key = "i1"}), t"\", {", nl(),
		t"    metadata: {", nl(),
		t"\tproperties: {", nl(),
		t"\t  \t", i(2, "", {key = "i2"}), nl(),
		t"\t},", nl(),
		t"\taggregations: {", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t},", nl(),
		t"\tevents: {", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t}", nl(),
		t"    },", nl(),
		t"   init: function(){", nl(),
		t"\t", i(5, "", {key = "i5"}), nl(),
		t"    },", nl(),
		nl(),
		t"    renderer: \"", i(6, "", {key = "i6"}), t"\"", nl(),
		t"});"
	}),
})
