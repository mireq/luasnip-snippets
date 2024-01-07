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
	{1, 2},
	{2, 12, 13, 14, 15, 16, 17},
	{2, 3, 4, 5, 10},
	{2, 12, 13, 14},
	{2, 10},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1},
	{1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6},
	{0},
	{0},
	{1, 2, 3, 4},
	{1},
	{0},
	{0, 1, 2},
	{1, 2},
	{0, 1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3, 4},
	{1, 2, 4},
	{0, 1, 2, 4},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{0, 1},
	{1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{1, 2, 3, 4},
	{0, 1, 2, 10, 11},
	{0, 1, 2, 10, 11},
	{0, 2, 3, 4},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{1},
	{0},
	{0},
	{0},
	{1},
	{1},
	{1, 2},
	{0, 1, 2},
	{1},
	{1, 2},
	{1},
	{1, 2, 3, 4},
	{1, 2},
	{0},
	{1},
	{1},
	{1, 2},
	{0},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{0, 2},
	{0},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{1, 2, 3},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{1, 2, 3},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1},
	{0},
	{1},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1},
	{1},
	{0, 1, 2},
	{1, 2, 3},
	{0, 1, 2},
	{1, 2},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5, 6},
	{1, 2, 3, 5},
	{1, 2, 3, 5},
	{1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4},
	{1, 2, 3},
	{1, 3, 4, 5, 6},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3},
	{1},
	{0, 1},
	{1},
	{1, 2},
	{0, 1, 2},
	{2, 10, 11, 12, 13},
	{2, 12, 13, 14, 15, 16, 17},
	{2, 10},
	{2, 12, 13, 14},
	{},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 5},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 6},
	{1},
	{1, 2},
	{0, 1, 2},
	{1, 2, 3, 4, 5, 6, 7, 8},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{1, 2, 3, 4},
	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
	{1, 2, 3, 4, 5, 6, 7, 8},
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6, 7, 8},
	{1, 2, 3, 4, 5, 6, 7},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{1, 2},
	{0},
	{0, 1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6},
}
ls.add_snippets("rails", {
	s({trig = "art", descr = "(art) \"Test Assert Redirected To (art)\"", priority = -50, trigEngine = te("")}, {
		t"assert_redirected_to ", d(1, function(args) return sn(nil, {t"action: \"", i(1, "index", {key = "i1"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "artnp", descr = "(artnp) \"assert_redirected_to (nested path)\"", priority = -50, trigEngine = te("")}, {
		t"assert_redirected_to ", d(1, function(args) return sn(nil, {i(1, "parent", {key = "i12"}), t"_", i(2, "child", {key = "i13"}), t"_path(", i(3, "@", {key = "i14"}), d(4, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i15"}), t", ", i(5, "@", {key = "i16"}), d(6, function(args) return sn(nil, {cp(13)}) end, {}, {key = "i17"}), t")"}) end, {}, {key = "i2"})
	}),
	s({trig = "artnpp", descr = "(artnpp) \"assert_redirected_to (nested path plural)\"", priority = -50, trigEngine = te("")}, {
		t"assert_redirected_to ", d(1, function(args) return sn(nil, {i(1, "parent", {key = "i2"}), t"_", i(2, "child", {key = "i3"}), t"_path(", i(3, "@", {key = "i4"}), d(4, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i5"}), t")"}) end, {}, {key = "i10"})
	}),
	s({trig = "artp", descr = "(artp) \"assert_redirected_to (path)\"", priority = -50, trigEngine = te("")}, {
		t"assert_redirected_to ", d(1, function(args) return sn(nil, {i(1, "model", {key = "i12"}), t"_path(", i(2, "@", {key = "i13"}), d(3, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i14"}), t")"}) end, {}, {key = "i2"})
	}),
	s({trig = "artpp", descr = "(artpp) \"assert_redirected_to (path plural)\"", priority = -50, trigEngine = te("")}, {
		t"assert_redirected_to ", d(1, function(args) return sn(nil, {i(1, "model", {key = "i2"}), t"s_path"}) end, {}, {key = "i10"})
	}),
	s({trig = "asd", descr = "(asd) \"assert_difference\"", priority = -50, trigEngine = te("")}, {
		t"assert_difference \"", i(1, "Model", {key = "i1"}), t".", i(2, "count", {key = "i2"}), t"\", ", i(3, "1", {key = "i3"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "asnd", descr = "(asnd) \"assert_no_difference\"", priority = -50, trigEngine = te("")}, {
		t"assert_no_difference \"", i(1, "Model", {key = "i1"}), t".", i(2, "count", {key = "i2"}), t"\" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "asre", descr = "(asre) \"Test Assert Response (are)\"", priority = -50, trigEngine = te("")}, {
		t"assert_response :", i(1, "success", {key = "i1"}), t", @response.body", i(0, "", {key = "i0"})
	}),
	s({trig = "asrj", descr = "(asrj) \"assert_rjs\"", priority = -50, trigEngine = te("")}, {
		t"assert_rjs :", i(1, "replace", {key = "i1"}), t", ", d(2, function(args) return sn(nil, {t"\"", i(1, "dom id", {key = "i3"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "ass", descr = "(ass) \"assert_select\"", priority = -50, trigEngine = te("")}, {
		t"assert_select \'", i(1, "path", {key = "i1"}), t"\'", d(2, function(args) return sn(nil, {t", ", i(1, "text", {key = "i3"}), t": ", d(2, function(args) return sn(nil, {t"\'", i(1, "inner_html", {key = "i5"}), t"\'"}) end, {}, {key = "i4"})}) end, {}, {key = "i2"}), d(3, function(args) return sn(nil, {t" do", nl(),
i(1, "", {key = "i0"}), t"\t$0", nl(),
t"en"}) end, {}, {key = "i6"})
	}),
	s({trig = "ba", descr = "(ba)", priority = -1000, trigEngine = te("w")}, {
		t"before_action :", i(0, "method", {key = "i0"})
	}),
	s({trig = "bf", descr = "(bf)", priority = -1000, trigEngine = te("w")}, {
		t"before_filter :", i(0, "method", {key = "i0"})
	}),
	s({trig = "bt", descr = "(bt) \"belongs_to (bt)\"", priority = -50, trigEngine = te("")}, {
		t"belongs_to :", i(1, "object", {key = "i1"}), d(2, function(args) return sn(nil, {t", class_name: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1::\\u$0)")}, ""), {key = "i3"}) }) end, {k"i1"}), t"\", foreign_key: \"", d(2, function(args) return sn(nil, {cp(1), t"_id"}) end, {}, {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "btp", descr = "(btp)", priority = -1000, trigEngine = te("w")}, {
		t"belongs_to :", i(1, "association", {key = "i1"}), t", polymorphic: true"
	}),
	s({trig = "crw", descr = "(crw) \"cattr_accessor\"", priority = -50, trigEngine = te("")}, {
		t"cattr_accessor :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "defcreate", descr = "(defcreate) \"def create - resource\"", priority = -50, trigEngine = te("")}, {
		t"def create", nl(),
		t"\t@", i(1, "model", {key = "i1"}), t" = ", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1::\\u$0)")}, "\t"), {key = "i2"}) }) end, {k"i1"}), t".new(params[:", cp(1), t"])", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\trespond_to do |wants|", nl(),
		t"\t\tif @", cp(1), t".save", nl(),
		t"\t\t\tflash[:notice] = \'", cp(2), t" was successfully created.\'", nl(),
		t"\t\t\twants.html { redirect_to(@", cp(1), t") }", nl(),
		t"\t\t\twants.json { render json: @", cp(1), t", status: :created, location: @", cp(1), t" }", nl(),
		t"\t\telse", nl(),
		t"\t\t\twants.html { render action: \"new\" }", nl(),
		t"\t\t\twants.json { render json: @", cp(1), t".errors, status: :unprocessable_entity }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		t"end", nl()
	}),
	s({trig = "defdestroy", descr = "(defdestroy)", priority = -1000, trigEngine = te("w")}, {
		t"def destroy", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(2, "ModelClassName", {key = "i2"}), t".find(params[:id])", nl(),
		t"\t@", cp(1), t".destroy", nl(),
		nl(),
		t"\trespond_to do |format|", nl(),
		t"\t\tformat.html { redirect_to(", cp(1), t"s_url) }", nl(),
		t"\t\tformat.json  { head :ok }", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "defedit", descr = "(defedit)", priority = -1000, trigEngine = te("w")}, {
		t"def edit", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(0, "ModelClassName", {key = "i0"}), t".find(params[:id])", nl(),
		t"end"
	}),
	s({trig = "defindex", descr = "(defindex)", priority = -1000, trigEngine = te("w")}, {
		t"def index", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(2, "ModelClassName", {key = "i2"}), t".all", nl(),
		nl(),
		t"\trespond_to do |format|", nl(),
		t"\t\tformat.html # index.html.erb", nl(),
		t"\t\tformat.json  { render json: @", cp(1), t"s }", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "defnew", descr = "(defnew)", priority = -1000, trigEngine = te("w")}, {
		t"def new", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(2, "ModelClassName", {key = "i2"}), t".new", nl(),
		nl(),
		t"\trespond_to do |format|", nl(),
		t"\t\tformat.html # new.html.erb", nl(),
		t"\t\tformat.json  { render json: @", cp(1), t" }", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "defshow", descr = "(defshow)", priority = -1000, trigEngine = te("w")}, {
		t"def show", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(2, "ModelClassName", {key = "i2"}), t".find(params[:id])", nl(),
		nl(),
		t"\trespond_to do |format|", nl(),
		t"\t\tformat.html # show.html.erb", nl(),
		t"\t\tformat.json  { render json: @", cp(1), t" }", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "defupdate", descr = "(defupdate)", priority = -1000, trigEngine = te("w")}, {
		t"def update", nl(),
		t"\t@", i(1, "model_class_name", {key = "i1"}), t" = ", i(2, "ModelClassName", {key = "i2"}), t".find(params[:id])", nl(),
		nl(),
		t"\trespond_to do |format|", nl(),
		t"\t\tif @", cp(1), t".update(", cp(1), t"_params)", nl(),
		t"\t\t\tflash[:notice] = \'", cp(2), t" was successfully updated.\'", nl(),
		t"\t\t\tformat.html { redirect_to(@", cp(1), t") }", nl(),
		t"\t\t\tformat.json  { head :ok }", nl(),
		t"\t\telse", nl(),
		t"\t\t\tformat.html { render action: \'edit\' }", nl(),
		t"\t\t\tformat.json  { render json: @", cp(1), t".errors, status: :unprocessable_entity }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "defparams", descr = "(defparams)", priority = -1000, trigEngine = te("w")}, {
		t"def ", i(1, "model_class_name", {key = "i1"}), t"_params", nl(),
		t"\tparams.require(:", cp(1), t").permit()", nl(),
		t"end"
	}),
	s({trig = "dele", descr = "(dele) delegate .. to .. prefix .. allow_nil", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"delegate :", i(1, "methods", {key = "i1"}), t", to: :", i(0, "object", {key = "i0"})
		},
		{
			t"delegate :", i(1, "methods", {key = "i1"}), t", to: :", i(2, "object", {key = "i2"}), t", prefix: :", i(3, "prefix", {key = "i3"}), t", allow_nil: ", i(0, "allow_nil", {key = "i0"})
		},
	})),
	s({trig = "amc", descr = "(amc)", priority = -1000, trigEngine = te("w")}, {
		t"alias_method_chain :", i(1, "method_name", {key = "i1"}), t", :", i(0, "feature", {key = "i0"})
	}),
	s({trig = "flash", descr = "(flash) \"flash[...]\"", priority = -50, trigEngine = te("")}, {
		t"flash[:", i(1, "notice", {key = "i1"}), t"] = \"", i(2, "Successfully created...", {key = "i2"}), t"\"", i(0, "", {key = "i0"})
	}),
	s({trig = "habtm", descr = "(habtm) \"has_and_belongs_to_many (habtm)\"", priority = -50, trigEngine = te("")}, {
		t"has_and_belongs_to_many :", i(1, "object", {key = "i1"}), d(2, function(args) return sn(nil, {t", join_table: \"", i(1, "table_name", {key = "i3"}), t"\", foreign_key: \"", d(2, function(args) return sn(nil, {cp(1), t"_id"}) end, {}, {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "hm", descr = "(hm) \"has_many (hm)\"", priority = -50, trigEngine = te("")}, {
		t"has_many :", i(1, "object", {key = "i1"}), t"s", d(2, function(args) return sn(nil, {t", class_name: \"", cp(1), t"\", foreign_key: \"", i(1, "reference", {key = "i4"}), t"_id\""}) end, {}, {key = "i2"})
	}),
	s({trig = "hmd", descr = "(hmd) \"has_many dependent: :destroy\"", priority = -50, trigEngine = te("")}, {
		t"has_many :", i(1, "object", {key = "i1"}), t"s", d(2, function(args) return sn(nil, {t", class_name: \"", cp(1), t"\", foreign_key: \"", i(1, "reference", {key = "i4"}), t"_id\""}) end, {}, {key = "i2"}), t", dependent: :destroy", i(0, "", {key = "i0"})
	}),
	s({trig = "hmt", descr = "(hmt) \"has_many (through)\"", priority = -50, trigEngine = te("")}, {
		t"has_many :", i(1, "objects", {key = "i1"}), t", through: :", i(2, "join_association", {key = "i2"}), d(3, function(args) return sn(nil, {t", source: :", d(1, function(args) return sn(nil, {cp(2), t"_table_foreign_key_to_", cp(1), t"_table"}) end, {}, {key = "i4"})}) end, {}, {key = "i3"})
	}),
	s({trig = "ho", descr = "(ho) \"has_one (ho)\"", priority = -50, trigEngine = te("")}, {
		t"has_one :", i(1, "object", {key = "i1"}), d(2, function(args) return sn(nil, {t", class_name: \"", d(1, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[[:alpha:]]+|(_)", "(?1::\\u$0)")}, ""), {key = "i3"}) }) end, {k"i1"}), t"\", foreign_key: \"", d(2, function(args) return sn(nil, {cp(1), t"_id"}) end, {}, {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "hod", descr = "(hod)", priority = -1000, trigEngine = te("w")}, {
		t"has_one :", i(1, "object", {key = "i1"}), t", dependent: :", i(0, "destroy", {key = "i0"})
	}),
	s({trig = "i18", descr = "(i18)", priority = -1000, trigEngine = te("w")}, {
		t"I18n.t(\'", i(1, "type.key", {key = "i1"}), t"\')"
	}),
	s({trig = "ist", descr = "(ist)", priority = -1000, trigEngine = te("w")}, {
		t"<%= image_submit_tag(\'", i(1, "agree.png", {key = "i1"}), t"\', id: \'", i(2, "id", {key = "i2"}), t"\'", i(0, "", {key = "i0"}), t") %>"
	}),
	s({trig = "log", descr = "(log)", priority = -1000, trigEngine = te("w")}, {
		t"Rails.logger.", i(1, "debug", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "log2", descr = "(log2)", priority = -1000, trigEngine = te("w")}, {
		t"RAILS_DEFAULT_LOGGER.", i(1, "debug", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "logd", descr = "(logd) \"logger.debug\"", priority = -50, trigEngine = te("")}, {
		i(1, "Rails.", {key = "i1"}), t"logger.debug { \"", i(1, "message", {key = "i1"}), t"\" }", i(0, "", {key = "i0"})
	}),
	s({trig = "loge", descr = "(loge) \"logger.error\"", priority = -50, trigEngine = te("")}, {
		t"logger.error { \"", i(1, "message", {key = "i1"}), t"\" }", i(0, "", {key = "i0"})
	}),
	s({trig = "logf", descr = "(logf) \"logger.fatal\"", priority = -50, trigEngine = te("")}, {
		t"logger.fatal { \"", i(1, "message", {key = "i1"}), t"\" }", i(0, "", {key = "i0"})
	}),
	s({trig = "logi", descr = "(logi) \"logger.info\"", priority = -50, trigEngine = te("")}, {
		t"logger.info { \"", i(1, "message", {key = "i1"}), t"\" }", i(0, "", {key = "i0"})
	}),
	s({trig = "logw", descr = "(logw) \"logger.warn\"", priority = -50, trigEngine = te("")}, {
		t"logger.warn { \"", i(1, "message", {key = "i1"}), t"\" }", i(0, "", {key = "i0"})
	}),
	s({trig = "mapc", descr = "(mapc)", priority = -1000, trigEngine = te("w")}, {
		i(1, "map", {key = "i1"}), t".", i(2, "connect", {key = "i2"}), t" \'", i(0, "controller/:action/:id", {key = "i0"}), t"\'"
	}),
	s({trig = "mapca", descr = "(mapca) \"map.catch_all\"", priority = -50, trigEngine = te("")}, {
		i(1, "map", {key = "i1"}), t".catch_all \"*", i(2, "anything", {key = "i2"}), t"\", controller: \"", i(3, "default", {key = "i3"}), t"\", action: \"", i(4, "error", {key = "i4"}), t"\"", nl()
	}),
	s({trig = "mapr", descr = "(mapr) \"map.resource\"", priority = -50, trigEngine = te("")}, {
		i(1, "map", {key = "i1"}), t".resource :", i(2, "resource", {key = "i2"}), d(3, function(args) return sn(nil, {t" do |", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i11"}), t"|", nl(),
i(2, "", {key = "i0"}), t"\t$0", nl(),
t"en"}) end, {}, {key = "i10"})
	}),
	s({trig = "maprs", descr = "(maprs) \"map.resources\"", priority = -50, trigEngine = te("")}, {
		i(1, "map", {key = "i1"}), t".resources :", i(2, "resource", {key = "i2"}), d(3, function(args) return sn(nil, {t" do |", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i11"}), t"|", nl(),
i(2, "", {key = "i0"}), t"\t$0", nl(),
t"en"}) end, {}, {key = "i10"})
	}),
	s({trig = "mapwo", descr = "(mapwo) \"map.with_options\"", priority = -50, trigEngine = te("")}, {
		t"${1map}.with_options :", i(1, "controller", {key = "i2"}), t": \'", i(2, "thing", {key = "i3"}), t"\' do |", d(3, function(args) return sn(nil, {cp(3)}) end, {}, {key = "i4"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "mbv", descr = "(mbv)", priority = -1000, trigEngine = te("w")}, {
		t"before_validation :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mbc", descr = "(mbc)", priority = -1000, trigEngine = te("w")}, {
		t"before_create :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mbu", descr = "(mbu)", priority = -1000, trigEngine = te("w")}, {
		t"before_update :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mbs", descr = "(mbs)", priority = -1000, trigEngine = te("w")}, {
		t"before_save :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mbd", descr = "(mbd)", priority = -1000, trigEngine = te("w")}, {
		t"before_destroy :", i(0, "method", {key = "i0"}), nl()
	}),
	s({trig = "mav", descr = "(mav)", priority = -1000, trigEngine = te("w")}, {
		t"after_validation :", i(0, "method", {key = "i0"})
	}),
	s({trig = "maf", descr = "(maf)", priority = -1000, trigEngine = te("w")}, {
		t"after_find :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mat", descr = "(mat)", priority = -1000, trigEngine = te("w")}, {
		t"after_touch :", i(0, "method", {key = "i0"})
	}),
	s({trig = "macr", descr = "(macr)", priority = -1000, trigEngine = te("w")}, {
		t"after_create :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mau", descr = "(mau)", priority = -1000, trigEngine = te("w")}, {
		t"after_update :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mas", descr = "(mas)", priority = -1000, trigEngine = te("w")}, {
		t"after_save :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mad", descr = "(mad)", priority = -1000, trigEngine = te("w")}, {
		t"after_destroy :", i(0, "method", {key = "i0"}), nl()
	}),
	s({trig = "marc", descr = "(marc)", priority = -1000, trigEngine = te("w")}, {
		t"around_create :", i(0, "method", {key = "i0"})
	}),
	s({trig = "maru", descr = "(maru)", priority = -1000, trigEngine = te("w")}, {
		t"around_update :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mars", descr = "(mars)", priority = -1000, trigEngine = te("w")}, {
		t"around_save :", i(0, "method", {key = "i0"})
	}),
	s({trig = "mard", descr = "(mard)", priority = -1000, trigEngine = te("w")}, {
		t"around_destroy :", i(0, "method", {key = "i0"}), nl()
	}),
	s({trig = "mcht", descr = "(mcht)", priority = -1000, trigEngine = te("w")}, {
		t"change_table :", i(1, "table_name", {key = "i1"}), t" do |t|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mp", descr = "(mp) \"map(&:sym_proc)\"", priority = -50, trigEngine = te("")}, {
		t"map(&:", i(1, "id", {key = "i1"}), t")"
	}),
	s({trig = "mrw", descr = "(mrw) \"mattr_accessor\"", priority = -50, trigEngine = te("")}, {
		t"mattr_accessor :", i(0, "attr_names", {key = "i0"})
	}),
	s({trig = "oa", descr = "(oa)", priority = -1000, trigEngine = te("w")}, {
		t"order(\'", i(0, "field", {key = "i0"}), t"\')"
	}),
	s({trig = "od", descr = "(od)", priority = -1000, trigEngine = te("w")}, {
		t"order(\'", i(0, "field", {key = "i0"}), t" DESC\')"
	}),
	s({trig = "pa", descr = "(pa)", priority = -1000, trigEngine = te("w")}, {
		t"params[:", i(1, "id", {key = "i1"}), t"]"
	}),
	s({trig = "ra", descr = "(ra) \"render (action)... (ra)\"", priority = -50, trigEngine = te("")}, {
		t"render action: \"", i(1, "action", {key = "i1"}), t"\""
	}),
	s({trig = "ral", descr = "(ral) \"render (action,layout) (ral)\"", priority = -50, trigEngine = te("")}, {
		t"render action: \"", i(1, "action", {key = "i1"}), t"\", layout: \"", i(2, "layoutname", {key = "i2"}), t"\""
	}),
	s({trig = "rest", descr = "(rest) \"respond_to\"", priority = -50, trigEngine = te("")}, {
		t"respond_to do |wants|", nl(),
		t"\twants.", i(1, "html", {key = "i1"}), d(2, function(args) return sn(nil, {t" { ", i(1, "", {key = "i0"}), t" }"}) end, {}, {key = "i2"}), nl(),
		t"end"
	}),
	s({trig = "rf", descr = "(rf) \"render (file) (rf)\"", priority = -50, trigEngine = te("")}, {
		t"render file: \"", i(1, "filepath", {key = "i1"}), t"\""
	}),
	s({trig = "rfu", descr = "(rfu) \"render (file,use_full_path) (rfu)\"", priority = -50, trigEngine = te("")}, {
		t"render file: \"", i(1, "filepath", {key = "i1"}), t"\", use_full_path: ", i(2, "false", {key = "i2"})
	}),
	s({trig = "ri", descr = "(ri) \"render (inline) (ri)\"", priority = -50, trigEngine = te("")}, {
		t"render inline: \"", i(1, "<%= \'hello\' %>", {key = "i1"}), t"\""
	}),
	s({trig = "ril", descr = "(ril) \"render (inline,locals) (ril)\"", priority = -50, trigEngine = te("")}, {
		t"render inline: \"", i(1, "<%= \'hello\' %>", {key = "i1"}), t"\", locals { ", i(2, ":name", {key = "i2"}), t": \"", i(3, "value", {key = "i3"}), t"\"", i(4, "", {key = "i4"}), t" }"
	}),
	s({trig = "rit", descr = "(rit) \"render (inline,type) (rit)\"", priority = -50, trigEngine = te("")}, {
		t"render inline: \"", i(1, "<%= \'hello\' %>", {key = "i1"}), t"\", type: ", i(2, ":rjson", {key = "i2"})
	}),
	s({trig = "rjson", descr = "(rjson)", priority = -1000, trigEngine = te("w")}, {
		t"render json: \'", i(0, "text to render", {key = "i0"}), t"\'"
	}),
	s({trig = "rl", descr = "(rl) \"render (layout) (rl)\"", priority = -50, trigEngine = te("")}, {
		t"render layout: \"", i(1, "layoutname", {key = "i1"}), t"\""
	}),
	s({trig = "rn", descr = "(rn) \"render (nothing) (rn)\"", priority = -50, trigEngine = te("")}, {
		t"render nothing: ", i(1, "true", {key = "i1"})
	}),
	s({trig = "rns", descr = "(rns) \"render (nothing,status) (rns)\"", priority = -50, trigEngine = te("")}, {
		t"render nothing: ", i(1, "true", {key = "i1"}), t", status: ", i(2, "401", {key = "i2"})
	}),
	s({trig = "rp", descr = "(rp)", priority = -1000, trigEngine = te("w")}, {
		t"render partial: \'", i(0, "item", {key = "i0"}), t"\'"
	}),
	s({trig = "rpc", descr = "(rpc)", priority = -1000, trigEngine = te("w")}, {
		t"render partial: \'", i(1, "item", {key = "i1"}), t"\', collection: ", d(2, function(args) return sn(nil, {t"@", cp(1), t"s"}) end, {}, {key = "i0"})
	}),
	s({trig = "rpl", descr = "(rpl)", priority = -1000, trigEngine = te("w")}, {
		t"render partial: \'", i(1, "item", {key = "i1"}), t"\', locals: { ", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t": ", d(3, function(args) return sn(nil, {t"@", cp(1)}) end, {}, {key = "i0"}), t" }"
	}),
	s({trig = "rpo", descr = "(rpo)", priority = -1000, trigEngine = te("w")}, {
		t"render partial: \'", i(1, "item", {key = "i1"}), t"\', object: ", d(2, function(args) return sn(nil, {t"@", cp(1)}) end, {}, {key = "i0"})
	}),
	s({trig = "rps", descr = "(rps)", priority = -1000, trigEngine = te("w")}, {
		t"render partial: \'", i(1, "item", {key = "i1"}), t"\', status: ", i(0, "500", {key = "i0"})
	}),
	s({trig = "rt", descr = "(rt) \"render (text) (rt)\"", priority = -50, trigEngine = te("")}, {
		t"render text: \"", i(1, "text to render...", {key = "i1"}), t"\""
	}),
	s({trig = "rtl", descr = "(rtl) \"render (text,layout) (rtl)\"", priority = -50, trigEngine = te("")}, {
		t"render text: \"", i(1, "text to render...", {key = "i1"}), t"\", layout: \"", i(2, "layoutname", {key = "i2"}), t"\""
	}),
	s({trig = "rtlt", descr = "(rtlt) \"render (text,layout => true) (rtlt)\"", priority = -50, trigEngine = te("")}, {
		t"render text: \"", i(1, "text to render...", {key = "i1"}), t"\", layout: ", i(2, "true", {key = "i2"})
	}),
	s({trig = "rts", descr = "(rts) \"render (text,status) (rts)\"", priority = -50, trigEngine = te("")}, {
		t"render text: \"", i(1, "text to render...", {key = "i1"}), t"\", status: ", i(2, "401", {key = "i2"})
	}),
	s({trig = "ru", descr = "(ru) \"render (update)\"", priority = -50, trigEngine = te("")}, {
		t"render :update do |", i(1, "page", {key = "i2"}), t"|", nl(),
		t"\t", cp(2), t".", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rxml", descr = "(rxml)", priority = -1000, trigEngine = te("w")}, {
		t"render xml: \'", i(0, "text to render", {key = "i0"}), t"\'"
	}),
	s({trig = "sc", descr = "(sc)", priority = -1000, trigEngine = te("w")}, {
		t"scope :", i(1, "name", {key = "i1"}), t", -> { where(", i(2, "field", {key = "i2"}), t": ", i(0, "value", {key = "i0"}), t") }"
	}),
	s({trig = "sl", descr = "(sl)", priority = -1000, trigEngine = te("w")}, {
		t"scope :", i(1, "name", {key = "i1"}), t", lambda do |", i(2, "value", {key = "i2"}), t"|", nl(),
		t"\twhere(\'", i(3, "field = ?", {key = "i3"}), t"\', ", i(0, "value", {key = "i0"}), t")", nl(),
		t"end"
	}),
	s({trig = "sha1", descr = "(sha1)", priority = -1000, trigEngine = te("w")}, {
		t"Digest::SHA1.hexdigest(", i(0, "string", {key = "i0"}), t")"
	}),
	s({trig = "va", descr = "(va) \"validates_associated (va)\"", priority = -50, trigEngine = te("")}, {
		t"validates_associated :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"})}) end, {}, {key = "i2"})
	}),
	s({trig = "vc", descr = "(vc) \"validates_confirmation_of (vc)\"", priority = -50, trigEngine = te("")}, {
		t"validates_confirmation_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "should match confirmation", {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "ve", descr = "(ve) \"validates_exclusion_of (ve)\"", priority = -50, trigEngine = te("")}, {
		t"validates_exclusion_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", in: ", d(1, function(args) return sn(nil, {t"%w( ", i(1, "mov avi", {key = "i4"}), t" )"}) end, {}, {key = "i3"}), t", on: :", i(2, "create", {key = "i5"}), t", message: \"", i(3, "extension %s is not allowed", {key = "i6"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "vf", descr = "(vf) \"validates_format_of\"", priority = -50, trigEngine = te("")}, {
		t"validates_format_of :", i(1, "attribute", {key = "i1"}), t", with: /", d(2, function(args) return sn(nil, {t"^[", i(1, "\\w\\d", {key = "i3"}), t"]+$"}) end, {}, {key = "i2"}), t"/", d(3, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i5"}), t", message: \"", i(2, "is invalid", {key = "i6"}), t"\""}) end, {}, {key = "i4"})
	}),
	s({trig = "vi", descr = "(vi) \"validates_inclusion_of\"", priority = -50, trigEngine = te("")}, {
		t"validates_inclusion_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", in: ", d(1, function(args) return sn(nil, {t"%w( ", i(1, "mov avi", {key = "i4"}), t" )"}) end, {}, {key = "i3"}), t", on: :", i(2, "create", {key = "i5"}), t", message: \"", i(3, "extension %s is not included in the list", {key = "i6"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "vl", descr = "(vl) \"validates_length_of (vl)\"", priority = -50, trigEngine = te("")}, {
		t"validates_length_of :", i(1, "attribute", {key = "i1"}), t", within: ", i(2, "3..20", {key = "i2"}), d(3, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i4"}), t", message: \"", i(2, "must be present", {key = "i5"}), t"\""}) end, {}, {key = "i3"})
	}),
	s({trig = "vn", descr = "(vn) \"validates_numericality_of\"", priority = -50, trigEngine = te("")}, {
		t"validates_numericality_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "is not a number", {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "vp", descr = "(vp) \"validates_presence_of (vp)\"", priority = -50, trigEngine = te("")}, {
		t"validates_presence_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "can\'t be blank", {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "vu", descr = "(vu) \"validates_uniqueness_of (vu)\"", priority = -50, trigEngine = te("")}, {
		t"validates_uniqueness_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "must be unique", {key = "i4"}), t"\""}) end, {}, {key = "i2"})
	}),
	s({trig = "format", descr = "(format) \"format (respond_with)\"", priority = -50, trigEngine = te("")}, {
		t"format.", i(1, "html|xml|json|js|any", {key = "i1"}), t" { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "wc", descr = "(wc)", priority = -1000, trigEngine = te("w")}, {
		t"where(", i(1, "\'conditions\'", {key = "i1"}), i(0, ", bind_var", {key = "i0"}), t")"
	}),
	s({trig = "wf", descr = "(wf)", priority = -1000, trigEngine = te("w")}, {
		t"where(", i(1, "field", {key = "i1"}), t": ", i(0, "value", {key = "i0"}), t")"
	}),
	s({trig = "xdelete", descr = "(xdelete) \"xhr delete\"", priority = -50, trigEngine = te("")}, {
		t"xhr :delete, :", i(1, "destroy", {key = "i1"}), t", id: ", i(2, "1", {key = "i2"}), i(0, "", {key = "i0"})
	}),
	s({trig = "xget", descr = "(xget) \"xhr get\"", priority = -50, trigEngine = te("")}, {
		t"xhr :get, :", i(1, "show", {key = "i1"}), d(2, function(args) return sn(nil, {t", id: ", i(1, "1", {key = "i3"})}) end, {}, {key = "i2"}), i(0, "", {key = "i0"})
	}),
	s({trig = "xpost", descr = "(xpost) \"xhr post\"", priority = -50, trigEngine = te("")}, {
		t"xhr :post, :", i(1, "create", {key = "i1"}), t", ", i(2, "object", {key = "i2"}), t": { ", i(3, "", {key = "i3"}), t" }"
	}),
	s({trig = "xput", descr = "(xput) \"xhr put\"", priority = -50, trigEngine = te("")}, {
		t"xhr :put, :", i(1, "update", {key = "i1"}), t", id: ", i(2, "1", {key = "i2"}), t", ", i(3, "object", {key = "i3"}), t": { ", i(4, "", {key = "i4"}), t" }", i(0, "", {key = "i0"})
	}),
	s({trig = "test", descr = "(test) \"test do..end\"", priority = -50, trigEngine = te("")}, {
		t"test \"", i(1, "something interesting", {key = "i1"}), t"\" do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mac", descr = "(mac)", priority = -1000, trigEngine = te("w")}, {
		t"add_column :", i(1, "table_name", {key = "i1"}), t", :", i(2, "column_name", {key = "i2"}), t", :", i(0, "data_type", {key = "i0"})
	}),
	s({trig = "mai", descr = "(mai)", priority = -1000, trigEngine = te("w")}, {
		t"add_index :", i(1, "table_name", {key = "i1"}), t", :", i(0, "column_name", {key = "i0"})
	}),
	s({trig = "mrc", descr = "(mrc)", priority = -1000, trigEngine = te("w")}, {
		t"remove_column :", i(1, "table_name", {key = "i1"}), t", :", i(0, "column_name", {key = "i0"})
	}),
	s({trig = "mrnc", descr = "(mrnc)", priority = -1000, trigEngine = te("w")}, {
		t"rename_column :", i(1, "table_name", {key = "i1"}), t", :", i(2, "old_column_name", {key = "i2"}), t", :", i(0, "new_column_name", {key = "i0"})
	}),
	s({trig = "mcc", descr = "(mcc)", priority = -1000, trigEngine = te("w")}, {
		t"change_column :", i(1, "table", {key = "i1"}), t", :", i(2, "column", {key = "i2"}), t", :", i(0, "type", {key = "i0"})
	}),
	s({trig = "mnc", descr = "(mnc)", priority = -1000, trigEngine = te("w")}, {
		t"t.", i(1, "string", {key = "i1"}), t" :", i(2, "title", {key = "i2"}), i(3, ", null: false", {key = "i3"})
	}),
	s({trig = "mct", descr = "(mct)", priority = -1000, trigEngine = te("w")}, {
		t"create_table :", i(1, "table_name", {key = "i1"}), t" do |t|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "mrev", descr = "(mrev) reversible do |dir| ... dir.up .. dir.down .. end", priority = -1000, trigEngine = te("w")}, {
		t"reversible do |dir|", nl(),
		t"\tdir.up do", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		nl(),
		t"\tdir.down do", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "cmm", descr = "(cmm) \"Create Migration Model Class\"", priority = -50, trigEngine = te("")}, {
		t"class Migration", tr(1, "(?:^|_)(\\w)", "\\u$1"), t" < ApplicationRecord", nl(),
		t"\tself.table_name = :", i(1, "model_name", {key = "i1"}), t"s", nl(),
		t"end"
	}),
	s({trig = "migration", descr = "(migration) class .. < ActiveRecord::Migration .. def change .. end", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"class ", f(function(args, snip) return c_viml("substitute( substitute(vim_snippets#Filename(), \'^\\d\\+_\', \'\',\'\'), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')") end, {}), t" < ActiveRecord::Migration", nl(),
			t"\tdef up", nl(),
			t"\t\t", i(0, "", {key = "i0"}), nl(),
			t"\tend", nl(),
			nl(),
			t"\tdef down", nl(),
			t"\tend", nl(),
			t"end"
		},
		{
			t"class ", f(function(args, snip) return c_viml("substitute( substitute(vim_snippets#Filename(), \'^\\d\\+_\', \'\',\'\'), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')") end, {}), t" < ActiveRecord::Migration", nl(),
			t"\tdef change", nl(),
			t"\t\t", i(0, "", {key = "i0"}), nl(),
			t"\tend", nl(),
			t"end"
		},
	})),
	s({trig = "trc", descr = "(trc)", priority = -1000, trigEngine = te("w")}, {
		t"t.remove :", i(0, "column", {key = "i0"})
	}),
	s({trig = "tre", descr = "(tre) \"Table column(s) rename\"", priority = -50, trigEngine = te("")}, {
		t"t.rename(:", i(1, "old_column_name", {key = "i1"}), t", :", i(2, "new_column_name", {key = "i2"}), t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tref", descr = "(tref)", priority = -1000, trigEngine = te("w")}, {
		t"t.references :", i(0, "model", {key = "i0"})
	}),
	s({trig = "tcb", descr = "(tcb) \"Create boolean column\"", priority = -50, trigEngine = te("")}, {
		t"t.boolean :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcbi", descr = "(tcbi) \"Create binary column\"", priority = -50, trigEngine = te("")}, {
		t"t.binary :", i(1, "title", {key = "i1"}), d(2, function(args) return sn(nil, {t", limit: ", i(1, "2", {key = "i3"}), t".megabytes"}) end, {}, {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcd", descr = "(tcd) \"Create decimal column\"", priority = -50, trigEngine = te("")}, {
		t"t.decimal :", i(1, "title", {key = "i1"}), d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", precision: ", i(1, "10", {key = "i4"})}) end, {}, {key = "i3"}), d(2, function(args) return sn(nil, {t", scale: ", i(1, "2", {key = "i6"})}) end, {}, {key = "i5"})}) end, {}, {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcda", descr = "(tcda) \"Create date column\"", priority = -50, trigEngine = te("")}, {
		t"t.date :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcdt", descr = "(tcdt) \"Create datetime column\"", priority = -50, trigEngine = te("")}, {
		t"t.datetime :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcf", descr = "(tcf) \"Create float column\"", priority = -50, trigEngine = te("")}, {
		t"t.float :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tch", descr = "(tch)", priority = -1000, trigEngine = te("w")}, {
		t"t.change :", i(1, "name", {key = "i1"}), t", :", i(2, "string", {key = "i2"}), t", ", i(3, "limit", {key = "i3"}), t": ", i(4, "80", {key = "i4"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tci", descr = "(tci) \"Create integer column\"", priority = -50, trigEngine = te("")}, {
		t"t.integer :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcl", descr = "(tcl) \"Create lock_version column\"", priority = -50, trigEngine = te("")}, {
		t"t.integer :lock_version, null: false, default: 0", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcr", descr = "(tcr) \"Create references column\"", priority = -50, trigEngine = te("")}, {
		t"t.references :", i(1, "taggable", {key = "i1"}), d(2, function(args) return sn(nil, {t", polymorphic: ", d(1, function(args) return sn(nil, {t"{ default: \'", i(1, "Photo", {key = "i4"}), t"\' }"}) end, {}, {key = "i3"})}) end, {}, {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcs", descr = "(tcs) \"Create string column\"", priority = -50, trigEngine = te("")}, {
		t"t.string :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tct", descr = "(tct) \"Create text column\"", priority = -50, trigEngine = te("")}, {
		t"t.text :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcti", descr = "(tcti) \"Create time column\"", priority = -50, trigEngine = te("")}, {
		t"t.time :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tcts", descr = "(tcts) \"Create timestamp column\"", priority = -50, trigEngine = te("")}, {
		t"t.timestamp :", i(1, "title", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "tctss", descr = "(tctss) \"Create timestamps columns\"", priority = -50, trigEngine = te("")}, {
		t"t.timestamps", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "isfp", descr = "(isfp)", priority = -1000, trigEngine = te("w")}, {
		t"it { should filter_param :", i(0, "key", {key = "i0"}), t" }"
	}),
	s({trig = "isrt", descr = "(isrt)", priority = -1000, trigEngine = te("w")}, {
		t"it { should redirect_to ", i(0, "url", {key = "i0"}), t" }"
	}),
	s({trig = "isrtp", descr = "(isrtp)", priority = -1000, trigEngine = te("w")}, {
		t"it { should render_template ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isrwl", descr = "(isrwl)", priority = -1000, trigEngine = te("w")}, {
		t"it { should render_with_layout ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isrf", descr = "(isrf)", priority = -1000, trigEngine = te("w")}, {
		t"it { should rescue_from ", i(0, "exception", {key = "i0"}), t" }"
	}),
	s({trig = "isrw", descr = "(isrw)", priority = -1000, trigEngine = te("w")}, {
		t"it { should respond_with ", i(0, "status", {key = "i0"}), t" }"
	}),
	s({trig = "isr", descr = "(isr)", priority = -1000, trigEngine = te("w")}, {
		t"it { should route(:", i(1, "method", {key = "i1"}), t", \'", i(0, "path", {key = "i0"}), t"\') }"
	}),
	s({trig = "isss", descr = "(isss)", priority = -1000, trigEngine = te("w")}, {
		t"it { should set_session :", i(0, "key", {key = "i0"}), t" }"
	}),
	s({trig = "issf", descr = "(issf)", priority = -1000, trigEngine = te("w")}, {
		t"it { should set_the_flash(\'", i(0, "", {key = "i0"}), t"\') }"
	}),
	s({trig = "isama", descr = "(isama)", priority = -1000, trigEngine = te("w")}, {
		t"it { should allow_mass_assignment_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isav", descr = "(isav)", priority = -1000, trigEngine = te("w")}, {
		t"it { should allow_value(", i(1, "", {key = "i1"}), t").for :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isee", descr = "(isee)", priority = -1000, trigEngine = te("w")}, {
		t"it { should ensure_exclusion_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isei", descr = "(isei)", priority = -1000, trigEngine = te("w")}, {
		t"it { should ensure_inclusion_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isel", descr = "(isel)", priority = -1000, trigEngine = te("w")}, {
		t"it { should ensure_length_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isva", descr = "(isva)", priority = -1000, trigEngine = te("w")}, {
		t"it { should validate_acceptance_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isvc", descr = "(isvc)", priority = -1000, trigEngine = te("w")}, {
		t"it { should validate_confirmation_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isvn", descr = "(isvn)", priority = -1000, trigEngine = te("w")}, {
		t"it { should validate_numericality_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isvp", descr = "(isvp)", priority = -1000, trigEngine = te("w")}, {
		t"it { should validate_presence_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isvu", descr = "(isvu)", priority = -1000, trigEngine = te("w")}, {
		t"it { should validate_uniqueness_of :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isana", descr = "(isana)", priority = -1000, trigEngine = te("w")}, {
		t"it { should accept_nested_attributes_for :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isbt", descr = "(isbt)", priority = -1000, trigEngine = te("w")}, {
		t"it { should belong_to :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isbtcc", descr = "(isbtcc)", priority = -1000, trigEngine = te("w")}, {
		t"it { should belong_to(:", i(1, "", {key = "i1"}), t").counter_cache ", i(0, "true", {key = "i0"}), t" }"
	}),
	s({trig = "ishbtm", descr = "(ishbtm)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_and_belong_to_many :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isbv", descr = "(isbv)", priority = -1000, trigEngine = te("w")}, {
		t"it { should be_valid }"
	}),
	s({trig = "ishc", descr = "(ishc)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_db_column :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ishi", descr = "(ishi)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_db_index :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ishm", descr = "(ishm)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_many :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ishmt", descr = "(ishmt)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_many(:", i(1, "", {key = "i1"}), t").through :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isho", descr = "(isho)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_one :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "ishro", descr = "(ishro)", priority = -1000, trigEngine = te("w")}, {
		t"it { should have_readonly_attribute :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "iss", descr = "(iss)", priority = -1000, trigEngine = te("w")}, {
		t"it { should serialize :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isres", descr = "(isres)", priority = -1000, trigEngine = te("w")}, {
		t"it { should respond_to :", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "isresw", descr = "(isresw)", priority = -1000, trigEngine = te("w")}, {
		t"it { should respond_to(:", i(1, "", {key = "i1"}), t").with(", i(0, "", {key = "i0"}), t").arguments }"
	}),
	s({trig = "super_call", descr = "(super_call)", priority = -1000, trigEngine = te("w")}, {
		i(1, "super_class", {key = "i1"}), t".instance_method(:", i(0, "method", {key = "i0"}), t").bind(self).call"
	}),
	s({trig = "anaf", descr = "(anaf) \"accepts_nested_attributes_for\"", priority = -50, trigEngine = te("")}, {
		t"accepts_nested_attributes_for :", i(1, "association_name", {key = "i1"}), d(2, function(args) return sn(nil, {i(1, ", allow_destroy: true", {key = "i3"}), d(2, function(args) return sn(nil, {t", reject_if: proc { |obj| ", i(1, "obj.blank?", {key = "i5"}), t" }"}) end, {}, {key = "i4"})}) end, {}, {key = "i2"}), nl()
	}),
	s({trig = "clac", descr = "(clac) \"Create controller class\"", priority = -50, trigEngine = te("")}, {
		t"class ", i(1, "Model", {key = "i1"}), t"Controller < ApplicationController", nl(),
		t"\tbefore_action :find_", i(2, "model", {key = "i2"}), nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\tprivate", nl(),
		t"\tdef find_", cp(2), nl(),
		t"\t\t@", cp(2), t" = ", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i3"}), t".find(params[:id]) if params[:id]", nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "clact", descr = "(clact) \"Create functional test class\"", priority = -50, trigEngine = te("")}, {
		t"require \'test_helper\'", nl(),
		nl(),
		t"class ", i(1, "Model", {key = "i1"}), t"ControllerTest < ActionController::TestCase", nl(),
		t"\ttest", i(0, "", {key = "i0"}), nl(),
		t"end", nl()
	}),
	s({trig = "resources", descr = "(resources) \"Create resources controller class\"", priority = -50, trigEngine = te("")}, {
		t"class ", i(1, "Model", {key = "i1"}), t"sController < ApplicationController", nl(),
		t"\tbefore_action :find_", tr(1, ".", "\\l$0"), t", only: [:show, :edit, :update, :destroy]", nl(),
		nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s", nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s.json", nl(),
		t"\tdef index", nl(),
		t"\t\t@", tr(1, ".", "\\l$0"), t"s = ", i(1, "Model", {key = "i1"}), t".all", nl(),
		nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\twants.html # index.html.erb", nl(),
		t"\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t"s }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s/1", nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s/1.json", nl(),
		t"\tdef show", nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\twants.html # show.html.erb", nl(),
		t"\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t" }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s/new", nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s/new.json", nl(),
		t"\tdef new", nl(),
		t"\t\t@", tr(1, ".", "\\l$0"), t" = ", i(1, "Model", {key = "i1"}), t".new", nl(),
		nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\twants.html # new.html.erb", nl(),
		t"\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t" }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# GET /", tr(1, ".", "\\l$0"), t"s/1/edit", nl(),
		t"\tdef edit", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# POST /", tr(1, ".", "\\l$0"), t"s", nl(),
		t"\t# POST /", tr(1, ".", "\\l$0"), t"s.json", nl(),
		t"\tdef create", nl(),
		t"\t\t@", tr(1, ".", "\\l$0"), t" = ", i(1, "Model", {key = "i1"}), t".new(params[:", tr(1, ".", "\\l$0"), t"])", nl(),
		nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\tif @", tr(1, ".", "\\l$0"), t".save", nl(),
		t"\t\t\t\tflash[:notice] = \'", i(1, "Model", {key = "i1"}), t" was successfully created.\'", nl(),
		t"\t\t\t\twants.html { redirect_to(@", tr(1, ".", "\\l$0"), t") }", nl(),
		t"\t\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t", status: :created, location: @", tr(1, ".", "\\l$0"), t" }", nl(),
		t"\t\t\telse", nl(),
		t"\t\t\t\twants.html { render action: \"new\" }", nl(),
		t"\t\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t".errors, status: :unprocessable_entity }", nl(),
		t"\t\t\tend", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# PUT /", tr(1, ".", "\\l$0"), t"s/1", nl(),
		t"\t# PUT /", tr(1, ".", "\\l$0"), t"s/1.json", nl(),
		t"\tdef update", nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\tif @", tr(1, ".", "\\l$0"), t".update(params[:", tr(1, ".", "\\l$0"), t"])", nl(),
		t"\t\t\t\tflash[:notice] = \'", i(1, "Model", {key = "i1"}), t" was successfully updated.\'", nl(),
		t"\t\t\t\twants.html { redirect_to(@", tr(1, ".", "\\l$0"), t") }", nl(),
		t"\t\t\t\twants.json  { head :ok }", nl(),
		t"\t\t\telse", nl(),
		t"\t\t\t\twants.html { render action: \"edit\" }", nl(),
		t"\t\t\t\twants.json  { render json: @", tr(1, ".", "\\l$0"), t".errors, status: :unprocessable_entity }", nl(),
		t"\t\t\tend", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\t# DELETE /", tr(1, ".", "\\l$0"), t"s/1", nl(),
		t"\t# DELETE /", tr(1, ".", "\\l$0"), t"s/1.json", nl(),
		t"\tdef destroy", nl(),
		t"\t\t@", tr(1, ".", "\\l$0"), t".destroy", nl(),
		nl(),
		t"\t\trespond_to do |wants|", nl(),
		t"\t\t\twants.html { redirect_to(", tr(1, ".", "\\l$0"), t"s_url) }", nl(),
		t"\t\t\twants.json  { head :ok }", nl(),
		t"\t\tend", nl(),
		t"\tend", nl(),
		nl(),
		t"\tprivate", nl(),
		t"\t\tdef find_", tr(1, ".", "\\l$0"), nl(),
		t"\t\t\t@", tr(1, ".", "\\l$0"), t" = ", i(1, "Model", {key = "i1"}), t".find(params[:id])", nl(),
		t"\t\tend", nl(),
		nl(),
		t"end", nl()
	}),
	s({trig = "mcol", descr = "(mcol) \"Migration Remove and Add Column (mrac)\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"t.column ", i(1, "title", {key = "i1"}), t", :", i(2, "string", {key = "i2"}), nl(),
			i(0, "", {key = "i0"})
		},
		{
			t"remove_column :", i(1, "table", {key = "i1"}), t", :", i(2, "column", {key = "i2"}), i(3, " [press tab twice to generate add_column]", {key = "i3"})
		},
	})),
	s({trig = "mccc", descr = "(mccc) \"Migration Create Column Continue (mccc)\"", priority = -50, trigEngine = te("")}, {
		t"t.column ", i(1, "title", {key = "i1"}), t", :", i(2, "string", {key = "i2"}), nl(),
		t"mccc", i(0, "", {key = "i0"})
	}),
	s({trig = "mtab", descr = "(mtab) \"Migration Drop Create Table (mdct)\"", priority = -50, trigEngine = te("")}, {
		t"drop_table :", i(1, "table", {key = "i1"}), i(2, " [press tab twice to generate create_table]", {key = "i2"})
	}),
	s({trig = "rdb", descr = "(rdb) \"RAILS_DEFAULT_LOGGER.debug (rdb)\"", priority = -50, trigEngine = te("")}, {
		t"RAILS_DEFAULT_LOGGER.debug \"", i(1, "message", {key = "i1"}), t"\"", i(0, "", {key = "i0"})
	}),
	s({trig = "aftc", descr = "(aftc) \"after_create\"", priority = -50, trigEngine = te("")}, {
		t"after_create ", i(0, "", {key = "i0"})
	}),
	s({trig = "aftd", descr = "(aftd) \"after_destroy\"", priority = -50, trigEngine = te("")}, {
		t"after_destroy ", i(0, "", {key = "i0"})
	}),
	s({trig = "afts", descr = "(afts) \"after_save\"", priority = -50, trigEngine = te("")}, {
		t"after_save ", i(0, "", {key = "i0"})
	}),
	s({trig = "aftu", descr = "(aftu) \"after_update\"", priority = -50, trigEngine = te("")}, {
		t"after_update ", i(0, "", {key = "i0"})
	}),
	s({trig = "aftv", descr = "(aftv) \"after_validation\"", priority = -50, trigEngine = te("")}, {
		t"after_validation ", i(0, "", {key = "i0"})
	}),
	s({trig = "aftvoc", descr = "(aftvoc) \"after_validation_on_create\"", priority = -50, trigEngine = te("")}, {
		t"after_validation_on_create ", i(0, "", {key = "i0"})
	}),
	s({trig = "aftvou", descr = "(aftvou) \"after_validation_on_update\"", priority = -50, trigEngine = te("")}, {
		t"after_validation_on_update ", i(0, "", {key = "i0"})
	}),
	s({trig = "asg", descr = "(asg) \"assert(var = assigns(:var))\"", priority = -50, trigEngine = te("")}, {
		t"assert(", i(1, "var", {key = "i1"}), t" = assigns(:", cp(1), t"), \"Cannot find @", cp(1), t"\")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "befc", descr = "(befc) \"before_create\"", priority = -50, trigEngine = te("")}, {
		t"before_create ", i(0, "", {key = "i0"})
	}),
	s({trig = "befd", descr = "(befd) \"before_destroy\"", priority = -50, trigEngine = te("")}, {
		t"before_destroy ", i(0, "", {key = "i0"})
	}),
	s({trig = "befs", descr = "(befs) \"before_save\"", priority = -50, trigEngine = te("")}, {
		t"before_save ", i(0, "", {key = "i0"})
	}),
	s({trig = "befu", descr = "(befu) \"before_update\"", priority = -50, trigEngine = te("")}, {
		t"before_update ", i(0, "", {key = "i0"})
	}),
	s({trig = "befv", descr = "(befv) \"before_validation\"", priority = -50, trigEngine = te("")}, {
		t"before_validation ", i(0, "", {key = "i0"})
	}),
	s({trig = "befvoc", descr = "(befvoc) \"before_validation_on_create\"", priority = -50, trigEngine = te("")}, {
		t"before_validation_on_create ", i(0, "", {key = "i0"})
	}),
	s({trig = "befvou", descr = "(befvou) \"before_validation_on_update\"", priority = -50, trigEngine = te("")}, {
		t"before_validation_on_update"
	}),
	s({trig = "deftg", descr = "(deftg) \"def get request\"", priority = -50, trigEngine = te("")}, {
		t"def test_should_get_", i(1, "action", {key = "i1"}), nl(),
		t"\t", d(2, function(args) return sn(nil, {t"@", i(1, "model", {key = "i3"}), t" = ", d(2, function(args) return sn(nil, {cp(3), t"s"}) end, {}, {key = "i4"}), t"(:", i(3, "fixture_name", {key = "i5"}), t")", nl()}) end, {}, {key = "i2"}), t"get :", cp(1), d(3, function(args) return sn(nil, {t", id: @", cp(3), t".to_param"}) end, {}, {key = "i6"}), nl(),
		t"\tassert_response :success", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "deftp", descr = "(deftp) \"def post request\"", priority = -50, trigEngine = te("")}, {
		t"def test_should_post_", i(1, "action", {key = "i1"}), nl(),
		t"\t", d(3, function(args) return sn(nil, {t"@", cp(2), t" = ", d(1, function(args) return sn(nil, {cp(2), t"s"}) end, {}, {key = "i4"}), t"(:", i(2, "fixture_name", {key = "i5"}), t")", nl()}) end, {}, {key = "i3"}), t"post :", cp(1), d(4, function(args) return sn(nil, {t", id: @", cp(2), t".to_param"}) end, {}, {key = "i6"}), t", ", i(2, "model", {key = "i2"}), t": { ", i(0, "", {key = "i0"}), t" }", nl(),
		t"\tassert_response :redirect", nl(),
		nl(),
		t"end"
	}),
	s({trig = "fina", descr = "(fina) \"find(:all)\"", priority = -50, trigEngine = te("")}, {
		t"find(:all", d(1, function(args) return sn(nil, {t", conditions: [\'", d(1, function(args) return sn(nil, {i(1, "field", {key = "i3"}), t" = ?"}) end, {}, {key = "i2"}), t"\', ", i(2, "true", {key = "i5"}), t"]"}) end, {}, {key = "i1"}), t")"
	}),
	s({trig = "finf", descr = "(finf) \"find(:first)\"", priority = -50, trigEngine = te("")}, {
		t"find(:first", d(1, function(args) return sn(nil, {t", conditions: [\'", d(1, function(args) return sn(nil, {i(1, "field", {key = "i3"}), t" = ?"}) end, {}, {key = "i2"}), t"\', ", i(2, "true", {key = "i5"}), t"]"}) end, {}, {key = "i1"}), t")"
	}),
	s({trig = "fini", descr = "(fini) \"find(id)\"", priority = -50, trigEngine = te("")}, {
		t"find(", i(1, "id", {key = "i1"}), t")"
	}),
	s({trig = "fine", descr = "(fine) \"find_each\"", priority = -50, trigEngine = te("")}, {
		t"find_each(${1conditions: {:", i(1, "field", {key = "i2"}), t": ", i(2, "true", {key = "i3"}), t"}}) do |", d(3, function(args) return sn(nil, {t"${TM_CURRENT_WORD/(\\w+)\\./\\L", i(1, "", {key = "i1"}), t"/g}"}) end, {}, {key = "i4"}), t"|", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "finb", descr = "(finb) \"find_in_batches\"", priority = -50, trigEngine = te("")}, {
		t"find_in_batches(${1conditions: {:", i(1, "field", {key = "i2"}), t": ", i(2, "true", {key = "i3"}), t"}}) do |", d(3, function(args) return sn(nil, {t"${TM_CURRENT_WORD/(\\w+)\\./\\L", i(1, "", {key = "i1"}), t"/g}"}) end, {}, {key = "i4"}), t"s|", nl(),
		t"\t", cp(4), t"s.each do |", cp(4), t"|", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "map", descr = "(map) \"map.named_route\"", priority = -50, trigEngine = te("")}, {
		i(1, "map", {key = "i1"}), t".", i(2, "connect", {key = "i2"}), t" \'", i(3, ":controller/:action/:id", {key = "i3"}), t"\'"
	}),
	s({trig = "ncl", descr = "(ncl) \"named_scope lambda\"", priority = -50, trigEngine = te("")}, {
		t"named_scope :name, lambda { |${1param}| { :conditions: ", d(1, function(args) return sn(nil, {t"[\'", d(1, function(args) return sn(nil, {i(1, "field", {key = "i5"}), t" = ?"}) end, {}, {key = "i4"}), t"\', ", d(2, function(args) return sn(nil, {i(1, "", {key = "i1"})}) end, {}, {key = "i6"}), t"]"}) end, {}, {key = "i3"}), t" } }", nl()
	}),
	s({trig = "nc", descr = "(nc) \"named_scope\"", priority = -50, trigEngine = te("")}, {
		t"named_scope :name", d(1, function(args) return sn(nil, {t", joins: :", i(1, "table", {key = "i2"})}) end, {}, {key = "i1"}), t", conditions: ", d(2, function(args) return sn(nil, {t"[\'", d(1, function(args) return sn(nil, {i(1, "field", {key = "i5"}), t" = ?"}) end, {}, {key = "i4"}), t"\', ", i(2, "true", {key = "i6"}), t"]"}) end, {}, {key = "i3"}), nl()
	}),
	s({trig = "dscope", descr = "(dscope) \"default_scope\"", priority = -50, trigEngine = te("")}, {
		t"default_scope ", d(1, function(args) return sn(nil, {t"order(", d(1, function(args) return sn(nil, {t"\'", i(1, "created_at DESC", {key = "i3"}), t"\'"}) end, {}, {key = "i2"}), t")"}) end, {}, {key = "i1"})
	}),
	s({trig = "rea", descr = "(rea) \"redirect_to (action)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to action: \"", i(1, "index", {key = "i1"}), t"\""
	}),
	s({trig = "reai", descr = "(reai) \"redirect_to (action, id)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to action: \"", i(1, "show", {key = "i1"}), t"\", id: ", i(0, "@item", {key = "i0"})
	}),
	s({trig = "rec", descr = "(rec) \"redirect_to (controller)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to controller: \"", i(1, "items", {key = "i1"}), t"\""
	}),
	s({trig = "reca", descr = "(reca) \"redirect_to (controller, action)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to controller: \"", i(1, "items", {key = "i1"}), t"\", action: \"", i(2, "list", {key = "i2"}), t"\""
	}),
	s({trig = "recai", descr = "(recai) \"redirect_to (controller, action, id)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to controller: \"", i(1, "items", {key = "i1"}), t"\", action: \"", i(2, "show", {key = "i2"}), t"\", id: ", i(0, "@item", {key = "i0"})
	}),
	s({trig = "renpp", descr = "(renpp) \"redirect_to (nested path plural)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to(", d(1, function(args) return sn(nil, {i(1, "parent", {key = "i10"}), t"_", i(2, "child", {key = "i11"}), t"_path(", i(3, "@", {key = "i12"}), d(4, function(args) return sn(nil, {cp(10)}) end, {}, {key = "i13"}), t")"}) end, {}, {key = "i2"}), t")"
	}),
	s({trig = "renp", descr = "(renp) \"redirect_to (nested path)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to(", d(1, function(args) return sn(nil, {i(1, "parent", {key = "i12"}), t"_", i(2, "child", {key = "i13"}), t"_path(", i(3, "@", {key = "i14"}), d(4, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i15"}), t", ", i(5, "@", {key = "i16"}), d(6, function(args) return sn(nil, {cp(13)}) end, {}, {key = "i17"}), t")"}) end, {}, {key = "i2"}), t")"
	}),
	s({trig = "repp", descr = "(repp) \"redirect_to (path plural)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to(", d(1, function(args) return sn(nil, {i(1, "model", {key = "i10"}), t"s_path"}) end, {}, {key = "i2"}), t")"
	}),
	s({trig = "rep", descr = "(rep) \"redirect_to (path)\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to(", d(1, function(args) return sn(nil, {i(1, "model", {key = "i12"}), t"_path(", i(2, "@", {key = "i13"}), d(3, function(args) return sn(nil, {cp(12)}) end, {}, {key = "i14"}), t")"}) end, {}, {key = "i2"}), t")"
	}),
	s({trig = "reb", descr = "(reb) \"redirect_to :back\"", priority = -50, trigEngine = te("")}, {
		t"redirect_to :back"
	}),
	s({trig = "returning", descr = "(returning) \"returning do |variable| ... end\"", priority = -50, trigEngine = te("")}, {
		t"returning ", i(1, "variable", {key = "i1"}), t" do", tr(2, "(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*", "(?1: |)"), i(2, "v", {key = "i2"}), tr(2, "(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*", "(?1:|)"), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "t.", descr = "(t.) \"t.timestamps (tctss)\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"t.binary :", i(1, "title", {key = "i1"}), d(2, function(args) return sn(nil, {t", limit: ", i(1, "2", {key = "i3"}), t".megabytes"}) end, {}, {key = "i2"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.boolean :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.date :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.datetime :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.decimal :", i(1, "title", {key = "i1"}), d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", precision: ", i(1, "10", {key = "i4"})}) end, {}, {key = "i3"}), d(2, function(args) return sn(nil, {t", scale: ", i(1, "2", {key = "i6"})}) end, {}, {key = "i5"})}) end, {}, {key = "i2"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.float :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.integer :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.integer :lock_version, null: false, default: 0", nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.references :", i(1, "taggable", {key = "i1"}), d(2, function(args) return sn(nil, {t", polymorphic: ", d(1, function(args) return sn(nil, {t"{ default: \'", i(1, "Photo", {key = "i4"}), t"\' }"}) end, {}, {key = "i3"})}) end, {}, {key = "i2"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.rename(:", i(1, "old_column_name", {key = "i1"}), t", :", i(2, "new_column_name", {key = "i2"}), t")", nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.string :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.text :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.time :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.timestamp :", i(1, "title", {key = "i1"}), nl(),
			t"t.", i(0, "", {key = "i0"})
		},
		{
			t"t.timestamps", nl(),
			t"t.", i(0, "", {key = "i0"})
		},
	})),
	s({trig = "vaoif", descr = "(vaoif) \"validates_acceptance_of if\"", priority = -50, trigEngine = te("")}, {
		t"validates_acceptance_of :", i(1, "terms", {key = "i1"}), d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", accept: \"", i(1, "1", {key = "i4"}), t"\""}) end, {}, {key = "i3"}), d(2, function(args) return sn(nil, {t", message: \"", i(1, "You must accept the terms of service", {key = "i6"}), t"\""}) end, {}, {key = "i5"})}) end, {}, {key = "i2"}), t", if: proc { |obj| ", i(3, "obj.condition?", {key = "i7"}), t" }}"
	}),
	s({trig = "vao", descr = "(vao) \"validates_acceptance_of\"", priority = -50, trigEngine = te("")}, {
		t"validates :", i(1, "terms", {key = "i1"}), d(2, function(args) return sn(nil, {t", acceptance: ", d(1, function(args) return sn(nil, {t"{ accept: \"", i(1, "1", {key = "i4"}), t"\"", d(2, function(args) return sn(nil, {t", message: \"", i(1, "You must accept the terms of service", {key = "i6"}), t"\""}) end, {}, {key = "i5"}), t"}"}) end, {}, {key = "i3"}), t" "}) end, {}, {key = "i2"})
	}),
	s({trig = "vaif", descr = "(vaif) \"validates_associated if (vaif)\"", priority = -50, trigEngine = te("")}, {
		t"validates_associated :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", if: proc { |obj| ", i(2, "obj.condition?", {key = "i5"}), t" }"}) end, {}, {key = "i2"})
	}),
	s({trig = "vcif", descr = "(vcif) \"validates_confirmation_of if (vcif)\"", priority = -50, trigEngine = te("")}, {
		t"validates_confirmation_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "should match confirmation", {key = "i4"}), t"\", if: proc { |obj| ", i(3, "obj.condition?", {key = "i5"}), t" }"}) end, {}, {key = "i2"})
	}),
	s({trig = "veif", descr = "(veif) \"validates_exclusion_of if (veif)\"", priority = -50, trigEngine = te("")}, {
		t"validates_exclusion_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", in: ", d(1, function(args) return sn(nil, {t"%w( ", i(1, "mov avi", {key = "i4"}), t" )"}) end, {}, {key = "i3"}), t", on: :", i(2, "create", {key = "i5"}), t", message: \"", i(3, "extension %s is not allowed", {key = "i6"}), t"\""}) end, {}, {key = "i2"}), t", if: proc { |obj| ", i(3, "obj.condition?", {key = "i7"}), t" }}"
	}),
	s({trig = "vfif", descr = "(vfif) \"validates_format_of if\"", priority = -50, trigEngine = te("")}, {
		t"validates_format_of :", i(1, "attribute", {key = "i1"}), t", with: /", d(2, function(args) return sn(nil, {t"^[", i(1, "\\w\\d", {key = "i3"}), t"]+$"}) end, {}, {key = "i2"}), t"/", d(3, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i5"}), t", message: \"", i(2, "is invalid", {key = "i6"}), t"\""}) end, {}, {key = "i4"}), t", if: proc { |obj| ", i(4, "obj.condition?", {key = "i7"}), t" }}"
	}),
	s({trig = "viif", descr = "(viif) \"validates_inclusion_of if\"", priority = -50, trigEngine = te("")}, {
		t"validates_inclusion_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", in: ", d(1, function(args) return sn(nil, {t"%w( ", i(1, "mov avi", {key = "i4"}), t" )"}) end, {}, {key = "i3"}), t", on: :", i(2, "create", {key = "i5"}), t", message: \"", i(3, "extension %s is not included in the list", {key = "i6"}), t"\""}) end, {}, {key = "i2"}), t", if: proc { |obj| ", i(3, "obj.condition?", {key = "i7"}), t" }}"
	}),
	s({trig = "vlif", descr = "(vlif) \"validates_length_of if\"", priority = -50, trigEngine = te("")}, {
		t"validates_length_of :", i(1, "attribute", {key = "i1"}), t", within: ", i(2, "3..20", {key = "i2"}), d(3, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i4"}), t", message: \"", i(2, "must be present", {key = "i5"}), t"\""}) end, {}, {key = "i3"}), t", if: proc { |obj| ", i(4, "obj.condition?", {key = "i6"}), t" }}"
	}),
	s({trig = "vnif", descr = "(vnif) \"validates_numericality_of if\"", priority = -50, trigEngine = te("")}, {
		t"validates_numericality_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "is not a number", {key = "i4"}), t"\""}) end, {}, {key = "i2"}), t", if: proc { |obj| ", i(3, "obj.condition?", {key = "i5"}), t" }}"
	}),
	s({trig = "vpif", descr = "(vpif) \"validates_presence_of if (vpif) 2\"", priority = -50, trigEngine = te("")}, {
		t"validates_presence_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "can\'t be blank", {key = "i4"}), t"\""}) end, {}, {key = "i2"}), t", if: proc { |obj| ", i(3, "obj.condition?", {key = "i5"}), t" }}"
	}),
	s({trig = "vuif", descr = "(vuif) \"validates_uniqueness_of if (vuif)\"", priority = -50, trigEngine = te("")}, {
		t"validates_uniqueness_of :", i(1, "attribute", {key = "i1"}), d(2, function(args) return sn(nil, {t", on: :", i(1, "create", {key = "i3"}), t", message: \"", i(2, "must be unique", {key = "i4"}), t"\", if: proc { |obj| ", i(3, "obj.condition?", {key = "i6"}), t" }"}) end, {}, {key = "i2"})
	}),
	s({trig = "verify", descr = "(verify) \"verify -- redirect\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"verify only: [:", i(1, "", {key = "i1"}), t"], method: :post, render {:status: 500, text: \"use HTTP-POST\"}", nl()
		},
		{
			t"verify only: [:", i(1, "", {key = "i1"}), t"], session: :user, params: :id, redirect_to {:action: \'", i(2, "index", {key = "i2"}), t"\'}", nl()
		},
	})),
	s({trig = "wants", descr = "(wants) \"wants_format\"", priority = -50, trigEngine = te("")}, {
		t"wants.", i(1, "js|json|html", {key = "i1"}), d(2, function(args) return sn(nil, {t" { ", i(1, "", {key = "i0"}), t" }"}) end, {}, {key = "i2"})
	}),
	s({trig = "col", descr = "(col) \"collection routes\"", priority = -50, trigEngine = te("")}, {
		t"collection do", nl(),
		t"\t", d(1, function(args) return sn(nil, {t"get :", i(1, "action", {key = "i2"})}) end, {}, {key = "i1"}), nl(),
		t"\t", d(2, function(args) return sn(nil, {t"put :", i(1, "action", {key = "i4"})}) end, {}, {key = "i3"}), nl(),
		t"\t", d(3, function(args) return sn(nil, {t"post :", i(1, "action", {key = "i6"})}) end, {}, {key = "i5"}), nl(),
		t"\t", d(4, function(args) return sn(nil, {t"delete :", i(1, "action", {key = "i8"})}) end, {}, {key = "i7"}), nl(),
		t"end"
	}),
	s({trig = "gem", descr = "(gem) \"gem\"", priority = -50, trigEngine = te("")}, {
		t"gem \'", i(1, "name", {key = "i1"}), t"\'", d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", \"", i(1, "1.0", {key = "i4"}), t"\""}) end, {}, {key = "i3"}), d(2, function(args) return sn(nil, {d(1, function(args) return sn(nil, {t", require: ", d(1, function(args) return sn(nil, {t"\"", d(1, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i8"}), t"\""}) end, {}, {key = "i7"})}) end, {}, {key = "i6"}), d(2, function(args) return sn(nil, {t", group: :", i(1, "test", {key = "i10"})}) end, {}, {key = "i9"})}) end, {}, {key = "i5"})}) end, {}, {key = "i2"})
	}),
	s({trig = "gemg", descr = "(gemg) \"gem :git\"", priority = -50, trigEngine = te("")}, {
		t"gem \'", i(1, "paperclip", {key = "i1"}), t"\', git: \"", i(2, "git://github.com/thoughtbot/paperclip.git", {key = "i2"}), t"\"", d(3, function(args) return sn(nil, {t", branch: \"", i(1, "rails3", {key = "i4"}), t"\""}) end, {}, {key = "i3"})
	}),
	s({trig = "match", descr = "(match) \"match\"", priority = -50, trigEngine = te("")}, {
		t"match \'", d(1, function(args) return sn(nil, {i(1, ":controller", {key = "i2"}), d(2, function(args) return sn(nil, {t"/", i(1, ":action", {key = "i4"}), d(2, function(args) return sn(nil, {t"/", i(1, ":id", {key = "i6"}), i(2, "(.:format)", {key = "i7"})}) end, {}, {key = "i5"})}) end, {}, {key = "i3"})}) end, {}, {key = "i1"}), t"\'", d(2, function(args) return sn(nil, {t" \'", d(1, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i9"}), t"#", d(2, function(args) return sn(nil, {cp(4)}) end, {}, {key = "i10"}), t"\'", d(3, function(args) return sn(nil, {t", as: :", d(1, function(args) return sn(nil, {cp(10)}) end, {}, {key = "i12"})}) end, {}, {key = "i11"})}) end, {}, {key = "i8"})
	}),
	s({trig = "member", descr = "(member) \"member routes\"", priority = -50, trigEngine = te("")}, {
		t"member do", nl(),
		t"\t", d(1, function(args) return sn(nil, {t"get :", i(1, "action", {key = "i2"})}) end, {}, {key = "i1"}), nl(),
		t"\t", d(2, function(args) return sn(nil, {t"put :", i(1, "action", {key = "i4"})}) end, {}, {key = "i3"}), nl(),
		t"\t", d(3, function(args) return sn(nil, {t"post :", i(1, "action", {key = "i6"})}) end, {}, {key = "i5"}), nl(),
		t"\t", d(4, function(args) return sn(nil, {t"delete :", i(1, "action", {key = "i8"})}) end, {}, {key = "i7"}), nl(),
		t"end"
	}),
	s({trig = "res", descr = "(res) \"resources\"", priority = -50, trigEngine = te("")}, {
		t"resources :", i(1, "posts", {key = "i1"}), d(2, function(args) return sn(nil, {t" do", nl(),
i(1, "", {key = "i3"}), t"\t$3", nl(),
t"en"}) end, {}, {key = "i2"})
	}),
	s({trig = "scope", descr = "(scope) \"scope\"", priority = -50, trigEngine = te("")}, {
		t"scope :", i(1, "name", {key = "i1"}), t", { ", d(2, function(args) return sn(nil, {t"joins(:", i(1, "table", {key = "i3"}), t")."}) end, {}, {key = "i2"}), t"where(", d(3, function(args) return sn(nil, {t"\'", d(1, function(args) return sn(nil, {cp(3), t".", i(1, "field", {key = "i6"})}) end, {}, {key = "i5"}), t" = ?\', ", d(2, function(args) return sn(nil, {t"\'", i(1, "value", {key = "i8"}), t"\'"}) end, {}, {key = "i7"})}) end, {}, {key = "i4"}), t") }"
	}),
	s({trig = "scopel", descr = "(scopel) \"scope lambda\"", priority = -50, trigEngine = te("")}, {
		t"scope :", i(1, "name", {key = "i1"}), t", lambda { |", i(2, "param", {key = "i2"}), t"| ", d(3, function(args) return sn(nil, {t"where(", d(1, function(args) return sn(nil, {t":", i(1, "field", {key = "i5"}), t": ", d(2, function(args) return sn(nil, {t"\"", i(1, "value", {key = "i7"}), t"\""}) end, {}, {key = "i6"})}) end, {}, {key = "i4"}), t")"}) end, {}, {key = "i3"}), t" }"
	}),
	s({trig = "scopee", descr = "(scopee) \"scope with extension\"", priority = -50, trigEngine = te("")}, {
		t"scope :", i(1, "name", {key = "i1"}), t", { ", d(2, function(args) return sn(nil, {t"where(", d(1, function(args) return sn(nil, {t":", i(1, "field", {key = "i4"}), t": ", d(2, function(args) return sn(nil, {t"\'", i(1, "value", {key = "i6"}), t"\'"}) end, {}, {key = "i5"})}) end, {}, {key = "i3"}), t")"}) end, {}, {key = "i2"}), t" } do", nl(),
		t"\tdef ", i(3, "method_name", {key = "i7"}), nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tend", nl(),
		t"end"
	}),
	s({trig = "sb", descr = "(sb) \"scoped_by\"", priority = -50, trigEngine = te("")}, {
		t"scoped_by_", i(1, "attribute", {key = "i1"}), t"(", i(2, "id", {key = "i2"}), t")"
	}),
	s({trig = "setup", descr = "(setup) \"setup do..end\"", priority = -50, trigEngine = te("")}, {
		t"setup do", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "trans", descr = "(trans) \"Translation snippet\"", priority = -50, trigEngine = te("")}, {
		t"I18n.t(\'", f(function(args, snip) return c_viml("substitute(substitute(substitute(@%, substitute(getcwd() . \"/\", \"\\/\", \"\\\\\\\\/\", \"g\"), \"\", \"\"), \"\\\\(\\\\.\\\\(html\\\\|js\\\\)\\\\.\\\\(haml\\\\|erb\\\\)\\\\|\\\\(_controller\\\\)\\\\?\\\\.rb\\\\)$\", \"\", \"\"), \"/\", \".\", \"g\")") end, {}), t".", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "[^\\w]", "_")}, ""), {key = "i2"}) }) end, {k"i1"}), i(3, "", {key = "i3"}), t"\', default: \"", i(1, "some_text", {key = "i1"}), t"\"", i(4, "", {key = "i4"}), t")", d(5, function(args) return sn(nil, {i(1, "", {key = "i0"})}) end, {}, {key = "i5"})
	}),
	s({trig = "route_spec", descr = "(route_spec)", priority = -50, trigEngine = te("")}, {
		t"it \'routes to #", i(1, "action", {key = "i1"}), t"\' do", nl(),
		t"\t", i(2, "get", {key = "i2"}), t"(\'/", i(3, "url", {key = "i3"}), t"\').should route_to(\'", f(function(args, snip) return c_viml("substitute(expand(\'%:t:r\'), \'_routing_spec$\', \'\', \'\')") end, {}), t"#", cp(1), t"\'", d(4, function(args) return sn(nil, {t", ", i(1, "params", {key = "i5"})}) end, {}, {key = "i4"}), t")", i(5, "", {key = "i6"}), nl(),
		t"end"
	}),
})
