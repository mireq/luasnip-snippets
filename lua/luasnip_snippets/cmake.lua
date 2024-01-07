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
	{0, 1, 2, 3},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1},
}
ls.add_snippets("cmake", {
	s({trig = "init", descr = "(init)", priority = -1000, trigEngine = te("w")}, {
		t"cmake_minimum_required(VERSION ", i(1, "2.8.2", {key = "i1"}), t")", nl(),
		t"project(", i(2, "ProjectName", {key = "i2"}), t")", nl(),
		nl(),
		t"find_package(", i(3, "library", {key = "i3"}), t")", nl(),
		nl(),
		t"include_directories(${", cp(3), t"_INCLUDE_DIRS})", nl(),
		nl(),
		t"add_subdirectory(", i(0, "src", {key = "i0"}), t")", nl(),
		nl(),
		t"add_executable(", cp(2), t")", nl(),
		nl(),
		t"target_link_libraries(", cp(2), t" ${", cp(3), t"_LIBRARIES})", nl()
	}),
	s({trig = "proj", descr = "(proj)", priority = -1000, trigEngine = te("w")}, {
		t"project(", i(0, "Name", {key = "i0"}), t")", nl()
	}),
	s({trig = "min", descr = "(min)", priority = -1000, trigEngine = te("w")}, {
		t"cmake_minimum_required(VERSION ", i(0, "2.8.2", {key = "i0"}), t")", nl()
	}),
	s({trig = "include", descr = "(include)", priority = -1000, trigEngine = te("w")}, {
		t"include_directories(${", i(0, "include_dir", {key = "i0"}), t"})", nl()
	}),
	s({trig = "find", descr = "(find)", priority = -1000, trigEngine = te("w")}, {
		t"find_package(", i(1, "library", {key = "i1"}), t" ", i(0, "REQUIRED", {key = "i0"}), t")", nl()
	}),
	s({trig = "glob", descr = "(glob)", priority = -1000, trigEngine = te("w")}, {
		t"file(glob ", i(1, "srcs", {key = "i1"}), t" *.", i(0, "cpp", {key = "i0"}), t")", nl()
	}),
	s({trig = "subdir", descr = "(subdir)", priority = -1000, trigEngine = te("w")}, {
		t"add_subdirectory(", i(0, "src", {key = "i0"}), t")", nl()
	}),
	s({trig = "lib", descr = "(lib)", priority = -1000, trigEngine = te("w")}, {
		t"add_library(", i(1, "lib", {key = "i1"}), t" ${", i(0, "srcs", {key = "i0"}), t"})", nl()
	}),
	s({trig = "link", descr = "(link)", priority = -1000, trigEngine = te("w")}, {
		t"target_link_libraries(", i(1, "bin", {key = "i1"}), t" ", i(0, "somelib", {key = "i0"}), t")", nl()
	}),
	s({trig = "bin", descr = "(bin)", priority = -1000, trigEngine = te("w")}, {
		t"add_executable(", i(1, "bin", {key = "i1"}), t")", nl()
	}),
	s({trig = "set", descr = "(set)", priority = -1000, trigEngine = te("w")}, {
		t"set(", i(1, "var", {key = "i1"}), t" ", i(0, "val", {key = "i0"}), t")", nl()
	}),
	s({trig = "dep", descr = "(dep)", priority = -1000, trigEngine = te("w")}, {
		t"add_dependencies(", i(1, "target", {key = "i1"}), nl(),
		t"\t", i(0, "dep", {key = "i0"}), nl(),
		t")", nl()
	}),
	s({trig = "Ext_url", descr = "(Ext_url)", priority = -1000, trigEngine = te("w")}, {
		t"include(ExternalProject)", nl(),
		t"ExternalProject_Add(", i(1, "googletest", {key = "i1"}), nl(),
		t"  URL ", i(2, "http://googletest.googlecode.com/files/gtest-1.7.0.zip", {key = "i2"}), nl(),
		t"  URL_HASH SHA1=", i(3, "f85f6d2481e2c6c4a18539e391aa4ea8ab0394af", {key = "i3"}), nl(),
		t"  SOURCE_DIR \"", i(4, "${CMAKE_BINARY_DIR}/gtest-src", {key = "i4"}), t"\"", nl(),
		t"  BINARY_DIR \"", i(0, "${CMAKE_BINARY_DIR}/gtest-build", {key = "i0"}), t"\"", nl(),
		t"  CONFIGURE_COMMAND \"\"", nl(),
		t"  BUILD_COMMAND     \"\"", nl(),
		t"  INSTALL_COMMAND   \"\"", nl(),
		t"  TEST_COMMAND      \"\"", nl(),
		t")", nl()
	}),
	s({trig = "Ext_git", descr = "(Ext_git)", priority = -1000, trigEngine = te("w")}, {
		t"include(ExternalProject)", nl(),
		t"ExternalProject_Add(", i(1, "googletest", {key = "i1"}), nl(),
		t"  GIT_REPOSITORY    ", i(2, "https://github.com/google/googletest.git", {key = "i2"}), nl(),
		t"  GIT_TAG           ", i(3, "master", {key = "i3"}), nl(),
		t"  SOURCE_DIR        \"", i(4, "${CMAKE_BINARY_DIR}/googletest-src", {key = "i4"}), t"\"", nl(),
		t"  BINARY_DIR        \"", i(0, "${CMAKE_BINARY_DIR}/googletest-build", {key = "i0"}), t"\"", nl(),
		t"  CONFIGURE_COMMAND \"\"", nl(),
		t"  BUILD_COMMAND     \"\"", nl(),
		t"  INSTALL_COMMAND   \"\"", nl(),
		t"  TEST_COMMAND      \"\"", nl(),
		t")", nl()
	}),
	s({trig = "props", descr = "(props)", priority = -1000, trigEngine = te("w")}, {
		t"set_target_properties(", i(1, "target", {key = "i1"}), nl(),
		t"\t", i(2, "properties", {key = "i2"}), t" ", i(3, "compile_flags", {key = "i3"}), nl(),
		t"\t", i(0, "\"-O3 -Wall -pedantic\"", {key = "i0"}), nl(),
		t")", nl()
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"add_test(", i(1, "ATestName", {key = "i1"}), t" ", i(0, "testCommand --options", {key = "i0"}), t")"
	}),
})
