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
local su = require("luasnip_snippets.snip_utils")
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
	0,
	{{1, 1}, {2, 2}, {3, 3}, {4, 5}},
	0,
	0,
	0,
	0,
	1,
	1,
	0,
	0,
	1,
	0,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
	1,
	1,
	3,
	3,
	{{1, 1}, {2, 2}, {3, 3}, {4, 5}},
	3,
	{{1, 1}, {2, 2}, {3, 4}},
	2,
	1,
	1,
	1,
	1,
	1,
	1,
	2,
	2,
	2,
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 2}, {3, 4}},
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 3}},
	{{1, 1}, {2, 2}, {3, 4}},
	1,
	1,
	1,
	2,
	1,
	4,
	3,
	4,
	2,
	0,
	2,
	{{1, 1}, {2, 3}},
	1,
	{{1, 1}, {2, 3}, {3, 4}},
	{{1, 1}, {2, 3}, {3, 4}},
	1,
	0,
	1,
	1,
	1,
	3,
	0,
	0,
	{{1, 1}, {2, 3}, {3, 4}},
	{{1, 1}, {2, 3}, {3, 4}},
	{{1, 1}, {2, 3}, {3, 4}, {4, 5}, {5, 7}, {6, 8}},
	{{1, 1}, {2, 3}, {3, 4}},
	4,
	4,
	{{1, 1}, {2, 2}, {3, 4}, {4, 5}, {5, 6}},
	1,
	1,
	1,
	2,
	2,
	3,
	3,
	1,
	0,
	1,
	2,
	1,
	0,
	3,
	2,
}

local python_globals = {
	[[# Import package
import datetime

# Return the doc string for PLSQL script
def docstring_plsql(params):
	comment = ""
	if params:
		comment = "/** Parameters\n"
		# Split the arguments
		args = [arg.strip() for arg in params.split(',')]
		for arg in args:
			comment += "* {0:30} : \n".format(arg.split(' ')[0].upper())
		comment += "*/\n"
	# Return the comment string
	return comment

def hdr_params(params, level=0, gap="	 "):
	line = level * gap + "-- -----------------------------------------------"
	comment = line
	if params:
		# Split the arguments
		args = [arg.strip() for arg in params.split(',')]
		for arg in args:
			comment += "\n" + level * gap + "-- {0:20} : ".format(arg.split(' ')[0].upper())
	# comment += line
	# Return the comment string
	return comment

def dyear():
	""" Returns the current Year in YYYY format
	"""
	now = datetime.datetime.now()
	rv=now.year
	return rv

def today():
	""" Returns the current Date in DD-MON-YYYY format
	"""
	now = datetime.datetime.now()
	rv=now.strftime("%d-%b-%Y")
	return rv

def param(var):
	""" Returns the string name wrapped value """
	return "'" + var + " : ' || "
	]]
}


ls.add_snippets("plsql", {
	s({trig = "doc", descr = "(doc) \"Document comment\"", priority = 0, trigEngine = te("")}, {
		t"\t/*", nl(),
		t"\t *\t", i(0, " comment ...", {key = "i0"}), nl(),
		t"\t */"
	}),
	s({trig = "hdr", descr = "(hdr) \"Header Documentation\"", priority = 0, trigEngine = te("")}, {
		t"-- #############################################################################", nl(),
		t"-- #\t  Copyright (c) ", f(function(args, snip) return c_py({"plsql", 2}, "snip.rv = dyear()", python_globals, args, snip, "", am[2]) end, ae(am[2])), t" ", i(1, "company", {key = "i1"}), nl(),
		t"-- #\t\t\t\tAll rights reserved", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"-- # Application   : ", i(2, "schema", {key = "i2"}), nl(),
		t"-- # File Name:\t   : ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_py({"plsql", 2}, "snip.rv=snip.fn", python_globals, args, snip, "", am[2])}, ""), {key = "i3"}) }) end), nl(),
		t"-- # Type\t\t   : Table\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t ", nl(),
		t"-- # Exec Method   : PL/SQL File", nl(),
		t"-- # Description   : This script ", i(4, "create", {key = "i4"}), t" under the schema ", cp(2), nl(),
		t"-- #\t\t\t\t\t\t\t\t\t\t  ", nl(),
		t"-- # Change History", nl(),
		t"-- # -----------------------------------------------------------------------", nl(),
		t"-- # Version\t Date\t\t  Author\t\t\tRemarks", nl(),
		t"-- # =======  ===========  ================\t\t============================", nl(),
		t"-- # 1.0\t  ", f(function(args, snip) return c_py({"plsql", 2}, "snip.rv = today()", python_globals, args, snip, "", am[2]) end, ae(am[2])), t"\tAmit Maindola\t\t Initial Version", nl(),
		t"-- #############################################################################", nl()
	}),
	s({trig = "pkggbl", descr = "(pkggbl) \"Package Global variables\"", priority = 0, trigEngine = te("")}, {
		t"   -- Declare Global Variables", nl(),
		t"   g_sysdate\t\t\t\t\t\t\t\t\tDATE := SYSDATE;", nl(),
		t"   g_delimiter\t\t\t\t\t\t\t\t\tVARCHAR2( 30 ) := \'\t  \';", nl(),
		t"   g_err_length_limit\t\t\t\t\t\tNUMBER := 1500;", nl(),
		t"   g_package_name\t\t\t\t\t   CONSTANT VARCHAR2(30) := \'", i(0, "", {key = "i0"}), t"\';", nl(),
		t"   g_proc_name VARCHAR2(100)\t\t\t\t\t:= NULL;", nl(),
		t"   excp_custom\t\t\t\t\t\t\t\t\tEXCEPTION;", nl(),
		nl(),
		t"   -- Declare User Global Types", nl()
	}),
	s({trig = "flushca", descr = "(flushca) \"Flush Cache\"", priority = 0, trigEngine = te("")}, {
		t"ALTER SYSTEM FLUSH BUFFER_CACHE;"
	}),
	s({trig = "flushsp", descr = "(flushsp) \"Flush Shared Pool\"", priority = 0, trigEngine = te("")}, {
		t"ALTER SYSTEM FLUSH SHARED_POOL;"
	}),
	s({trig = "err", descr = "(err)", priority = 0, trigEngine = te("")}, {
		t"\tshow errors;"
	}),
	s({trig = "sel", descr = "(sel) \"Select statement\"", priority = 0, trigEngine = te("")}, {
		t"SELECT ", i(0, "*", {key = "i0"}), t" FROM ", i(1, "", {key = "i1"}), t" WHERE 1 = 1;"
	}),
	s({trig = "selc", descr = "(selc) \"Select statement\"", priority = 0, trigEngine = te("")}, {
		t"SELECT COUNT(1) FROM ", i(1, "", {key = "i1"}), t" WHERE ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "wrn", descr = "(wrn) \"Where ROWNNUM\"", priority = 0, trigEngine = te("")}, {
		t"WHERE ROWNUM <= 10 ", i(0, "AND", {key = "i0"})
	}),
	s({trig = "arn", descr = "(arn) \"AND ROWNNUM\"", priority = 0, trigEngine = te("")}, {
		t"AND ROWNUM <= 10 ", i(0, ";", {key = "i0"})
	}),
	s({trig = "ppram", descr = "(ppram) \"Retuns param in wrapped format\"", priority = 0, trigEngine = te("")}, {
		t"\t||", f(function(args, snip) return c_py({"plsql", 11}, "snip.rv = param(t[1].upper())", python_globals, args, snip, "", am[11]) end, ae(am[11])), i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "dbo", descr = "(dbo) \"Show output \"", priority = 0, trigEngine = te("")}, {
		t"\tDBMS_OUTPUT.put_line(\'", i(0, "", {key = "i0"}), t"\');"
	}),
	s({trig = "dbop", descr = "(dbop) \"Show Parameter output \"", priority = 0, trigEngine = te("")}, {
		t"\tDBMS_OUTPUT.put_line(", f(function(args, snip) return c_py({"plsql", 13}, "snip.rv = param(t[1].upper())", python_globals, args, snip, "", am[13]) end, ae(am[13])), i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "dbl", descr = "(dbl) \"Log message in Log Table, Change procedure as defined by you\"", priority = 0, trigEngine = te("")}, {
		t"\tDEBUG_LOG_PKG.WRITE_LOG(", i(1, "\'Test\'", {key = "i1"}), t",", cp(1), t" ,", i(0, "", {key = "i0"}), t" );"
	}),
	s({trig = "plog", descr = "(plog) \"Print Log output \"", priority = 0, trigEngine = te("")}, {
		t"\tprintlog(", f(function(args, snip) return c_py({"plsql", 15}, "snip.rv = param(t[1].upper())", python_globals, args, snip, "", am[15]) end, ae(am[15])), i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "dut", descr = "(dut) \"DBMS_OUTPUT.put_line\"", priority = 0, trigEngine = te("")}, {
		t"\tDBMS_UTILITY.get_time;"
	}),
	s({trig = "bc", descr = "(bc) \"Bulk collect into\"", priority = 0, trigEngine = te("")}, {
		t"\tbulk collect into ", i(0, "", {key = "i0"})
	}),
	s({trig = "ei", descr = "(ei) \"Execute Immediate\"", priority = 0, trigEngine = te("")}, {
		t"\tEXECUTE IMMEDIATE \'", i(0, "statement", {key = "i0"}), t"\' ;"
	}),
	s({trig = "eitt", descr = "(eitt) \"Execute Immediate TRUNCATE Table\"", priority = 0, trigEngine = te("")}, {
		t"\tEXECUTE IMMEDIATE( \'TRUNCATE TABLE ", i(0, "table", {key = "i0"}), t"\');"
	}),
	s({trig = "eitp", descr = "(eitp) \"Execute Immediate ALTER Table Truncate partition\"", priority = 0, trigEngine = te("")}, {
		t"\tEXECUTE IMMEDIATE( \'ALTER TABLE ", i(1, "table", {key = "i1"}), t" TRUNCATE PARTITION ", i(0, "partition", {key = "i0"}), t"\');"
	}),
	s({trig = "prmpt", descr = "(prmpt) \"Prompt message\"", priority = 0, trigEngine = te("")}, {
		t"PROMPT ", i(1, "Creating ", {key = "i1"}), t"..."
	}),
	s({trig = "crseq", descr = "(crseq) \"Create Sequence\"", priority = 0, trigEngine = te("")}, {
		t"DROP SEQUENCE ", i(1, "schema", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t"_s;", nl(),
		nl(),
		t"CREATE SEQUENCE ", cp(1), t".", cp(2), t"_s", nl(),
		t"   START WITH ", i(3, "1", {key = "i3"}), nl(),
		t"   MAXVALUE 999999999999999999999999999", nl(),
		t"   MINVALUE 1", nl(),
		t"   NOCYCLE", nl(),
		t"   NOCACHE", nl(),
		t"   NOORDER;"
	}),
	s({trig = "crsyn", descr = "(crsyn) \"Create Synonym\"", priority = 0, trigEngine = te("")}, {
		nl(),
		t"CREATE OR REPLACE SYNONYM ", i(1, "schema", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t" FOR ", i(3, "target", {key = "i3"}), t".", i(0, "", {key = "i0"}), t";", nl()
	}),
	s({trig = "crind", descr = "(crind) \"Create Index\"", priority = 0, trigEngine = te("")}, {
		t"DROP INDEX ", cp(1), t".", cp(4), t";", nl(),
		nl(),
		t"CREATE INDEX ", cp(1), t".", cp(2), t"_", i(4, "", {key = "i5"}), nl(),
		t"ON ", i(1, "schema", {key = "i1"}), t".", i(2, "table", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t") ", t"TABLESPACE ", i(0, "", {key = "i0"}), t" ", t";"
	}),
	s({trig = "drtab", descr = "(drtab) \"Drop Table\"", priority = 0, trigEngine = te("")}, {
		t"DROP TABLE ", i(1, "schema", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t" CASCADE CONSTRAINTS ", i(3, "PURGE", {key = "i3"}), t";", nl()
	}),
	s({trig = "crtab", descr = "(crtab) \"Create Table\"", priority = 0, trigEngine = te("")}, {
		nl(),
		t"DROP TABLE ", i(1, "schema", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t" CASCADE CONSTRAINTS PURGE;", nl(),
		nl(),
		t"CREATE TABLE ", cp(1), t".", cp(2), nl(),
		t"(", nl(),
		t"   ", i(0, "", {key = "i0"}), nl(),
		t")", nl(),
		t"TABLESPACE ", i(3, "", {key = "i4"}), nl(),
		t";"
	}),
	s({trig = "ccol", descr = "(ccol) \"Add VARCHAR2 column to table\"", priority = 0, trigEngine = te("")}, {
		t"\t", i(1, ",", {key = "i1"}), t" ", i(2, "name", {key = "i2"}), t"\tVARCHAR2(", i(0, "100", {key = "i0"}), t")"
	}),
	s({trig = "dcol", descr = "(dcol) \"Add DATE column to table\"", priority = 0, trigEngine = te("")}, {
		t"\t", i(1, ",", {key = "i1"}), t" ", i(0, "name", {key = "i0"}), t"\tDATE"
	}),
	s({trig = "ncol", descr = "(ncol) \"Add NUMBER column to table\"", priority = 0, trigEngine = te("")}, {
		t"\t", i(1, ",", {key = "i1"}), t" ", i(0, "name", {key = "i0"}), t"\tNUMBER"
	}),
	s({trig = "at", descr = "(at) \"Alter Table\"", priority = 0, trigEngine = te("")}, {
		t"\tALTER TABLE ", i(1, "table", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "tr", descr = "(tr) \"Type record\"", priority = 0, trigEngine = te("")}, {
		t"\tTYPE t_", i(1, "rec", {key = "i1"}), t" IS RECORD (", i(0, "/* columns */", {key = "i0"}), t" );"
	}),
	s({trig = "tt", descr = "(tt) \"Type Table\"", priority = 0, trigEngine = te("")}, {
		t"\tTYPE t_", i(1, "tbl", {key = "i1"}), t" IS TABLE OF ", i(0, "table_name", {key = "i0"}), t"%ROWTYPE INDEX BY BINARY_INTEGER;"
	}),
	s({trig = "tc", descr = "(tc) \"Type Cursor\"", priority = 0, trigEngine = te("")}, {
		t"\tTYPE t_", i(1, "tbl", {key = "i1"}), t" IS TABLE OF ", i(0, "cur", {key = "i0"}), t"%ROWTYPE INDEX BY BINARY_INTEGER;"
	}),
	s({trig = "pn", descr = "(pn)", priority = 0, trigEngine = te("")}, {
		t"\tp_", i(1, "", {key = "i1"}), t"\t\t", i(2, "IN", {key = "i2"}), t"\t\tNUMBER ", t"DEFAULT ", i(0, "NULL", {key = "i0"})
	}),
	s({trig = "pd", descr = "(pd)", priority = 0, trigEngine = te("")}, {
		t"\tp_", i(1, "", {key = "i1"}), t"\t\t", i(2, "IN", {key = "i2"}), t"\t\tDATE ", t"DEFAULT ", i(0, "SYSDATE", {key = "i0"})
	}),
	s({trig = "pc", descr = "(pc)", priority = 0, trigEngine = te("")}, {
		t"\tP_", i(1, "", {key = "i1"}), t"\t\t", i(2, "IN", {key = "i2"}), t"\t\tVARCHAR2 ", t"DEFAULT ", i(0, "NULL", {key = "i0"})
	}),
	s({trig = "ln", descr = "(ln)", priority = 0, trigEngine = te("")}, {
		t"\tl_", i(1, "", {key = "i1"}), t"\t\tNUMBER ", t" := ", i(2, "", {key = "i3"}), t" ", t";"
	}),
	s({trig = "ld", descr = "(ld)", priority = 0, trigEngine = te("")}, {
		t"\tl_", i(1, "", {key = "i1"}), t"\t\tDATE ", t" := ", i(2, "", {key = "i3"}), t" ", t";"
	}),
	s({trig = "lc", descr = "(lc)", priority = 0, trigEngine = te("")}, {
		t"\tl_", i(1, "", {key = "i1"}), t"\t\tVARCHAR2(", i(2, "100", {key = "i2"}), t") ", t" := ", i(3, "", {key = "i4"}), t" ", t";"
	}),
	s({trig = "gn", descr = "(gn)", priority = 0, trigEngine = te("")}, {
		t"\tg_", i(1, "", {key = "i1"}), t"\t\tNUMBER ", t" := ", i(2, "10", {key = "i2"}), t" ", t";"
	}),
	s({trig = "gd", descr = "(gd)", priority = 0, trigEngine = te("")}, {
		t"\tg_", i(1, "", {key = "i1"}), t"\t\tDATE ", t" := ", i(2, "SYSDATE", {key = "i2"}), t" ", t";"
	}),
	s({trig = "gc", descr = "(gc)", priority = 0, trigEngine = te("")}, {
		t"\tg_", i(1, "", {key = "i1"}), t"\t\tVARCHAR2(", i(2, "100", {key = "i2"}), t") ", t" := ", i(3, "", {key = "i4"}), t" ", t";"
	}),
	s({trig = "ltbl", descr = "(ltbl)", priority = 0, trigEngine = te("")}, {
		t"\tl_tbl_", i(1, "", {key = "i1"}), t"\t\t", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "lrec", descr = "(lrec)", priority = 0, trigEngine = te("")}, {
		t"\tl_rec_", i(1, "", {key = "i1"}), t"\t\t", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "if", descr = "(if) \"If Condition\"", priority = 0, trigEngine = te("")}, {
		t"\tIF(", i(1, "", {key = "i1"}), t") THEN", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\tEND IF;"
	}),
	s({trig = "ife", descr = "(ife) \"IF-Else Condition\"", priority = 0, trigEngine = te("")}, {
		t"\tIF(", i(1, "", {key = "i1"}), t") THEN", nl(),
		t"\t\t", i(2, "", {key = "i2"}), t";", nl(),
		t"\tELSIF", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\tEND IF;"
	}),
	s({trig = "els", descr = "(els) \"Else Condition\"", priority = 0, trigEngine = te("")}, {
		t"\tELSIF ", i(1, "condition", {key = "i1"}), t" THEN", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "case", descr = "(case) \"Case statement\"", priority = 0, trigEngine = te("")}, {
		t"\tCASE WHEN (", i(1, "", {key = "i1"}), t") THEN", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"\tWHEN (", i(3, "", {key = "i3"}), t") THEN", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t", i(0, "ELSE", {key = "i0"}), nl(),
		t"\tEND "
	}),
	s({trig = "while", descr = "(while) \"While Loop\"", priority = 0, trigEngine = te("")}, {
		t"\tWHILE ", i(1, "a", {key = "i1"}), t" ", i(2, "condition", {key = "i2"}), t" ", i(3, "b", {key = "i3"}), t"\tLOOP", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\tEND LOOP;"
	}),
	s({trig = "fori", descr = "(fori) \"For Loop\"", priority = 0, trigEngine = te("")}, {
		t"\tFOR ", i(1, "indx", {key = "i1"}), t" in ", i(2, "1", {key = "i2"}), t"..", i(3, "10", {key = "i3"}), t"  LOOP", nl(),
		t"\t\t", i(4, "", {key = "i4"}), t";", nl(),
		t"\tEND LOOP;"
	}),
	s({trig = "fort", descr = "(fort) \"Table For Loop\"", priority = 0, trigEngine = te("")}, {
		t"\tFOR ", i(1, "indx", {key = "i1"}), t" in 1..", i(2, "ttb", {key = "i2"}), t".count LOOP", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\tEND LOOP;"
	}),
	s({trig = "loop", descr = "(loop) \"Loop statement\"", priority = 0, trigEngine = te("")}, {
		t"\tLOOP", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\tEND LOOP;"
	}),
	s({trig = "fora", descr = "(fora) \"For All Loop\"", priority = 0, trigEngine = te("")}, {
		t"\t  IF ( ", i(1, "ttbl", {key = "i1"}), t".COUNT > 0 ) THEN", nl(),
		t"\t\t BEGIN", nl(),
		t"\t\t\tFORALL ", i(2, "indx", {key = "i2"}), t" IN 1 .. ", cp(1), t".COUNT", nl(),
		t"\t\t\t\t-- Insert/Update", nl(),
		t"\t\t\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t\t EXCEPTION --Exception Block", nl(),
		t"\t\t\tWHEN OTHERS THEN", nl(),
		t"\t\t\t   l_errmsg\t  := \'Error while Bulk updating, Error : \' || SQLERRM;", nl(),
		t"\t\t\t   RAISE excp_custom;", nl(),
		t"\t\t END;", nl(),
		t"\t  END IF;"
	}),
	s({trig = "forc", descr = "(forc) \"For Cursor Loop\"", priority = 0, trigEngine = te("")}, {
		t"\tFOR ", cp(1), t"_rec IN ", i(1, "cur", {key = "i1"}), t" ", t"(", i(2, "param", {key = "i2"}), t")", nl(),
		t"\tLOOP", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\tEND LOOP; -- End ", cp(1)
	}),
	s({trig = "dcur", descr = "(dcur) \"Cursor declaration\"", priority = 0, trigEngine = te("")}, {
		t"\tCURSOR ", i(1, "cur", {key = "i1"}), t" IS", nl(),
		t"\tSELECT ", i(0, "", {key = "i0"}), nl(),
		t"\t\tFROM ", cp(1), nl(),
		t"\t\tWHERE 1 = 1;"
	}),
	s({trig = "copen", descr = "(copen) \"Open Cursor\"", priority = 0, trigEngine = te("")}, {
		t"\tOPEN ", i(1, "cursor", {key = "i1"}), t" ", t"( ", i(2, "param", {key = "i2"}), t" )", t";", nl(),
		t"\tFETCH ", cp(1), nl(),
		t"\tINTO ", i(3, "record", {key = "i3"}), t";", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tIF ( ", cp(1), t" %NOTFOUND ) THEN", nl(),
		t"\t\tCLOSE ", cp(1), t";", nl(),
		t"\t\tl_errmsg := \'No records fetched in cursor : ", cp(1), t".\';", nl(),
		t"\t\tRAISE excp_custom;", nl(),
		t"\tEND IF;", nl(),
		t"\tCLOSE ", cp(1), t";"
	}),
	s({trig = "copenbc", descr = "(copenbc) \"Open Cursor Bulk collect\"", priority = 0, trigEngine = te("")}, {
		t"\tOPEN ", i(1, "cursor", {key = "i1"}), t" ", t"( ", i(2, "param", {key = "i2"}), t" )", t";", nl(),
		t"\tFETCH ", cp(1), nl(),
		t"\tBULK COLLECT INTO ", i(3, "ttbl", {key = "i3"}), t";", nl(),
		t"\tCLOSE ", cp(1), t";", nl(),
		nl(),
		t"\tIF ( ", cp(4), t".count = 0 ) THEN", nl(),
		t"\t\tl_errmsg := \'No records fetched in cursor : ", cp(1), t".\';", nl(),
		t"\t\tRAISE excp_custom;{0}", nl(),
		t"\tEND IF;"
	}),
	s({trig = "decl", descr = "(decl) \"Declare Begin block\"", priority = 0, trigEngine = te("")}, {
		t"DECLARE", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"BEGIN\t   ", nl(),
		t"\t", i(0, "null", {key = "i0"}), nl(),
		t"EXCEPTION --Exception Block\t  ", nl(),
		t"   WHEN NO_DATA_FOUND THEN", nl(),
		t"\t\tdbms_output.put_line(\'No Data Found\');", nl(),
		t"   WHEN OTHERS THEN", nl(),
		t"\t  dbms_output.put_line(\'Error while . Error : \'||sqlerrm);", nl(),
		t"END;"
	}),
	s({trig = "begin", descr = "(begin) \"Begin block\"", priority = 0, trigEngine = te("")}, {
		t"BEGIN\t   ", nl(),
		t"   ", i(0, "", {key = "i0"}), nl(),
		t"EXCEPTION --Exception Block\t  ", nl(),
		t"   WHEN NO_DATA_FOUND THEN", nl(),
		t"\t  printlog(\'No Data Found\');", nl(),
		t"   WHEN OTHERS THEN", nl(),
		t"\t  printlog(\'Error while . Error : \'||sqlerrm);", nl(),
		t"END;"
	}),
	s({trig = "excp", descr = "(excp) \"Exception Block\"", priority = 0, trigEngine = te("")}, {
		t"\tEXCEPTION --Exception Block", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\t\tWHEN OTHERS THEN", nl(),
		t"\t\t", i(1, "", {key = "i1"}), t";", nl(),
		t"\tEND;"
	}),
	s({trig = "rae", descr = "(rae) \"Raise Application Error\"", priority = 0, trigEngine = te("")}, {
		t"RAISE_APPLICATION_ERROR(", i(1, "-20000", {key = "i1"}), t",", i(0, "\'\'", {key = "i0"}), t");"
	}),
	s({trig = "crjob", descr = "(crjob) \"Submit DBMS Job\"", priority = 0, trigEngine = te("")}, {
		t"-- Submit the job to get the output", nl(),
		t"BEGIN", nl(),
		t"\tDECLARE", nl(),
		t"\t\tvjob\t\t  INTEGER;", nl(),
		t"\tBEGIN", nl(),
		t"\t\tDBMS_JOB.submit( vjob, \'", i(1, "procedure", {key = "i1"}), i(0, "(\'\'\'\')", {key = "i0"}), t";\', SYSDATE );", nl(),
		t"\t\tDBMS_OUTPUT.put_line( \'Job id : \' || vjob );", nl(),
		t"\t\tCOMMIT;", nl(),
		t"\tEND;", nl(),
		t"END;"
	}),
	s({trig = "whilejob", descr = "(whilejob) \"Submit DBMS Job with While Loop\"", priority = 0, trigEngine = te("")}, {
		t"-- Submit the job to get the output", nl(),
		nl(),
		t"BEGIN", nl(),
		t"\tDECLARE", nl(),
		t"\t\tvjob\t\t  INTEGER;", nl(),
		t"\tBEGIN", nl(),
		t"\t\tDBMS_JOB.submit ( vjob , \'", nl(),
		t"DECLARE", nl(),
		t"\tl_start_date\t\t  DATE := \'\'", i(1, "01-Jan-2017", {key = "i1"}), t"\'\';", nl(),
		t"BEGIN", nl(),
		t"\tWHILE l_start_date < \'\'", i(2, "01-Jan-2017", {key = "i2"}), t"\'\'", nl(),
		t"\tLOOP", nl(),
		t"\t\t", i(3, "Procedure", {key = "i3"}), i(0, "( to_char(l_start_date,\'\'YYYYMMDD\'\') )", {key = "i0"}), t";", nl(),
		t"\t\tl_start_date\t\t  := TRUNC( l_start_date + 1 );", nl(),
		t"\tEND LOOP;", nl(),
		t"EXCEPTION --Exception Block", nl(),
		t"\tWHEN OTHERS THEN", nl(),
		t"\t\tDBMS_OUTPUT.put_line( \'\'Error while . Error : \'\' || SQLERRM );", nl(),
		t"END;", nl(),
		t"\t\t\t\'", nl(),
		t"\t\t  , SYSDATE", nl(),
		t"\t\t);", nl(),
		t"\t\tDBMS_OUTPUT.put_line( \'Job id : \' || vjob );", nl(),
		t"\t\tCOMMIT;", nl(),
		t"\tEND;", nl(),
		t"END;"
	}),
	s({trig = "crprintlog", descr = "(crprintlog) \"Create Printlog Procedure\"", priority = 0, trigEngine = te("")}, {
		t"\t------------------------------------------------------------------------------------------------", nl(),
		t"\t-- PROCEDURE\t: PRINTLOG", nl(),
		t"\t-- Description\t: This procedure is used to print log messages in Log file, Table and Console", nl(),
		t"\t------------------------------------------------------------------------------------------------", nl(),
		t"\tPROCEDURE printlog (p_message IN VARCHAR2)", nl(),
		t"\tIS", nl(),
		t"\t\tl_errmsg\t\t\t\t\t\t\t\t\t VARCHAR2 (10000);", nl(),
		t"\tBEGIN", nl(),
		t"\t\tl_errmsg := SUBSTR ( p_message, 1, g_err_length_limit);", nl(),
		t"\t\tfnd_file.put_line ( fnd_file.LOG, l_errmsg); -- Debug log file", nl(),
		t"\t\tDBMS_OUTPUT.put_line (l_errmsg); -- Console output", nl(),
		t"\t\tDEBUG_LOG_PKG.WRITE_LOG(g_package_name,g_proc_name,p_message); -- Debug table", nl(),
		t"\tEND printlog;"
	}),
	s({trig = "crgeterr", descr = "(crgeterr) \"Create get_errmsg function\"", priority = 0, trigEngine = te("")}, {
		t"   -- Form the error message for when others", nl(),
		t"   FUNCTION get_errmsg( p_message IN VARCHAR2 DEFAULT NULL )", nl(),
		t"\t  RETURN VARCHAR2", nl(),
		t"   IS", nl(),
		t"   BEGIN", nl(),
		t"\t  RETURN \'Error occured in \' || g_package_name || \'.\' || g_proc_name || \'. \' || NVL( p_message, \'\' ) || \' Error : \' || SQLERRM;", nl(),
		t"   EXCEPTION --Exception Block", nl(),
		t"\t  WHEN OTHERS THEN", nl(),
		t"\t\t printlog( \'Error while forming messgage. Error : \' || SQLERRM );", nl(),
		t"\t\t RETURN NULL;", nl(),
		t"   END;"
	}),
	s({trig = "crpksfunc", descr = "(crpksfunc) \"Create package specification function\"", priority = 0, trigEngine = te("")}, {
		t"------------------------------------------------------------------------------------------------", nl(),
		t"-- Function\t\t: ", f(function(args, snip) return c_py({"plsql", 66}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[66]) end, ae(am[66])), nl(),
		t"-- Description\t: This Function will ", i(3, "description", {key = "i3"}), t".", nl(),
		f(function(args, snip) return c_py({"plsql", 66}, "snip.rv=hdr_params(t[3]) ", python_globals, args, snip, "", am[66]) end, ae(am[66])), nl(),
		t"------------------------------------------------------------------------------------------------", nl(),
		t"FUNCTION ", i(1, "func", {key = "i1"}), t" ", t"(", i(2, "params", {key = "i2"}), t")", t" ", nl(),
		t"\t  RETURN ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "crpksproc", descr = "(crpksproc) \"Create package specification procedure\"", priority = 0, trigEngine = te("")}, {
		t"------------------------------------------------------------------------------------------------", nl(),
		t"-- PROCEDURE\t: ", f(function(args, snip) return c_py({"plsql", 67}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[67]) end, ae(am[67])), nl(),
		t"-- Description\t: This Procedure will ", i(3, "description", {key = "i3"}), t".", nl(),
		f(function(args, snip) return c_py({"plsql", 67}, "snip.rv=hdr_params(t[3],0) ", python_globals, args, snip, "", am[67]) end, ae(am[67])), nl(),
		t"------------------------------------------------------------------------------------------------", nl(),
		t"PROCEDURE ", i(1, "proc", {key = "i1"}), t" ", t"(", i(2, "params", {key = "i2"}), t")", t" ;"
	}),
	s({trig = "crpkbfunc", descr = "(crpkbfunc) \"Create package body function\"", priority = 0, trigEngine = te("")}, {
		t"\t------------------------------------------------------------------------------------------------", nl(),
		t"\t-- Function\t\t: ", f(function(args, snip) return c_py({"plsql", 68}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[68]) end, ae(am[68])), nl(),
		t"\t-- Description\t: This Function will ", i(6, "description", {key = "i6"}), t".", nl(),
		t"\t", f(function(args, snip) return c_py({"plsql", 68}, "snip.rv=hdr_params(t[3],2) ", python_globals, args, snip, "", am[68]) end, ae(am[68])), nl(),
		t"\t------------------------------------------------------------------------------------------------", nl(),
		t"   FUNCTION ", i(1, "func", {key = "i1"}), t" ", t"(", i(2, "params", {key = "i2"}), t")", t" ", nl(),
		t"\t  RETURN ", i(3, "", {key = "i4"}), nl(),
		t"   IS", nl(),
		t"\t  -- Declare Cursors", nl(),
		t"\t  -- Declare Variables", nl(),
		t"\t  ", i(4, "l_", {key = "i4"}), t"\t\t\t\t\t\t\t ", cp(4), t" ", t"( ", i(5, "length", {key = "i5"}), t" )", t";", nl(),
		t"   BEGIN", nl(),
		t"\t  -- Initialize ", nl(),
		t"\t  g_proc_name\t\t\t\t\t\t\t\t:= \'", f(function(args, snip) return c_py({"plsql", 68}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[68]) end, ae(am[68])), t"\';", nl(),
		t"\t  ", i(0, "", {key = "i0"}), nl(),
		t"\t  -- Return value", nl(),
		t"\t  RETURN ", cp(5), t" ;", nl(),
		t"   EXCEPTION", nl(),
		t"\t  WHEN OTHERS", nl(),
		t"\t  THEN", nl(),
		t"\t\t RETURN NULL;", nl(),
		t"   END ", cp(1), t";"
	}),
	s({trig = "crpkbproc", descr = "(crpkbproc) \"Create package body procedure\"", priority = 0, trigEngine = te("")}, {
		nl(),
		t"------------------------------------------------------------------------------------------------", nl(),
		t"-- PROCEDURE\t: ", f(function(args, snip) return c_py({"plsql", 69}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[69]) end, ae(am[69])), nl(),
		t"-- Description\t: This Procedure will ", i(3, "description", {key = "i3"}), t".", nl(),
		f(function(args, snip) return c_py({"plsql", 69}, "snip.rv=hdr_params(t[3]) ", python_globals, args, snip, "", am[69]) end, ae(am[69])), nl(),
		t"------------------------------------------------------------------------------------------------", nl(),
		t"PROCEDURE ", i(1, "proc", {key = "i1"}), t" ", t"(", i(2, "params", {key = "i2"}), t")", t" ", nl(),
		t"IS", nl(),
		t"   -- Declare cursors", nl(),
		t"   -- Declare Out and exception variables", nl(),
		t"   l_errmsg\t\t\t\t\t\t\t\t\t\tVARCHAR2( 10000 ) := null;", nl(),
		t"   excp_skip\t\t\t\t\t\t\t\t\tEXCEPTION;", nl(),
		t"-- Declare Varibales", nl(),
		nl(),
		t"BEGIN", nl(),
		t"   -- Initializing out parameters", nl(),
		t"   g_proc_name\t\t\t\t\t\t\t\t\t:= \'", f(function(args, snip) return c_py({"plsql", 69}, "snip.rv = t[1].upper()", python_globals, args, snip, "", am[69]) end, ae(am[69])), t"\';", nl(),
		nl(),
		t"   ", i(0, "", {key = "i0"}), nl(),
		t"EXCEPTION -- Exception block of Procedure", nl(),
		t"   WHEN excp_custom THEN", nl(),
		t"\t  ROLLBACK;", nl(),
		t"\t  printlog( l_errmsg );", nl(),
		t"   WHEN OTHERS THEN", nl(),
		t"\t  ROLLBACK;", nl(),
		t"\t  l_errmsg\t\t\t\t\t\t\t\t\t  := get_errmsg;", nl(),
		t"\t  printlog( l_errmsg );", nl(),
		t"END ", cp(1), t";", nl()
	}),
	s({trig = "crpks", descr = "(crpks) \"Create Package specification\"", priority = 0, trigEngine = te("")}, {
		t"CREATE OR REPLACE PACKAGE ", i(1, "", {key = "i1"}), t".", i(2, "", {key = "i2"}), nl(),
		t"AS", nl(),
		t"-- #############################################################################", nl(),
		t"-- #\t  Copyright (c) ", f(function(args, snip) return c_py({"plsql", 70}, "snip.rv = dyear()", python_globals, args, snip, "", am[70]) end, ae(am[70])), t" ", i(3, "", {key = "i3"}), nl(),
		t"-- #\t\t\t\tAll rights reserved", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"-- #", nl(),
		t"-- # Application   : ", cp(1), nl(),
		t"-- # File Name:\t   : ", f(function(args, snip) return c_py({"plsql", 70}, "snip.rv = t[2].upper()", python_globals, args, snip, "", am[70]) end, ae(am[70])), t".pks", nl(),
		t"-- # Exec Method   : PL/SQL Stored - Procedure", nl(),
		t"-- # Description   : Package used for ", i(4, "", {key = "i4"}), nl(),
		t"-- #", nl(),
		t"-- # Change History", nl(),
		t"-- # -----------------------------------------------------------------------", nl(),
		t"-- # Version\t Date\t\t  Author\t\t   Remarks", nl(),
		t"-- # =======  ===========  =============\t============================", nl(),
		t"-- # 1.0\t  ", f(function(args, snip) return c_py({"plsql", 70}, "snip.rv = today()", python_globals, args, snip, "", am[70]) end, ae(am[70])), t"  Amit Maindola\t   Initial Version", nl(),
		t"-- #", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"   ", i(0, "", {key = "i0"}), nl(),
		t"END ", cp(2), t";", nl(),
		t"/", nl(),
		nl(),
		t"SHOW ERROR", nl(),
		t"/"
	}),
	s({trig = "crpkb", descr = "(crpkb) \"Create package body\"", priority = 0, trigEngine = te("")}, {
		t"CREATE OR REPLACE PACKAGE BODY ", i(1, "", {key = "i1"}), t".", i(2, "", {key = "i2"}), nl(),
		t"IS", nl(),
		t"-- #############################################################################", nl(),
		t"-- #\t  Copyright (c) ", f(function(args, snip) return c_py({"plsql", 71}, "snip.rv = dyear()", python_globals, args, snip, "", am[71]) end, ae(am[71])), t" ", i(3, "", {key = "i3"}), nl(),
		t"-- #\t\t\t\tAll rights reserved", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"-- #", nl(),
		t"-- # Application   : ", cp(1), nl(),
		t"-- # File Name:\t   : ", f(function(args, snip) return c_py({"plsql", 71}, "snip.rv = t[2].upper()", python_globals, args, snip, "", am[71]) end, ae(am[71])), t".pkb", nl(),
		t"-- # Exec Method   : PL/SQL Stored - Procedure", nl(),
		t"-- # Description   : Package used for ", i(4, "", {key = "i4"}), nl(),
		t"-- #", nl(),
		t"-- # Change History", nl(),
		t"-- # -----------------------------------------------------------------------", nl(),
		t"-- # Version\t Date\t\t  Author\t\t   Remarks", nl(),
		t"-- # =======  ===========  =============\t============================", nl(),
		t"-- # 1.0\t  ", f(function(args, snip) return c_py({"plsql", 71}, "snip.rv = today()", python_globals, args, snip, "", am[71]) end, ae(am[71])), t"  Amit Maindola\t   Initial Version", nl(),
		t"-- #", nl(),
		t"-- #", nl(),
		t"-- ############################################################################ ", nl(),
		t"   -- Declare Global Variables", nl(),
		t"   g_sysdate\t\t\t\t\t\t\t\t\tDATE := SYSDATE;", nl(),
		t"   g_delimiter\t\t\t\t\t\t\t\t\tVARCHAR2( 30 ) := \'\t  \';", nl(),
		t"   g_err_length_limit\t\t\t\t\t\tNUMBER := 1500;", nl(),
		t"   g_package_name\t\t\t\t\t   CONSTANT VARCHAR2(30) := \'", f(function(args, snip) return c_py({"plsql", 71}, "snip.rv = t[2].upper()", python_globals, args, snip, "", am[71]) end, ae(am[71])), t"\';", nl(),
		t"   g_proc_name VARCHAR2(100)\t\t\t\t\t:= NULL;", nl(),
		t"   excp_custom\t\t\t\t\t\t\t\t\tEXCEPTION;", nl(),
		nl(),
		t"   -- Declare User Global Types", nl(),
		nl(),
		t"   ------------------------------------------------------------------------------------------------", nl(),
		t"   -- PROCEDURE\t   : PRINTLOG", nl(),
		t"   -- Description  : This procedure is used to print log messages", nl(),
		t"   ------------------------------------------------------------------------------------------------", nl(),
		t"   PROCEDURE printlog( p_message IN VARCHAR2 )", nl(),
		t"   IS", nl(),
		t"   BEGIN", nl(),
		t"\t  DBMS_OUTPUT.PUT_LINE( p_message );", nl(),
		t"\t  DEBUG_LOG_PKG.WRITE_LOG(g_package_name,g_proc_name,p_message);", nl(),
		t"   END printlog;", nl(),
		nl(),
		t"   -- Form the error message for when others", nl(),
		t"   FUNCTION get_errmsg( p_message IN VARCHAR2 DEFAULT NULL )", nl(),
		t"\t  RETURN VARCHAR2", nl(),
		t"   IS", nl(),
		t"   BEGIN", nl(),
		t"\t  RETURN \'Error occured in \' || g_package_name || \'.\' || g_proc_name || \'. \' || NVL( p_message, \'\' ) || \' Error : \' || SQLERRM;", nl(),
		t"   EXCEPTION --Exception Block", nl(),
		t"\t  WHEN OTHERS THEN", nl(),
		t"\t\t printlog( \'Error while forming messgage. Error : \' || SQLERRM );", nl(),
		t"\t\t RETURN NULL;", nl(),
		t"   END;", nl(),
		nl(),
		t"END ", cp(2), t";", nl(),
		t"/", nl(),
		nl(),
		t"SHOW ERROR", nl(),
		t"/", nl()
	}),
	s({trig = "crproc", descr = "(crproc) \"Create procedure\"", priority = 0, trigEngine = te("")}, {
		nl(),
		t"CREATE OR REPLACE PROCEDURE ", i(1, "schema", {key = "i1"}), t".", i(2, "name", {key = "i2"}), t" ", t"( ", i(3, "prams", {key = "i3"}), t" )", nl(),
		t"-- #############################################################################", nl(),
		t"-- #\t  Copyright (c) ", f(function(args, snip) return c_py({"plsql", 72}, "snip.rv = dyear()", python_globals, args, snip, "", am[72]) end, ae(am[72])), t" ", i(4, "", {key = "i5"}), nl(),
		t"-- #\t\t\t\tAll rights reserved", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"-- #", nl(),
		t"-- # Application   : ", cp(1), nl(),
		t"-- # File Name:\t   : ", f(function(args, snip) return c_py({"plsql", 72}, "snip.rv = t[2].upper()", python_globals, args, snip, "", am[72]) end, ae(am[72])), t".prc", nl(),
		t"-- # Exec Method   : PL/SQL Stored - Procedure", nl(),
		t"-- # Description   : Package used for ", i(5, "", {key = "i6"}), nl(),
		t"-- #", nl(),
		t"-- # Change History", nl(),
		t"-- # -----------------------------------------------------------------------", nl(),
		t"-- # Version\t Date\t\t  Author\t\t   Remarks", nl(),
		t"-- # =======  ===========  =============\t============================", nl(),
		t"-- # 1.0\t  ", f(function(args, snip) return c_py({"plsql", 72}, "snip.rv = today()", python_globals, args, snip, "", am[72]) end, ae(am[72])), t"  Amit Maindola\t   Initial Version", nl(),
		t"-- #", nl(),
		t"-- #", nl(),
		t"-- ############################################################################", nl(),
		t"is", nl(),
		t"\tg_proc_name\t\t\t\t\t\t\t\t\t VARCHAR2(30)\t   := \'", f(function(args, snip) return c_py({"plsql", 72}, "snip.rv = t[2].upper()", python_globals, args, snip, "", am[72]) end, ae(am[72])), t"\';", nl(),
		t"\tl_errmsg\t\t\t\t\t\t\t\t\t VARCHAR2( 10000 ) := null;", nl(),
		t"\texcp_custom\t\t\t\t\t\t\t\t\t EXCEPTION;", nl(),
		t"\t-- Declare cursors", nl(),
		t"\t-- Declare Varibales", nl(),
		t"BEGIN", nl(),
		t"   -- Initializing out parameters", nl(),
		nl(),
		t"   ", i(0, "", {key = "i0"}), nl(),
		t"EXCEPTION -- Exception block of Procedure", nl(),
		t"   WHEN excp_custom THEN", nl(),
		t"\t  ROLLBACK;", nl(),
		t"\t  DEBUG_LOG_PKG.WRITE_LOG(g_proc_name,g_proc_name ,l_errmsg );", nl(),
		t"   WHEN OTHERS THEN", nl(),
		t"\t  ROLLBACK;", nl(),
		t"\t  l_errmsg\t\t\t\t\t\t\t\t\t  := \'Exception in procedure. \'||SQLERRM;", nl(),
		t"\t  DEBUG_LOG_PKG.WRITE_LOG(g_proc_name,g_proc_name ,l_errmsg );", nl(),
		t"END ", cp(2), t";", nl()
	}),
	s({trig = "ps", descr = "(ps)", priority = -1000, trigEngine = te("w")}, {
		t"create or replace package ", i(1, "name", {key = "i1"}), nl(),
		t"as", nl(),
		t"\t", i(0, "-- spec", {key = "i0"}), nl(),
		t"end; -- end of package spec ", cp(1)
	}),
	s({trig = "pb", descr = "(pb)", priority = -1000, trigEngine = te("w")}, {
		t"create or replace package body ", i(1, "name", {key = "i1"}), nl(),
		t"as", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end; -- end of package body ", cp(1), t";"
	}),
	s({trig = "pps", descr = "(pps)", priority = -1000, trigEngine = te("w")}, {
		t"procedure ", i(1, "name", {key = "i1"}), t"(", i(0, "args", {key = "i0"}), t");"
	}),
	s({trig = "ppb", descr = "(ppb)", priority = -1000, trigEngine = te("w")}, {
		t"procedure ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t")", nl(),
		t"as", nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end ", cp(2), t";"
	}),
	s({trig = "pfs", descr = "(pfs)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t")", nl(),
		t"  return ", i(0, "type", {key = "i0"}), t";"
	}),
	s({trig = "pfb", descr = "(pfb)", priority = -1000, trigEngine = te("w")}, {
		t"function ", i(1, "name", {key = "i1"}), t"(", i(2, "args", {key = "i2"}), t")", nl(),
		t"  return ", i(3, "type", {key = "i3"}), nl(),
		t"as", nl(),
		t"\tl_res\t", cp(3), t";", nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), t";", nl(),
		t"\treturn l_res;", nl(),
		t"end ", cp(1), t";"
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t" ", i(2, "in", {key = "i2"}), t" ", i(3, "type", {key = "i3"}), t" ", i(0, " := null", {key = "i0"})
	}),
	s({trig = "tti", descr = "(tti)", priority = -1000, trigEngine = te("w")}, {
		t"type tt_", i(1, "name", {key = "i1"}), t" is table of tr_", i(0, "name", {key = "i0"}), t" index by binary_integer;"
	}),
	s({trig = "beg", descr = "(beg)", priority = -1000, trigEngine = te("w")}, {
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end;"
	}),
	s({trig = "dec", descr = "(dec)", priority = -1000, trigEngine = te("w")}, {
		t"declare", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"begin", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end;"
	}),
	s({trig = "rpipe", descr = "(rpipe)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" in 1 .. ", i(0, "l_res", {key = "i0"}), t".count loop", nl(),
		t"\tpipe row( ", i(2, "", {key = "i2"}), t"(", cp(1), t") );", nl(),
		t"end loop;", nl(),
		t"return;"
	}),
	s({trig = "l", descr = "(l)", priority = -1000, trigEngine = te("w")}, {
		t"l_", i(1, "", {key = "i1"}), t"\t\t", i(0, "number", {key = "i0"}), t";"
	}),
	s({trig = "log", descr = "(log)", priority = -1000, trigEngine = te("w")}, {
		t"dbms_output.put_line(\'", i(0, "", {key = "i0"}), t"\');"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" in ", i(2, "1", {key = "i2"}), t"..", i(3, "42", {key = "i3"}), t" loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
	s({trig = "fors", descr = "(fors)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "rec", {key = "i1"}), t" in (", i(2, " select", {key = "i2"}), t") loop", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"end loop;"
	}),
})
