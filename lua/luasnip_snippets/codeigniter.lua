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
	3,
	3,
	3,
	2,
	2,
	4,
	3,
	3,
	4,
	3,
	4,
	2,
	2,
	2,
	2,
	1,
	1,
	1,
	4,
	2,
	2,
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
	1,
	1,
	2,
	2,
	2,
	3,
}
ls.add_snippets("codeigniter", {
	s({trig = "ci_controller", descr = "(ci_controller)", priority = -1000, trigEngine = te("w")}, {
		t"<?php if ( ! defined(\'BASEPATH\')) exit(\'No direct script access allowed\');", nl(),
		nl(),
		t"class ", i(1, "ClassName", {key = "i1"}), t" extends CI_Controller", nl(),
		t"{", nl(),
		t"\tfunction __construct()", nl(),
		t"\t{", nl(),
		t"\t\tparent::__construct();", nl(),
		t"\t\t", i(2, "// code...", {key = "i2"}), nl(),
		t"\t}", nl(),
		nl(),
		t"\tfunction ", i(3, "index", {key = "i3"}), t"()", nl(),
		t"\t{", nl(),
		t"\t\t", i(4, "// code...", {key = "i4"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ci_model", descr = "(ci_model)", priority = -1000, trigEngine = te("w")}, {
		t"<?php if ( ! defined(\'BASEPATH\')) exit(\'No direct script access allowed\');", nl(),
		nl(),
		t"class ", i(1, "ClassName_model", {key = "i1"}), t" extends CI_Model", nl(),
		t"{", nl(),
		t"\tfunction __construct()", nl(),
		t"\t{", nl(),
		t"\t\tparent::__construct();", nl(),
		t"\t\t", i(2, "// code...", {key = "i2"}), nl(),
		t"\t}", nl(),
		t"} "
	}),
	s({trig = "ci_model_crudl", descr = "(ci_model_crudl)", priority = -1000, trigEngine = te("w")}, {
		t"<?php if ( ! defined(\'BASEPATH\')) exit(\'No direct script access allowed\');", nl(),
		nl(),
		t"class ", i(1, "ClassName_model", {key = "i1"}), t" extends CI_Model", nl(),
		t"{", nl(),
		t"\tprivate $table = \'", i(2, "table_name", {key = "i2"}), t"\';", nl(),
		nl(),
		t"\tfunction __construct()", nl(),
		t"\t{", nl(),
		t"\t\tparent::__construct();", nl(),
		t"\t\t", i(3, "// code...", {key = "i3"}), nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function create($data)", nl(),
		t"\t{", nl(),
		t"\t\tif($this->db->insert($this->table, $data))", nl(),
		t"\t\t\treturn true;", nl(),
		t"\t\telse", nl(),
		t"\t\t\treturn false;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function read($id)", nl(),
		t"\t{", nl(),
		t"\t\treturn $this->db->get_where($this->table, array(\'id\', $id))->result();", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function update($id, $data)", nl(),
		t"\t{", nl(),
		t"\t\tif($this->db->update($this->table, $data, array(\'id\' => $id)))", nl(),
		t"\t\t\treturn true;", nl(),
		t"\t\telse", nl(),
		t"\t\t\treturn false;", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function delete($id)", nl(),
		t"\t{", nl(),
		t"\t\tif(is_array($id))", nl(),
		t"\t\t{", nl(),
		t"\t\t\t$this->db->trans_start();", nl(),
		t"\t\t\tforeach($id as $elem)", nl(),
		t"\t\t\t\t$this->db->delete($this->table, array(\'id\' => $elem));", nl(),
		t"\t\t\t$this->db->trans_complete();", nl(),
		t"\t\t}", nl(),
		t"\t\telse", nl(),
		t"\t\t{", nl(),
		t"\t\t\tif($this->db->delete($this->table, array(\'id\' => $id)))", nl(),
		t"\t\t\t\treturn true;", nl(),
		t"\t\t\telse", nl(),
		t"\t\t\t\treturn false;", nl(),
		t"\t\t}", nl(),
		t"\t}", nl(),
		nl(),
		t"\tpublic function listRows($limit = null, $offset = 0)", nl(),
		t"\t{", nl(),
		t"\t\tif(!is_null($limit))", nl(),
		t"\t\t\t$this->db->limit($limit, $offset);", nl(),
		t"\t\treturn $this->db->get($this->table)->result();", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ci_load-view", descr = "(ci_load-view)", priority = -1000, trigEngine = te("w")}, {
		t"$this->load->view(\"", i(1, "view_name", {key = "i1"}), t"\", $", i(2, "data", {key = "i2"}), t");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_db-insert", descr = "(ci_db-insert)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->insert(\"", i(1, "table", {key = "i1"}), t"\", $", i(2, "data", {key = "i2"}), t");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_db-select", descr = "(ci_db-select)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->select(\"", i(1, "id, ...", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_db-from", descr = "(ci_db-from)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->from(\"", i(1, "table", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_db-join", descr = "(ci_db-join)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->join(\"", i(1, "table", {key = "i1"}), t"\", \"", i(2, "", {key = "i2"}), t"\", \"", i(3, "type", {key = "i3"}), t"\");", i(4, "", {key = "i4"})
	}),
	s({trig = "ci_db-where", descr = "(ci_db-where)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->where(\"", i(1, "key", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_db-or_where", descr = "(ci_db-or_where)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->or_where(\"", i(1, "key", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_db-get", descr = "(ci_db-get)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->get(\"", i(1, "table", {key = "i1"}), t"\", ", i(2, "limit", {key = "i2"}), t", ", i(3, "offset", {key = "i3"}), t");", i(4, "", {key = "i4"})
	}),
	s({trig = "ci_db-delete", descr = "(ci_db-delete)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->delete(\"", i(1, "table", {key = "i1"}), t"\", \"", i(2, "where", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_db-update", descr = "(ci_db-update)", priority = -1000, trigEngine = te("w")}, {
		t"$this->db->update(\"", i(1, "table", {key = "i1"}), t"\", $", i(2, "set", {key = "i2"}), t", $", i(3, "where", {key = "i3"}), t");", i(4, "", {key = "i4"})
	}),
	s({trig = "ci_input-post", descr = "(ci_input-post)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->post(\"", i(1, "index", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_input-get", descr = "(ci_input-get)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->get(\"", i(1, "index", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_input-cookie", descr = "(ci_input-cookie)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->cookie(\"", i(1, "index", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_input-server", descr = "(ci_input-server)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->server(\"", i(1, "index", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_input-user_agent", descr = "(ci_input-user_agent)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->user_agent();", i(1, "", {key = "i1"})
	}),
	s({trig = "ci_input-is_ajax_request", descr = "(ci_input-is_ajax_request)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->is_ajax_request();", i(1, "", {key = "i1"})
	}),
	s({trig = "ci_input-is_cli_request", descr = "(ci_input-is_cli_request)", priority = -1000, trigEngine = te("w")}, {
		t"$this->input->is_cli_request();", i(1, "", {key = "i1"})
	}),
	s({trig = "ci_form_validation-set_rules", descr = "(ci_form_validation-set_rules)", priority = -1000, trigEngine = te("w")}, {
		t"$this->form_validation->set_rules(\"", i(1, "field", {key = "i1"}), t"\", \"", i(2, "label", {key = "i2"}), t"\", \"", i(3, "trim|required", {key = "i3"}), t"\");", i(4, "", {key = "i4"})
	}),
	s({trig = "ci_form_open", descr = "(ci_form_open)", priority = -1000, trigEngine = te("w")}, {
		t"form_open(\"", i(1, "action", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_form_open_multipart", descr = "(ci_form_open_multipart)", priority = -1000, trigEngine = te("w")}, {
		t"form_open_multipart(\"", i(1, "action", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_form_hidden", descr = "(ci_form_hidden)", priority = -1000, trigEngine = te("w")}, {
		t"form_hidden(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_input", descr = "(ci_form_input)", priority = -1000, trigEngine = te("w")}, {
		t"form_input(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_password", descr = "(ci_form_password)", priority = -1000, trigEngine = te("w")}, {
		t"form_password(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_upload", descr = "(ci_form_upload)", priority = -1000, trigEngine = te("w")}, {
		t"form_upload(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_textarea", descr = "(ci_form_textarea)", priority = -1000, trigEngine = te("w")}, {
		t"form_textarea(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_dropdown", descr = "(ci_form_dropdown)", priority = -1000, trigEngine = te("w")}, {
		t"form_dropdown(\"", i(1, "name", {key = "i1"}), t"\", $", i(2, "options", {key = "i2"}), t", $${3:selected);${4}"
	}),
	s({trig = "ci_form_checkbox", descr = "(ci_form_checkbox)", priority = -1000, trigEngine = te("w")}, {
		t"form_checkbox(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_radio", descr = "(ci_form_radio)", priority = -1000, trigEngine = te("w")}, {
		t"form_radio(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_submit", descr = "(ci_form_submit)", priority = -1000, trigEngine = te("w")}, {
		t"form_submit(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_reset", descr = "(ci_form_reset)", priority = -1000, trigEngine = te("w")}, {
		t"form_reset(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_button", descr = "(ci_form_button)", priority = -1000, trigEngine = te("w")}, {
		t"form_button(\"", i(1, "name", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_label", descr = "(ci_form_label)", priority = -1000, trigEngine = te("w")}, {
		t"form_label(\"", i(1, "label text", {key = "i1"}), t"\", \"", i(2, "id", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
	s({trig = "ci_form_close", descr = "(ci_form_close)", priority = -1000, trigEngine = te("w")}, {
		t"form_close();", i(1, "", {key = "i1"})
	}),
	s({trig = "ci_validation_errors", descr = "(ci_validation_errors)", priority = -1000, trigEngine = te("w")}, {
		t"validation_errors();", i(1, "", {key = "i1"})
	}),
	s({trig = "ci_session_userdata", descr = "(ci_session_userdata)", priority = -1000, trigEngine = te("w")}, {
		t"$this->session->userdata(\"", i(1, "item", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_session_set_userdata", descr = "(ci_session_set_userdata)", priority = -1000, trigEngine = te("w")}, {
		t"$this->session->set_userdata($", i(1, "array", {key = "i1"}), t");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_session_flashdata", descr = "(ci_session_flashdata)", priority = -1000, trigEngine = te("w")}, {
		t"$this->session->flashdata(\"", i(1, "item", {key = "i1"}), t"\");", i(2, "", {key = "i2"})
	}),
	s({trig = "ci_session_set_flashdata", descr = "(ci_session_set_flashdata)", priority = -1000, trigEngine = te("w")}, {
		t"$this->session->set_flashdata(\"", i(1, "item", {key = "i1"}), t"\", \"", i(2, "value", {key = "i2"}), t"\");", i(3, "", {key = "i3"})
	}),
})
