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


ls.add_snippets("systemverilog", {
	s({trig = "forea", descr = "(forea)", priority = -1000, trigEngine = te("w")}, {
		t"foreach (", i(1, "", {key = "i1"}), t") begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "dowh", descr = "(dowh)", priority = -1000, trigEngine = te("w")}, {
		t"do begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end while (", i(1, "", {key = "i1"}), t");"
	}),
	s({trig = "alc", descr = "(alc)", priority = -1000, trigEngine = te("w")}, {
		t"always_comb begin ", i(1, ": statement_label", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1)
	}),
	s({trig = "alff", descr = "(alff)", priority = -1000, trigEngine = te("w")}, {
		t"always_ff @(posedge ", i(1, "clk", {key = "i1"}), t") begin ", i(2, ": statement_label", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(2)
	}),
	s({trig = "all", descr = "(all)", priority = -1000, trigEngine = te("w")}, {
		t"always_latch begin ", i(1, ": statement_label", {key = "i1"}), nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(1)
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"class ", i(1, "class_name", {key = "i1"}), t";", nl(),
		t"\t// data or class properties", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"\t// initialization", nl(),
		t"\tfunction new();", nl(),
		t"\tendfunction : new", nl(),
		nl(),
		t"endclass : ", cp(1)
	}),
	s({trig = "types", descr = "(types)", priority = -1000, trigEngine = te("w")}, {
		t"typedef struct {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} ", i(1, "name_t", {key = "i1"}), t";"
	}),
	s({trig = "prog", descr = "(prog)", priority = -1000, trigEngine = te("w")}, {
		t"program ", i(1, "program_name", {key = "i1"}), t" ();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endprogram : ", cp(1)
	}),
	s({trig = "intf", descr = "(intf)", priority = -1000, trigEngine = te("w")}, {
		t"interface ", i(1, "program_name", {key = "i1"}), t" ();", nl(),
		t"\t// nets", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\t// clocking", nl(),
		nl(),
		t"\t// modports", nl(),
		nl(),
		t"endinterface : ", cp(1)
	}),
	s({trig = "clock", descr = "(clock)", priority = -1000, trigEngine = te("w")}, {
		t"clocking ", i(1, "clocking_name", {key = "i1"}), t" @(", i(2, "posedge", {key = "i2"}), t" ", i(3, "clk", {key = "i3"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclocking : ", cp(1)
	}),
	s({trig = "cg", descr = "(cg)", priority = -1000, trigEngine = te("w")}, {
		t"covergroup ", i(1, "group_name", {key = "i1"}), t" @(", i(2, "posedge", {key = "i2"}), t" ", i(3, "clk", {key = "i3"}), t");", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endgroup : ", cp(1)
	}),
	s({trig = "pkg", descr = "(pkg)", priority = -1000, trigEngine = te("w")}, {
		t"package ", i(1, "package_name", {key = "i1"}), t";", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endpackage : ", cp(1)
	}),
	s({trig = "uvm_object", descr = "(uvm_object)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" extends ", i(2, "uvm_object", {key = "i2"}), t";", nl(),
		t"\t`uvm_object_utils(", cp(1), t");", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_object_with_parameters", descr = "(uvm_object_with_parameters)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" #(", i(2, "parameters", {key = "i2"}), t") extends ", i(3, "uvm_object", {key = "i3"}), t";", nl(),
		t"\ttypedef ", cp(1), t" #(${2/(\\b(parameter|type)\\s+([A-Za-z_][A-Za-z0-9_$]*)(\\s*=\\s*([A-Za-z0-9_$]+))?)*\\b/", cp(3), t"/g}) this_type_t;", nl(),
		t"\t`uvm_object_param_utils(this_type_t);", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_component", descr = "(uvm_component)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" extends ", i(2, "uvm_component", {key = "i2"}), t";", nl(),
		t"\t`uvm_component_utils(", cp(1), t");", nl(),
		nl(),
		t"\t//  Group: Configuration Object(s)", nl(),
		nl(),
		t"\t//  Var: config_obj", nl(),
		t"\t", i(3, "config_obj_t", {key = "i3"}), t" config_obj;", nl(),
		nl(),
		nl(),
		t"\t//  Group: Components", nl(),
		nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\", uvm_component parent);", nl(),
		t"\t\tsuper.new(name, parent);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_component_with_parameters", descr = "(uvm_component_with_parameters)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" #(", i(2, "parameters", {key = "i2"}), t") extends ", i(3, "uvm_component", {key = "i3"}), t";", nl(),
		t"\ttypedef ", cp(1), t" #(${2/(\\b(parameter|type)\\s+([A-Za-z_][A-Za-z0-9_$]*)(\\s*=\\s*([A-Za-z0-9_$]+))?)*\\b/", cp(3), t"/g}) this_type_t;", nl(),
		t"\t`uvm_component_param_utils(this_type_t);", nl(),
		nl(),
		t"\t//  Group: Configuration Object(s)", nl(),
		nl(),
		t"\t//  Var: config_obj", nl(),
		t"\t", i(4, "config_obj_t", {key = "i4"}), t" config_obj;", nl(),
		nl(),
		nl(),
		t"\t//  Group: Components", nl(),
		nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\", uvm_component parent);", nl(),
		t"\t\tsuper.new(name, parent);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_component_extended", descr = "(uvm_component_extended)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" extends ", i(2, "base_class", {key = "i2"}), t";", nl(),
		t"\t`uvm_component_utils(", cp(1), t");", nl(),
		nl(),
		t"\t//  Group: Configuration Object(s)", nl(),
		nl(),
		nl(),
		t"\t//  Group: Components", nl(),
		nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\", uvm_component parent);", nl(),
		t"\t\tsuper.new(name, parent);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t/*---  UVM Build Phases            ---*/", nl(),
		t"\t/*------------------------------------*/", nl(),
		t"\t//  Function: build_phase", nl(),
		t"\textern function void build_phase(uvm_phase phase);", nl(),
		t"\t//  Function: connect_phase", nl(),
		t"\textern function void connect_phase(uvm_phase phase);", nl(),
		t"\t//  Function: end_of_elaboration_phase", nl(),
		t"\textern function void end_of_elaboration_phase(uvm_phase phase);", nl(),
		nl(),
		t"\t/*---  UVM Run Phases              ---*/", nl(),
		t"\t/*------------------------------------*/", nl(),
		t"\t//  Function: start_of_simulation_phase", nl(),
		t"\textern function void start_of_simulation_phase(uvm_phase phase);", nl(),
		t"\t//  Function: reset_phase", nl(),
		t"\textern task reset_phase(uvm_phase phase);", nl(),
		t"\t//  Function: configure_phase", nl(),
		t"\textern task configure_phase(uvm_phase phase);", nl(),
		t"\t//  Function: main_phase", nl(),
		t"\textern task main_phase(uvm_phase phase);", nl(),
		t"\t//  Function: shutdown_phase", nl(),
		t"\textern task shutdown_phase(uvm_phase phase);", nl(),
		nl(),
		t"\t/*---  UVM Cleanup Phases          ---*/", nl(),
		t"\t/*------------------------------------*/", nl(),
		t"\t//  Function: extract_phase", nl(),
		t"\textern function void extract_phase(uvm_phase phase);", nl(),
		t"\t//  Function: report_phase", nl(),
		t"\textern function void report_phase(uvm_phase phase);", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1), nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  UVM Build Phases                                                          */", nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"function void ", cp(1), t"::build_phase(uvm_phase phase);", nl(),
		t"\t/*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */", nl(),
		t"\t/*  For more information see UVM Cookbook v1800.2 p.503  */", nl(),
		t"\t// super.build_phase(phase);", nl(),
		t"endfunction: build_phase", nl(),
		nl(),
		nl(),
		t"function void ", cp(1), t"::connect_phase(uvm_phase phase);", nl(),
		t"\tsuper.connect_phase(phase);", nl(),
		t"endfunction: connect_phase", nl(),
		nl(),
		nl(),
		t"function void ", cp(1), t"::end_of_elaboration_phase(uvm_phase phase);", nl(),
		t"\tsuper.end_of_elaboration_phase(phase);", nl(),
		t"endfunction: end_of_elaboration_phase", nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  UVM Run Phases                                                            */", nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"function void ", cp(1), t"::start_of_simulation_phase(uvm_phase phase);", nl(),
		t"\tsuper.start_of_simulation_phase(phase);", nl(),
		t"endfunction: start_of_simulation_phase", nl(),
		nl(),
		nl(),
		t"task ", cp(1), t"::reset_phase(uvm_phase phase);", nl(),
		t"endtask: reset_phase", nl(),
		nl(),
		nl(),
		t"task ", cp(1), t"::configure_phase(uvm_phase phase);", nl(),
		t"endtask: configure_phase", nl(),
		nl(),
		nl(),
		t"task ", cp(1), t"::main_phase(uvm_phase phase);", nl(),
		t"endtask: main_phase", nl(),
		nl(),
		nl(),
		t"task ", cp(1), t"::shutdown_phase(uvm_phase phase);", nl(),
		t"endtask: shutdown_phase", nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  UVM Cleanup Phases                                                        */", nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"function void ", cp(1), t"::report_phase(uvm_phase phase);", nl(),
		t"\tsuper.report_phase(phase);", nl(),
		t"endfunction: report_phase", nl(),
		nl(),
		nl(),
		t"function void ", cp(1), t"::extract_phase(uvm_phase phase);", nl(),
		t"\tsuper.extract_phase(phase);", nl(),
		t"endfunction: extract_phase"
	}),
	s({trig = "uvm_sequence", descr = "(uvm_sequence)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" extends ", i(2, "uvm_sequence", {key = "i2"}), t";", nl(),
		t"\t`uvm_object_utils(", cp(1), t");", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t//  Task: pre_start", nl(),
		t"\t//  This task is a user-definable callback that is called before the optional ", nl(),
		t"\t//  execution of <pre_body>.", nl(),
		t"\t// extern virtual task pre_start();", nl(),
		nl(),
		t"\t//  Task: pre_body", nl(),
		t"\t//  This task is a user-definable callback that is called before the execution ", nl(),
		t"\t//  of <body> ~only~ when the sequence is started with <start>.", nl(),
		t"\t//  If <start> is called with ~call_pre_post~ set to 0, ~pre_body~ is not called.", nl(),
		t"\t// extern virtual task pre_body();", nl(),
		nl(),
		t"\t//  Task: pre_do", nl(),
		t"\t//  This task is a user-definable callback task that is called ~on the parent ", nl(),
		t"\t//  sequence~, if any. The sequence has issued a wait_for_grant() call and after", nl(),
		t"\t//  the sequencer has selected this sequence, and before the item is randomized.", nl(),
		t"\t//", nl(),
		t"\t//  Although pre_do is a task, consuming simulation cycles may result in unexpected", nl(),
		t"\t//  behavior on the driver.", nl(),
		t"\t// extern virtual task pre_do(bit is_item);", nl(),
		nl(),
		t"\t//  Function: mid_do", nl(),
		t"\t//  This function is a user-definable callback function that is called after the ", nl(),
		t"\t//  sequence item has been randomized, and just before the item is sent to the ", nl(),
		t"\t//  driver.", nl(),
		t"\t// extern virtual function void mid_do(uvm_sequence_item this_item);", nl(),
		nl(),
		t"\t//  Task: body", nl(),
		t"\t//  This is the user-defined task where the main sequence code resides.", nl(),
		t"\textern virtual task body();", nl(),
		nl(),
		t"\t//  Function: post_do", nl(),
		t"\t//  This function is a user-definable callback function that is called after the ", nl(),
		t"\t//  driver has indicated that it has completed the item, using either this ", nl(),
		t"\t//  item_done or put methods. ", nl(),
		t"\t// extern virtual function void post_do(uvm_sequence_item this_item);", nl(),
		nl(),
		t"\t//  Task: post_body", nl(),
		t"\t//  This task is a user-definable callback task that is called after the execution ", nl(),
		t"\t//  of <body> ~only~ when the sequence is started with <start>.", nl(),
		t"\t//  If <start> is called with ~call_pre_post~ set to 0, ~post_body~ is not called.", nl(),
		t"\t// extern virtual task post_body();", nl(),
		nl(),
		t"\t//  Task: post_start", nl(),
		t"\t//  This task is a user-definable callback that is called after the optional ", nl(),
		t"\t//  execution of <post_body>.", nl(),
		t"\t// extern virtual task post_start();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_sequence_with_parameters", descr = "(uvm_sequence_with_parameters)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" #(", i(2, "parameters", {key = "i2"}), t") extends ", i(3, "uvm_sequence", {key = "i3"}), t";", nl(),
		t"\ttypedef ", cp(1), t" #(${2/(\\b(parameter|type)\\s+([A-Za-z_][A-Za-z0-9_$]*)(\\s*=\\s*([A-Za-z0-9_$]+))?)*\\b/", cp(3), t"/g}) this_type_t;", nl(),
		t"\t`uvm_object_param_utils(this_type_t);", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t//  Task: pre_start", nl(),
		t"\t//  This task is a user-definable callback that is called before the optional ", nl(),
		t"\t//  execution of <pre_body>.", nl(),
		t"\t// extern virtual task pre_start();", nl(),
		nl(),
		t"\t//  Task: pre_body", nl(),
		t"\t//  This task is a user-definable callback that is called before the execution ", nl(),
		t"\t//  of <body> ~only~ when the sequence is started with <start>.", nl(),
		t"\t//  If <start> is called with ~call_pre_post~ set to 0, ~pre_body~ is not called.", nl(),
		t"\t// extern virtual task pre_body();", nl(),
		nl(),
		t"\t//  Task: pre_do", nl(),
		t"\t//  This task is a user-definable callback task that is called ~on the parent ", nl(),
		t"\t//  sequence~, if any. The sequence has issued a wait_for_grant() call and after", nl(),
		t"\t//  the sequencer has selected this sequence, and before the item is randomized.", nl(),
		t"\t//", nl(),
		t"\t//  Although pre_do is a task, consuming simulation cycles may result in unexpected", nl(),
		t"\t//  behavior on the driver.", nl(),
		t"\t// extern virtual task pre_do(bit is_item);", nl(),
		nl(),
		t"\t//  Function: mid_do", nl(),
		t"\t//  This function is a user-definable callback function that is called after the ", nl(),
		t"\t//  sequence item has been randomized, and just before the item is sent to the ", nl(),
		t"\t//  driver.", nl(),
		t"\t// extern virtual function void mid_do(uvm_sequence_item this_item);", nl(),
		nl(),
		t"\t//  Task: body", nl(),
		t"\t//  This is the user-defined task where the main sequence code resides.", nl(),
		t"\textern virtual task body();", nl(),
		nl(),
		t"\t//  Function: post_do", nl(),
		t"\t//  This function is a user-definable callback function that is called after the ", nl(),
		t"\t//  driver has indicated that it has completed the item, using either this ", nl(),
		t"\t//  item_done or put methods. ", nl(),
		t"\t// extern virtual function void post_do(uvm_sequence_item this_item);", nl(),
		nl(),
		t"\t//  Task: post_body", nl(),
		t"\t//  This task is a user-definable callback task that is called after the execution ", nl(),
		t"\t//  of <body> ~only~ when the sequence is started with <start>.", nl(),
		t"\t//  If <start> is called with ~call_pre_post~ set to 0, ~post_body~ is not called.", nl(),
		t"\t// extern virtual task post_body();", nl(),
		nl(),
		t"\t//  Task: post_start", nl(),
		t"\t//  This task is a user-definable callback that is called after the optional ", nl(),
		t"\t//  execution of <post_body>.", nl(),
		t"\t// extern virtual task post_start();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1)
	}),
	s({trig = "uvm_sequence_functions", descr = "(uvm_sequence_functions)", priority = -1000, trigEngine = te("w")}, {
		t"// task ", i(1, "my_class::", {key = "i1"}), t"pre_start();", nl(),
		t"// endtask: pre_start", nl(),
		nl(),
		nl(),
		t"// task ", cp(1), t"pre_body();", nl(),
		t"// endtask: pre_body", nl(),
		nl(),
		nl(),
		t"// task ", cp(1), t"pre_do(bit is_item);", nl(),
		t"// endtask: pre_do", nl(),
		nl(),
		nl(),
		t"// function void ", cp(1), t"mid_do(uvm_sequence_item this_item);", nl(),
		t"// endfunction: mid_do", nl(),
		nl(),
		nl(),
		t"task ", cp(1), t"body();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endtask: body", nl(),
		nl(),
		nl(),
		t"// function void ", cp(1), t"post_do(uvm_sequence_item this_item);", nl(),
		t"// endfunction: post_do", nl(),
		nl(),
		nl(),
		t"// task ", cp(1), t"post_body();", nl(),
		t"// endtask: post_body", nl(),
		nl(),
		nl(),
		t"// task ", cp(1), t"post_start();", nl(),
		t"// endtask: post_start"
	}),
	s({trig = "uvm_sequence_item", descr = "(uvm_sequence_item)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" extends ", i(2, "uvm_sequence_item", {key = "i2"}), t";", nl(),
		t"\ttypedef ", cp(1), t" this_type_t;", nl(),
		t"\t`uvm_object_utils(", cp(1), t");", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t//  Function: do_copy", nl(),
		t"\t// extern function void do_copy(uvm_object rhs);", nl(),
		t"\t//  Function: do_compare", nl(),
		t"\t// extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);", nl(),
		t"\t//  Function: convert2string", nl(),
		t"\t// extern function string convert2string();", nl(),
		t"\t//  Function: do_print", nl(),
		t"\t// extern function void do_print(uvm_printer printer);", nl(),
		t"\t//  Function: do_record", nl(),
		t"\t// extern function void do_record(uvm_recorder recorder);", nl(),
		t"\t//  Function: do_pack", nl(),
		t"\t// extern function void do_pack();", nl(),
		t"\t//  Function: do_unpack", nl(),
		t"\t// extern function void do_unpack();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1), nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  Constraints                                                               */", nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		nl(),
		nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  Functions                                                                 */", nl(),
		t"/*----------------------------------------------------------------------------*/"
	}),
	s({trig = "uvm_sequence_item_with_parameters", descr = "(uvm_sequence_item_with_parameters)", priority = -1000, trigEngine = te("w")}, {
		t"//  Class: ", cp(1), nl(),
		t"//", nl(),
		t"class ", i(1, "my_class", {key = "i1"}), t" #(", i(2, "parameters", {key = "i2"}), t") extends ", i(3, "uvm_sequence_item", {key = "i3"}), t";", nl(),
		t"\ttypedef ", cp(1), t" #(${2/(\\b(parameter|type)\\s+([A-Za-z_][A-Za-z0-9_$]*)(\\s*=\\s*([A-Za-z0-9_$]+))?)*\\b/", cp(3), t"/g}) this_type_t;", nl(),
		t"\t`uvm_object_param_utils(this_type_t);", nl(),
		nl(),
		t"\t//  Group: Variables", nl(),
		nl(),
		nl(),
		t"\t//  Group: Constraints", nl(),
		nl(),
		nl(),
		t"\t//  Group: Functions", nl(),
		nl(),
		t"\t//  Constructor: new", nl(),
		t"\tfunction new(string name = \"", cp(1), t"\");", nl(),
		t"\t\tsuper.new(name);", nl(),
		t"\tendfunction: new", nl(),
		nl(),
		t"\t//  Function: do_copy", nl(),
		t"\t// extern function void do_copy(uvm_object rhs);", nl(),
		t"\t//  Function: do_compare", nl(),
		t"\t// extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);", nl(),
		t"\t//  Function: convert2string", nl(),
		t"\t// extern function string convert2string();", nl(),
		t"\t//  Function: do_print", nl(),
		t"\t// extern function void do_print(uvm_printer printer);", nl(),
		t"\t//  Function: do_record", nl(),
		t"\t// extern function void do_record(uvm_recorder recorder);", nl(),
		t"\t//  Function: do_pack", nl(),
		t"\t// extern function void do_pack();", nl(),
		t"\t//  Function: do_unpack", nl(),
		t"\t// extern function void do_unpack();", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"endclass: ", cp(1), nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  Constraints                                                               */", nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		nl(),
		nl(),
		nl(),
		nl(),
		t"/*----------------------------------------------------------------------------*/", nl(),
		t"/*  Functions                                                                 */", nl(),
		t"/*----------------------------------------------------------------------------*/"
	}),
	s({trig = "uvm_sequence_item_do_copy", descr = "(uvm_sequence_item_do_copy)", priority = -1000, trigEngine = te("w")}, {
		t"function void ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_copy(uvm_object rhs);", nl(),
		t"\tthis_type_t rhs_;", nl(),
		nl(),
		t"\tif (!$cast(rhs_, rhs)) begin", nl(),
		t"\t\t`uvm_error({this.get_name(), \".do_copy()\"}, \"Cast failed!\");", nl(),
		t"\t\treturn;", nl(),
		t"\tend", nl(),
		t"\t// `uvm_info({this.get_name(), \".do_copy()\"}, \"Cast succeded.\", UVM_HIGH);", nl(),
		nl(),
		t"\t/*  chain the copy with parent classes  */", nl(),
		t"\tsuper.do_copy(rhs);", nl(),
		nl(),
		t"\t/*  list of local properties to be copied  */", nl(),
		t"\t// <this.property_name = rhs_.property_name>;", nl(),
		t"endfunction: do_copy", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_do_compare", descr = "(uvm_sequence_item_do_compare)", priority = -1000, trigEngine = te("w")}, {
		t"function bit ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_compare(uvm_object rhs, uvm_comparer comparer);", nl(),
		t"\tthis_type_t rhs_;", nl(),
		nl(),
		t"\tif (!$cast(rhs_, rhs)) begin", nl(),
		t"\t\t`uvm_error({this.get_name(), \".do_compare()\"}, \"Cast failed!\");", nl(),
		t"\t\treturn;", nl(),
		t"\tend", nl(),
		t"\t// `uvm_info({this.get_name(), \".do_compare()\"}, \"Cast succeded.\", UVM_HIGH);", nl(),
		nl(),
		t"\t/*  chain the compare with parent classes  */", nl(),
		t"\tdo_compare = super.do_compare(rhs, comparer);", nl(),
		nl(),
		t"\t/*  list of local properties to be compared:  */", nl(),
		t"\tdo_compare &= (", nl(),
		t"\t\t// <this.property_name == rhs_.property_name> &&", nl(),
		t"\t\t// <this.property_name == rhs_.property_name>", nl(),
		t"\t);", nl(),
		t"endfunction: do_compare", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_convert2string", descr = "(uvm_sequence_item_convert2string)", priority = -1000, trigEngine = te("w")}, {
		t"function string ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"convert2string();", nl(),
		t"\tstring s;", nl(),
		nl(),
		t"\t/*  chain the convert2string with parent classes  */", nl(),
		t"\ts = super.convert2string();", nl(),
		nl(),
		t"\t/*  list of local properties to be printed:  */", nl(),
		t"\t//  guide             0---4---8--12--16--20--24--28--32--36--40--44--48--", nl(),
		t"\t// s = {s, $sformatf(\"property_label      : 0x%0h\\n\", property_name)};", nl(),
		t"\t// s = {s, $sformatf(\"property_label      :   %0d\\n\", property_name)};", nl(),
		nl(),
		t"\treturn s;", nl(),
		t"endfunction: convert2string", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_do_print", descr = "(uvm_sequence_item_do_print)", priority = -1000, trigEngine = te("w")}, {
		t"function void ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_print(uvm_printer printer)", nl(),
		t"\t/*  chain the print with parent classes  */", nl(),
		t"\tsuper.do_print(printer);", nl(),
		nl(),
		t"\t/*  list of local properties to be printed:  */", nl(),
		t"\t// printer.print_string(\"property_label\", property_name);", nl(),
		t"\t// printer.print_field_int(\"property_label\", property_name, $bits(property_name), UVM_HEX);", nl(),
		t"endfunction: do_print", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_do_record", descr = "(uvm_sequence_item_do_record)", priority = -1000, trigEngine = te("w")}, {
		t"function void ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_record(uvm_recorder recorder);", nl(),
		t"\t/*  chain the record with parent classes  */", nl(),
		t"\tsuper.do_record(recorder);", nl(),
		nl(),
		t"\t/*  list of local properties to be recorded:  */", nl(),
		t"\t/*  note: use uvm_record_int, uvm_record_string, uvm_record_time, uvm_record_real for known basic types.  */", nl(),
		t"\t// `uvm_record_string(\"property_label\", property_name);", nl(),
		t"\t// `uvm_record_int(\"property_label\", property_name, $bits(property_name), UVM_HEX);", nl(),
		t"endfunction: do_record", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_do_pack", descr = "(uvm_sequence_item_do_pack)", priority = -1000, trigEngine = te("w")}, {
		t"function void ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_pack(uvm_packer packer);", nl(),
		t"\t/*  chain the pack with parent classes  */", nl(),
		t"\tsuper.do_pack(packer);", nl(),
		nl(),
		t"\t/*  list of local properties to be packed:  */", nl(),
		t"\t//  note: look up the appropriate macro(s) for your properties!", nl(),
		t"\t// `uvm_pack_int(property_name);", nl(),
		t"\t// `uvm_pack_queue(property_name);", nl(),
		t"\t// `uvm_pack_string(property_name);", nl(),
		t"endfunction: do_pack", i(0, "", {key = "i0"})
	}),
	s({trig = "uvm_sequence_item_do_unpack", descr = "(uvm_sequence_item_do_unpack)", priority = -1000, trigEngine = te("w")}, {
		t"function void ", i(1, "my_class", {key = "i1"}), i(2, "::", {key = "i2"}), t"do_unpack(uvm_packer packer);", nl(),
		t"\t/*  chain the unpack with parent classes  */", nl(),
		t"\tsuper.do_unpack(packer);", nl(),
		nl(),
		t"\t/*  list of local properties to be unpacked:  */", nl(),
		t"\t//  note: look up the appropriate macro(s) for your properties!", nl(),
		t"\t// `uvm_unpack_int(property_name);", nl(),
		t"\t// `uvm_unpack_queue(property_name);", nl(),
		t"\t// `uvm_unpack_string(property_name);", nl(),
		t"endfunction: do_unpack", i(0, "", {key = "i0"})
	}),
})
