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
	{1},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1},
	{1, 2},
	{1},
	{1},
	{},
	{1},
	{},
	{1},
	{},
	{},
	{1},
}
ls.add_snippets("simplemvcf", {
	s({trig = "sm_controller", descr = "(sm_controller)", priority = -1000, trigEngine = te("w")}, {
		t"<?php", nl(),
		t"\tnamespace Controllers;", nl(),
		t"\tuse Core\\View;", nl(),
		t"\tuse Core\\Controller;", nl(),
		nl(),
		t"\tclass ", i(1, "class_name", {key = "i1"}), t" extends Controller", nl(),
		t"\t{", nl(),
		t"\t\tpublic function __construct()", nl(),
		t"\t\t{", nl(),
		t"\t\t\tparent::__construct();", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tpublic function index()", nl(),
		t"\t\t{", nl(),
		t"\t\t\t", i(2, "", {key = "i2"}), nl(),
		t"\t\t}", nl(),
		t"\t}"
	}),
	s({trig = "sm_model", descr = "(sm_model)", priority = -1000, trigEngine = te("w")}, {
		t"<?php ", nl(),
		t"\tnamespace Models;", nl(),
		t" ", nl(),
		t"\tuse Core\\Model;", nl(),
		t"  ", nl(),
		t"\tclass ", i(1, "class_name", {key = "i1"}), t" extends Model ", nl(),
		t"\t{    ", nl(),
		t"\t\tfunction __construct()", nl(),
		t"\t\t{", nl(),
		t"\t\t\tparent::__construct();", nl(),
		t"\t\t}  ", nl(),
		t"\t}"
	}),
	s({trig = "sm_model_crud", descr = "(sm_model_crud)", priority = -1000, trigEngine = te("w")}, {
		t"<?php ", nl(),
		t"\tnamespace Models;", nl(),
		nl(),
		t"\tuse Core\\Model;", nl(),
		nl(),
		t"\tclass ", i(1, "class_name", {key = "i1"}), t" extends Model ", nl(),
		t"\t{    ", nl(),
		t"\t\tprivate $", i(2, "table", {key = "i2"}), t";", nl(),
		t"\t\tfunction __construct()", nl(),
		t"\t\t{", nl(),
		t"\t\t\tparent::__construct();", nl(),
		t"\t\t}  ", nl(),
		t"\t\t", nl(),
		t"\t\tpublic function getRow($where)", nl(),
		t"\t\t{", nl(),
		t"\t\t\treturn $this->db->select(\'SELECT * FROM \'.$table.\' WHERE ", i(3, "where", {key = "i3"}), t"\', $data);", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tpublic function getRows($where)", nl(),
		t"\t\t{", nl(),
		t"\t\t\treturn $this->db->select(\'SELECT * FROM \'.$table.\');", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tpublic function insert($data)", nl(),
		t"\t\t{", nl(),
		t"\t\t\t$this->db->insert($table, $data);", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tpublic function update($data, $where)", nl(),
		t"\t\t{", nl(),
		t"\t\t\t$this->db->update($table ,$data, $where);", nl(),
		t"\t\t}", nl(),
		nl(),
		t"\t\tpublic function delete($where)", nl(),
		t"\t\t{", nl(),
		t"\t\t\t$this->db->delete($table, $where);", nl(),
		t"\t\t}", nl(),
		t"\t}"
	}),
	s({trig = "sm_render", descr = "(sm_render)", priority = -1000, trigEngine = te("w")}, {
		t"View::render(\'", i(1, "view", {key = "i1"}), t"\', $", i(2, "array", {key = "i2"}), t");"
	}),
	s({trig = "sm_render_template", descr = "(sm_render_template)", priority = -1000, trigEngine = te("w")}, {
		t"View::renderTemplate(\'", i(1, "part", {key = "i1"}), t"\', $", i(2, "array", {key = "i2"}), t");", nl()
	}),
	s({trig = "sm_db_select", descr = "(sm_db_select)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->select(", i(1, "sql", {key = "i1"}), t", ", i(2, "where", {key = "i2"}), t");", nl()
	}),
	s({trig = "sm_db_insert", descr = "(sm_db_insert)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->insert(", i(1, "table", {key = "i1"}), t", ", i(2, "data", {key = "i2"}), t");", nl()
	}),
	s({trig = "sm_db_update", descr = "(sm_db_update)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->update(", i(1, "table", {key = "i1"}), t", ", i(2, "data", {key = "i2"}), t", ", i(3, "where", {key = "i3"}), t");", nl()
	}),
	s({trig = "sm_db_delete", descr = "(sm_db_delete)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->delete(", i(1, "table", {key = "i1"}), t", ", i(2, "where", {key = "i2"}), t");", nl()
	}),
	s({trig = "sm_db_truncate", descr = "(sm_db_truncate)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->delete(", i(1, "table", {key = "i1"}), t");", nl()
	}),
	s({trig = "sm_session_set", descr = "(sm_session_set)", priority = -1000, trigEngine = te("w")}, {
		t"Session::set(", i(1, "key", {key = "i1"}), t", ", i(2, "value", {key = "i2"}), t");", nl()
	}),
	s({trig = "sm_session_get", descr = "(sm_session_get)", priority = -1000, trigEngine = te("w")}, {
		t"Session::get(", i(1, "key", {key = "i1"}), t");", nl()
	}),
	s({trig = "sm_session_pull", descr = "(sm_session_pull)", priority = -1000, trigEngine = te("w")}, {
		t"Session::pull(", i(1, "key", {key = "i1"}), t");", nl()
	}),
	s({trig = "sm_session_id", descr = "(sm_session_id)", priority = -1000, trigEngine = te("w")}, {
		t"Session::id();", nl()
	}),
	s({trig = "sm_session_destroy", descr = "(sm_session_destroy)", priority = -1000, trigEngine = te("w")}, {
		t"Session::set(", i(1, "key", {key = "i1"}), t");", nl()
	}),
	s({trig = "sm_session_display", descr = "(sm_session_display)", priority = -1000, trigEngine = te("w")}, {
		t"Session::display();", nl()
	}),
	s({trig = "sm_url_redirect", descr = "(sm_url_redirect)", priority = -1000, trigEngine = te("w")}, {
		t"Url:redirect(\'", i(1, "path", {key = "i1"}), t"\');", nl()
	}),
	s({trig = "sm_url_previous", descr = "(sm_url_previous)", priority = -1000, trigEngine = te("w")}, {
		t"Url:previous();", nl()
	}),
	s({trig = "sm_url_templatepath", descr = "(sm_url_templatepath)", priority = -1000, trigEngine = te("w")}, {
		t"Url:templatePath();", nl()
	}),
	s({trig = "sm_url_autolink", descr = "(sm_url_autolink)", priority = -1000, trigEngine = te("w")}, {
		t"Url:autolink(\'", i(1, "string", {key = "i1"}), t"\');"
	}),
})
