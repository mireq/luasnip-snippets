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
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}},
	{},
	{},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{},
	{{0, 0}},
	{},
	{},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
}
ls.add_snippets("yii", {
	s({trig = "yse", descr = "(yse)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->session[\'", i(0, "", {key = "i0"}), t"\'];", nl()
	}),
	s({trig = "yrd", descr = "(yrd)", priority = -1000, trigEngine = te("w")}, {
		t"$this->renderDynamic(\'", i(0, "callback", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "ycas", descr = "(ycas)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->cache->set(\'", i(1, "key", {key = "i1"}), t"\', ", i(2, "value", {key = "i2"}), t", ", i(3, "expire", {key = "i3"}), t", new C", i(4, "", {key = "i4"}), t"CacheDependency(", i(0, "", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ycad", descr = "(ycad)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->cache->add(\'", i(1, "key", {key = "i1"}), t"\', ", i(2, "value", {key = "i2"}), t", ", i(3, "expire", {key = "i3"}), t", new C", i(4, "", {key = "i4"}), t"CacheDependency(", i(0, "", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yregcf", descr = "(yregcf)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->clientScript->registerCssFile(\'", i(0, "file", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "yreqtype", descr = "(yreqtype)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->request->requestType", nl()
	}),
	s({trig = "yisajax", descr = "(yisajax)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->request->isAjaxRequest", nl()
	}),
	s({trig = "yt", descr = "(yt)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::t(\'", i(1, "category", {key = "i1"}), t"\', \'", i(2, "message", {key = "i2"}), t"\',array(", i(0, "", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yregc", descr = "(yregc)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->clientScript->registerCss(\'", i(1, "id", {key = "i1"}), t"\', \'", i(0, "", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "ylog", descr = "(ylog)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::log(\'", i(1, "msg", {key = "i1"}), t"\', \'", i(0, "info", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "yuserip", descr = "(yuserip)", priority = -1000, trigEngine = te("w")}, {
		t"YYii::app()->request->userHostAddress", nl()
	}),
	s({trig = "yregsf", descr = "(yregsf)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->clientScript->registerScriptFile(\'", i(1, "scriptUrl", {key = "i1"}), t"\', CClientScript::POS_", i(0, "END", {key = "i0"}), t");", nl()
	}),
	s({trig = "ylinkpager", descr = "(ylinkpager)", priority = -1000, trigEngine = te("w")}, {
		t"$this->widget(\'CLinkPager\', array(\'pages\'=>$pages,\'header\'=>\'", i(0, "", {key = "i0"}), t"\'}))", nl()
	}),
	s({trig = "yjec", descr = "(yjec)", priority = -1000, trigEngine = te("w")}, {
		t"CJSON::encode(", i(0, "text", {key = "i0"}), t");", nl()
	}),
	s({trig = "yadp", descr = "(yadp)", priority = -1000, trigEngine = te("w")}, {
		t"$dataProvider = new CActiveDataProvider(\'", i(1, "", {key = "i1"}), t"\', array(", nl(),
		t"  \'criteria\' => array(", nl(),
		t"\t\t\'condition\' => \'", i(2, "", {key = "i2"}), t"\',", nl(),
		t"\t\t\'order\' => \'", i(3, "", {key = "i3"}), t"\',", nl(),
		t"\t\t\'with\' => array(\'", i(4, "", {key = "i4"}), t"\')", nl(),
		t"\t),", nl(),
		t"//\'pagination\' => false,", nl(),
		t"\t\'pagination\' => array(", nl(),
		t"\t\t\'pageSize\'=>", i(5, "", {key = "i5"}), t",", nl(),
		t"\t),", nl(),
		t"));", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"// $dataProvider->getData() will return a list of Post objects", nl()
	}),
	s({trig = "yrdi", descr = "(yrdi)", priority = -1000, trigEngine = te("w")}, {
		t"$this->renderDynamic(\'", i(1, "callback", {key = "i1"}), t"\', array(\'", i(2, "key", {key = "i2"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yregs", descr = "(yregs)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->clientScript->registerScript(\'", i(1, "id", {key = "i1"}), t"\', \'", i(2, "", {key = "i2"}), t"\', CClientScript::POS_", i(0, "READY", {key = "i0"}), t");", nl()
	}),
	s({trig = "ycaf", descr = "(ycaf)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->cache->flush();", nl()
	}),
	s({trig = "yco", descr = "(yco)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->request->cookies[\'", i(0, "", {key = "i0"}), t"\']", nl()
	}),
	s({trig = "yuser", descr = "(yuser)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->user->", nl()
	}),
	s({trig = "yrf", descr = "(yrf)", priority = -1000, trigEngine = te("w")}, {
		t"$this->refresh();", nl()
	}),
	s({trig = "yimp", descr = "(yimp)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::import(\'", i(0, "", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "ytrace", descr = "(ytrace)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::trace(\'", i(0, "msg", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "ypar", descr = "(ypar)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->params[\'", i(0, "", {key = "i0"}), t"\']", nl()
	}),
	s({trig = "yispost", descr = "(yispost)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->request->isPostRequest", nl()
	}),
	s({trig = "yifisajax", descr = "(yifisajax)", priority = -1000, trigEngine = te("w")}, {
		t"if(Yii::app()->request->isAjaxRequest == TRUE)", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "ydelcache", descr = "(ydelcache)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->cache->delete(\'", i(0, "key", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "yr", descr = "(yr)", priority = -1000, trigEngine = te("w")}, {
		t"$this->render(\'", i(1, "view", {key = "i1"}), t"\',array(\'", i(2, "key", {key = "i2"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yre", descr = "(yre)", priority = -1000, trigEngine = te("w")}, {
		t"$this->redirect(array(\'", i(1, "controller", {key = "i1"}), t"/", i(0, "action", {key = "i0"}), t"\'));", nl()
	}),
	s({trig = "ycag", descr = "(ycag)", priority = -1000, trigEngine = te("w")}, {
		t"Yii::app()->cache->get(\'", i(0, "key", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "yrt", descr = "(yrt)", priority = -1000, trigEngine = te("w")}, {
		t"$this->renderText(\'", i(0, "", {key = "i0"}), t"\');", nl()
	}),
	s({trig = "yrp", descr = "(yrp)", priority = -1000, trigEngine = te("w")}, {
		t"$this->renderPartial(\'", i(1, "view", {key = "i1"}), t"\',array(\'", i(2, "key", {key = "i2"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ycountm", descr = "(ycountm)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->count(", i(2, "", {key = "i2"}), t", array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ycountbs", descr = "(ycountbs)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->countBySql(", i(2, "sql", {key = "i2"}), t",array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yupdatea", descr = "(yupdatea)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->updateAll(", i(2, "array(\'attributes\')", {key = "i2"}), t", ", i(3, "", {key = "i3"}), t",array(\'", i(4, "key", {key = "i4"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yupdatebp", descr = "(yupdatebp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->updateByPk(", i(2, "pk", {key = "i2"}), t", ", i(3, "array(\'attributes\')", {key = "i3"}), t", ", i(4, "", {key = "i4"}), t",array(\'", i(5, "key", {key = "i5"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ydela", descr = "(ydela)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->deleteAll(", i(2, "", {key = "i2"}), t",array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ydelbp", descr = "(ydelbp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->deleteByPk(", i(2, "pk", {key = "i2"}), t", ", i(3, "", {key = "i3"}), t", array(\'", i(4, "key", {key = "i4"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfind", descr = "(yfind)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->find(", i(2, "", {key = "i2"}), t",array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfinda", descr = "(yfinda)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->findAll(", i(2, "", {key = "i2"}), t",array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfindbp", descr = "(yfindbp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->findByPk(", i(2, "pk", {key = "i2"}), t", ", i(3, "", {key = "i3"}), t", array(\'", i(4, "key", {key = "i4"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfindabp", descr = "(yfindabp)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->findAllByPk(", i(2, "pk", {key = "i2"}), t", ", i(3, "", {key = "i3"}), t",array(\'", i(4, "key", {key = "i4"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfindbs", descr = "(yfindbs)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->findBySql(", i(2, "sql", {key = "i2"}), t", array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yfindaba", descr = "(yfindaba)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->findAllByAttributes(array(\'", i(2, "attributeName", {key = "i2"}), t"\'=>", i(3, "attributeValue", {key = "i3"}), t"), ", i(4, "", {key = "i4"}), t", array(\'", i(5, "key", {key = "i5"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "yexists", descr = "(yexists)", priority = -1000, trigEngine = te("w")}, {
		i(1, "ModelName", {key = "i1"}), t"::model()->exists(", i(2, "", {key = "i2"}), t", array(\'", i(3, "key", {key = "i3"}), t"\'=>", i(0, "value", {key = "i0"}), t"));", nl()
	}),
	s({trig = "ymodel", descr = "(ymodel)", priority = -1000, trigEngine = te("w")}, {
		t"<?php", nl(),
		nl(),
		t"class ", i(1, "ModelName", {key = "i1"}), t" extends ", i(2, "CActiveRecord", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t/**", nl(),
		t"\t * Returns the static model of the specified AR class.", nl(),
		t"\t * @return CActiveRecord the static model class", nl(),
		t"\t */", nl(),
		t"\tpublic static function model($className=__CLASS__)", nl(),
		t"\t{", nl(),
		t"\t\treturn parent::model($className);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * @return string the associated database table name", nl(),
		t"\t */", nl(),
		t"\tpublic function tableName()", nl(),
		t"\t{", nl(),
		t"\t\treturn \'", i(0, "table_name", {key = "i0"}), t"\';", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * @return array validation rules for model attributes.", nl(),
		t"\t */", nl(),
		t"\tpublic function rules()", nl(),
		t"\t{", nl(),
		t"\t\treturn array(", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * @return array relational rules.", nl(),
		t"\t */", nl(),
		t"\tpublic function relations()", nl(),
		t"\t{", nl(),
		t"\t\treturn array(", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/**", nl(),
		t"\t * @return array customized attribute labels (name=&gt;label)", nl(),
		t"\t */", nl(),
		t"\tpublic function attributeLabels()", nl(),
		t"\t{", nl(),
		t"\t\treturn array(", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "ycontroller", descr = "(ycontroller)", priority = -1000, trigEngine = te("w")}, {
		t"<?php", nl(),
		nl(),
		t"/**", nl(),
		t" * ", i(1, "", {key = "i1"}), nl(),
		t" */", nl(),
		t"class ", i(2, "Site", {key = "i2"}), t"Controller extends ", i(3, "CController", {key = "i3"}), nl(),
		t"{", nl(),
		t"\t  public function action", i(4, "Index", {key = "i4"}), t"()", nl(),
		t"\t  {", nl(),
		t"\t      ", i(0, "", {key = "i0"}), nl(),
		t"\t  }", nl(),
		nl(),
		t"\t// -----------------------------------------------------------", nl(),
		t"\t// Uncomment the following methods and override them if needed", nl(),
		t"\t/*", nl(),
		t"\tpublic function filters()", nl(),
		t"\t{", nl(),
		t"\t\t// return the filter configuration for this controller, e.g.:", nl(),
		t"\t\treturn array(", nl(),
		t"\t\t\t\'inlineFilterName\',", nl(),
		t"\t\t\tarray(", nl(),
		t"\t\t\t\t\'class\'=>\'path.to.FilterClass\',", nl(),
		t"\t\t\t\t\'propertyName\'=>\'propertyValue\',", nl(),
		t"\t\t\t),", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function actions()", nl(),
		t"\t{", nl(),
		t"\t\t// return external action classes, e.g.:", nl(),
		t"\t\treturn array(", nl(),
		t"\t\t\t\'action1\'=>\'path.to.ActionClass\',", nl(),
		t"\t\t\t\'action2\'=>array(", nl(),
		t"\t\t\t\t\'class\'=>\'path.to.AnotherActionClass\',", nl(),
		t"\t\t\t\t\'propertyName\'=>\'propertyValue\',", nl(),
		t"\t\t\t),", nl(),
		t"\t\t);", nl(),
		t"\t}", nl(),
		t"\t*/", nl(),
		t"}", nl()
	}),
	s({trig = "yact", descr = "(yact)", priority = -1000, trigEngine = te("w")}, {
		t"public function action", i(1, "Index", {key = "i1"}), t"(", i(2, "params", {key = "i2"}), t")", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		nl()
	}),
})
