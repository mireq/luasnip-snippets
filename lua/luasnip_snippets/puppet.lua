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
	1,
	1,
	2,
	4,
	4,
	{{1, 1}, {2, 3}},
	3,
	2,
	3,
	3,
	2,
	7,
	1,
	1,
	1,
	1,
	2,
	1,
	2,
	3,
	4,
	1,
	2,
	3,
	4,
	2,
	3,
	4,
	1,
	2,
	3,
	1,
	1,
	1,
	1,
	2,
	3,
	2,
	2,
	1,
	9,
	9,
	1,
	1,
	2,
	1,
	2,
	2,
	0,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	7,
	4,
}

local python_globals = {
	[[import vim
import os.path
def get_module_namespace_and_basename():
	"""This function will try to guess the current class, define or type
	name you are trying to create. Note that for this to work you should be
	using the module structure as per the style guide. Examples inputs and
	it's output
	* /home/nikolavp/puppet/modules/collectd/manifests/init.pp -> collectd
	* /home/nikolavp/puppet/modules/collectd/manifests/mysql.pp -> collectd::mysql
	* /home/nikolavp/puppet/modules/collectd/types/dbname.pp -> Collectd::Dbname
	"""
	first_time = True
	current_file_path_without_ext = vim.eval('expand("%:p:r")') or ""
	if not current_file_path_without_ext:
		return "name"
	parts = os.path.split(current_file_path_without_ext)
	namespace = ''
	while parts[0] and parts[0] != '/':
		if parts[1] == 'init' and first_time and not namespace:
			first_time = False
			parts = os.path.split(parts[0])
			continue
		if parts[1] in ['manifests', 'types']:
			parsed_name = os.path.split(
				parts[0])[1] + ('::' + namespace).rstrip(':')
			if parts[1] == 'types':
				parsed_name = parsed_name.title()
			return parsed_name
		else:
			namespace = parts[1] + '::' + namespace
		parts = os.path.split(parts[0])
	# couldn't guess the namespace. The user is editing a raw file in no module like the site.pp file
	return "name"]]
}


ls.add_snippets("puppet", {
	s({trig = "class", descr = "(class) \"Class declaration\"", priority = -50, trigEngine = te("b")}, {
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"puppet", 1}, "snip.rv = get_module_namespace_and_basename()", python_globals, args, snip, "", am[1])}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "# body", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "define", descr = "(define) \"Definition\"", priority = -50, trigEngine = te("b")}, {
		t"define ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"puppet", 2}, "snip.rv = get_module_namespace_and_basename()", python_globals, args, snip, "", am[2])}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "# body", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "type", descr = "(type) \"Data type alias\"", priority = -50, trigEngine = te("b")}, {
		t"type ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"puppet", 3}, "snip.rv = get_module_namespace_and_basename()", python_globals, args, snip, "", am[3])}, ""), {key = "i1"}) }) end), t" = ", i(2, "Type", {key = "i2"})
	}),
	s({trig = "lambda", descr = "(lambda) \"Lambda function chain-called on a variable\"", priority = -50, trigEngine = te("")}, {
		t"$", i(1, "varname", {key = "i1"}), t".", i(2, "each", {key = "i2"}), t" |", i(3, "Type", {key = "i3"}), t" $", i(4, "param", {key = "i4"}), t"| {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "cron", descr = "(cron) \"Cron resource type\"", priority = -50, trigEngine = te("b")}, {
		t"cron { \'", i(1, "name", {key = "i1"}), t"\':", nl(),
		t"\tuser    => ", i(2, "user", {key = "i2"}), t",", nl(),
		t"\tcommand => \'", i(3, "command", {key = "i3"}), t"\',", nl(),
		t"\tminute  => ", i(3, "minute", {key = "i3"}), t",", nl(),
		t"\thour    => ", i(4, "hour", {key = "i4"}), t",", nl(),
		t"}"
	}),
	s({trig = "exec", descr = "(exec) \"Exec resource type\"", priority = -50, trigEngine = te("b")}, {
		t"exec { \'", i(1, "command", {key = "i1"}), t"\':", nl(),
		t"\tcommand => \"", cp(1), t"\",", nl(),
		t"\tuser    => \"", i(2, "root", {key = "i2"}), t"\",", nl(),
		t"}"
	}),
	s({trig = "file", descr = "(file) \"File resource type\"", priority = -50, trigEngine = te("b")}, {
		t"file { \'", i(1, "name", {key = "i1"}), t"\':", nl(),
		t"\tsource => \"puppet://", i(2, "path", {key = "i2"}), t"\",", nl(),
		t"\tmode   => ", i(3, "mode", {key = "i3"}), t",", nl(),
		t"}"
	}),
	s({trig = "File", descr = "(File) \"Defaults for file\"", priority = -50, trigEngine = te("b")}, {
		t"File {", nl(),
		t"\towner => ", i(1, "username", {key = "i1"}), t",", nl(),
		t"\tgroup => ", i(2, "groupname", {key = "i2"}), t",", nl(),
		t"}"
	}),
	s({trig = "group", descr = "(group) \"Group resource type\"", priority = -50, trigEngine = te("b")}, {
		t"group { \'", i(1, "groupname", {key = "i1"}), t"\':", nl(),
		t"\tensure => ", i(3, "present", {key = "i3"}), t",", nl(),
		t"\tgid    => ", i(2, "gid", {key = "i2"}), t",", nl(),
		t"}"
	}),
	s({trig = "mount", descr = "(mount) \"Mount resource type\"", priority = -50, trigEngine = te("b")}, {
		t"mount { \'", i(1, "path", {key = "i1"}), t"\':", nl(),
		t"\tdevice  => \'", i(2, "/dev", {key = "i2"}), t"\',", nl(),
		t"\tfstype  => \'", i(3, "filesystem", {key = "i3"}), t"\',", nl(),
		t"\tensure  => mounted,", nl(),
		t"\toptions => \'rw,errors=remount-ro\',", nl(),
		t"}"
	}),
	s({trig = "package", descr = "(package) \"Package resource type\"", priority = -50, trigEngine = te("b")}, {
		t"package { \'", i(1, "name", {key = "i1"}), t"\':", nl(),
		t"\tensure => ", i(2, "installed", {key = "i2"}), t",", nl(),
		t"}"
	}),
	s({trig = "user", descr = "(user) \"user resource type\"", priority = -50, trigEngine = te("b")}, {
		t"user { \'", i(1, "username", {key = "i1"}), t"\':", nl(),
		t"\tensure     => ", i(2, "present", {key = "i2"}), t",", nl(),
		t"\tuid        => ", i(3, "uid", {key = "i3"}), t",", nl(),
		t"\tgid        => ", i(4, "gid", {key = "i4"}), t",", nl(),
		t"\tcomment    => ", i(5, "gecos", {key = "i5"}), t",", nl(),
		t"\thome       => ", i(6, "homedirectory", {key = "i6"}), t",", nl(),
		t"\tmanagehome => false,", nl(),
		t"\trequire    => Group[\'", i(7, "group\'", {key = "i7"}), t"],", nl(),
		t"}"
	}),
	s({trig = "service", descr = "(service) \"Service resource type\"", priority = -50, trigEngine = te("b")}, {
		t"service { \'", i(1, "name", {key = "i1"}), t"\':", nl(),
		t"\thasstatus => true,", nl(),
		t"\tenable    => true,", nl(),
		t"\tensure    => running,", nl(),
		t"}"
	}),
	s({trig = "alert", descr = "(alert) \"Alert Function\"", priority = -50, trigEngine = te("b")}, {
		t"alert(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "crit", descr = "(crit) \"Crit Function\"", priority = -50, trigEngine = te("b")}, {
		t"crit(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "debug", descr = "(debug) \"Debug Function\"", priority = -50, trigEngine = te("b")}, {
		t"debug(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "defined", descr = "(defined) \"Defined Function\"", priority = -50, trigEngine = te("b")}, {
		t"defined(", i(1, "Resource", {key = "i1"}), t"[\"", i(2, "name", {key = "i2"}), t"\"])", i(0, "", {key = "i0"})
	}),
	s({trig = "emerg", descr = "(emerg) \"Emerg Function\"", priority = -50, trigEngine = te("b")}, {
		t"emerg(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "extlookup", descr = "(extlookup) \"Extlookup with defaults and custom data file\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = extlookup(\"", i(2, "Lookup", {key = "i2"}), t"\")", i(3, "", {key = "i3"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = extlookup(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t")", i(4, "", {key = "i4"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = extlookup(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t", ", i(4, "Data Source", {key = "i4"}), t")", i(5, "", {key = "i5"})
		},
	})),
	s({trig = "fail", descr = "(fail) \"Fail Function\"", priority = -50, trigEngine = te("b")}, {
		t"fail(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "hiera", descr = "(hiera) \"Hiera with defaults and override\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera(\"", i(2, "Lookup", {key = "i2"}), t"\")", i(3, "", {key = "i3"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t")", i(4, "", {key = "i4"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t", ", i(4, "Override", {key = "i4"}), t")", i(5, "", {key = "i5"})
		},
	})),
	s({trig = "hiera_hash", descr = "(hiera_hash) \"Hiera Hash with defaults and override\"", priority = -50, trigEngine = te("b")}, c(1, {
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera_hash(\"", i(2, "Lookup", {key = "i2"}), t"\")", i(3, "", {key = "i3"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera_hash(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t")", i(4, "", {key = "i4"})
		},
		{
			t"$", i(1, "Variable", {key = "i1"}), t" = hiera_hash(\"", i(2, "Lookup", {key = "i2"}), t"\", ", i(3, "Default", {key = "i3"}), t", ", i(4, "Override", {key = "i4"}), t")", i(5, "", {key = "i5"})
		},
	})),
	s({trig = "hiera_include", descr = "(hiera_include) \"Hiera Include Function\"", priority = -50, trigEngine = te("b")}, {
		t"hiera_include(\"", i(1, "Lookup", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "lookup", descr = "(lookup) \"Lookup data from hiera\"", priority = -50, trigEngine = te("")}, {
		t"$", i(1, "varname", {key = "i1"}), t" = lookup(\'", i(2, "hiera::key", {key = "i2"}), t"\')", i(0, "", {key = "i0"})
	}),
	s({trig = "trocla", descr = "(trocla) \"Lookup or generate sensitive information\"", priority = -50, trigEngine = te("")}, {
		t"trocla(\'", i(1, "lookup_key", {key = "i1"}), t"\', \'", i(2, "plain", {key = "i2"}), t"\', ", i(3, "\'length: 32\'", {key = "i3"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "include", descr = "(include) \"Include Function\"", priority = -50, trigEngine = te("b")}, {
		t"include ", i(1, "classname", {key = "i1"}), i(0, "", {key = "i0"})
	}),
	s({trig = "info", descr = "(info) \"Info Function\"", priority = -50, trigEngine = te("b")}, {
		t"info(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "inline_template", descr = "(inline_template) \"Inline Template Function\"", priority = -50, trigEngine = te("b")}, {
		t"inline_template(\"<%= ", i(1, "template", {key = "i1"}), t" %>\")", i(0, "", {key = "i0"})
	}),
	s({trig = "notice", descr = "(notice) \"Notice Function\"", priority = -50, trigEngine = te("b")}, {
		t"notice(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "realize", descr = "(realize) \"Realize Function\"", priority = -50, trigEngine = te("b")}, {
		t"realize(", i(1, "Resource", {key = "i1"}), t"[\"", i(2, "name", {key = "i2"}), t"\"])", i(0, "", {key = "i0"})
	}),
	s({trig = "regsubst", descr = "(regsubst) \"Regsubst Function\"", priority = -50, trigEngine = te("b")}, {
		t"regsubst($", i(1, "Target", {key = "i1"}), t", \'", i(2, "regexp", {key = "i2"}), t"\', \'", i(3, "replacement", {key = "i3"}), t"\')", i(0, "", {key = "i0"})
	}),
	s({trig = "split", descr = "(split) \"Split Function\"", priority = -50, trigEngine = te("b")}, {
		t"$", i(1, "Variable", {key = "i1"}), t" = split($", i(1, "Target", {key = "i1"}), t", \'", i(2, "regexp", {key = "i2"}), t"\')", i(0, "", {key = "i0"})
	}),
	s({trig = "versioncmp", descr = "(versioncmp) \"Version Compare Function\"", priority = -50, trigEngine = te("b")}, {
		t"$", i(1, "Variable", {key = "i1"}), t" = versioncmp(\'", i(1, "version", {key = "i1"}), t"\', \'", i(2, "version", {key = "i2"}), t"\')", i(0, "", {key = "i0"})
	}),
	s({trig = "warning", descr = "(warning) \"Warning Function\"", priority = -50, trigEngine = te("b")}, {
		t"warning(\"", i(1, "message", {key = "i1"}), t"\")", i(0, "", {key = "i0"})
	}),
	s({trig = "classheader", descr = "(classheader)", priority = -1000, trigEngine = te("w")}, {
		t"# ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(substitute(expand(\'%:p:s?\\v.{-}/(\\w+)/manifests/(.+)\\.pp?\\1/\\2?\'), \'/\', \'::\', \'g\'), \'class-name\')")}, ""), {key = "i1"}) }) end), nl(),
		t"# ", i(2, "A description of what this class does", {key = "i2"}), nl(),
		t"#", nl(),
		t"# @summary ", i(3, "A short summary of the purpose of this class", {key = "i3"}), nl(),
		t"#", nl(),
		t"# @param ", i(4, "parameter1", {key = "i4"}), nl(),
		t"#   ", i(6, "Explanation of what this parameter affects.", {key = "i6"}), nl(),
		t"#", nl(),
		t"# @example Simple use", nl(),
		t"#   include ", cp(1), nl(),
		t"#", nl(),
		t"# @example Use with params", nl(),
		t"#   class { \'", cp(1), t"\':", nl(),
		t"#     $", cp(4), t" => \'", i(7, "undef", {key = "i7"}), t"\',", nl(),
		t"#   }", nl(),
		t"#", nl(),
		t"# @author ", d(8, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i8"}) }) end), t" <", d(9, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_email")}, ""), {key = "i9"}) }) end), t">", nl(),
		t"#", nl(),
		t"# @note Copyright ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, {}), t" ", cp(8), nl(),
		t"#", nl(),
		t"class ", cp(1), t"(", nl(),
		t"\t", i(5, "String", {key = "i5"}), t" $", cp(4), t" = undef,", nl(),
		t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "defheader", descr = "(defheader)", priority = -1000, trigEngine = te("w")}, {
		t"# ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(expand(\'%:p:s?.*modules/??:h:h\'), \'define-name\')")}, ""), {key = "i1"}) }) end), nl(),
		t"# ", i(2, "A description of what this define does", {key = "i2"}), nl(),
		t"#", nl(),
		t"# @summary ", i(3, "A short summary of the purpose of this define", {key = "i3"}), nl(),
		t"#", nl(),
		t"# @param ", i(4, "parameter1", {key = "i4"}), t" [", i(5, "String", {key = "i5"}), t"]", nl(),
		t"#   ", i(6, "Explanation of what this parameter affects.", {key = "i6"}), nl(),
		t"#", nl(),
		t"# @example Simple use", nl(),
		t"#   ", cp(1), t" { \'namevar\':", nl(),
		t"#     $", cp(4), t" => \'", i(7, "undef", {key = "i7"}), t"\',", nl(),
		t"#   }", nl(),
		t"#", nl(),
		t"# @author ", d(8, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, ""), {key = "i8"}) }) end), t" <", d(9, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_email")}, ""), {key = "i9"}) }) end), t">", nl(),
		t"#", nl(),
		t"# @note Copyright ", f(function(args, snip) return c_viml("strftime(\"%Y\")") end, {}), t" ", cp(8), nl(),
		t"#", nl(),
		t"define ", cp(1), t"(", nl(),
		t"\t$", cp(4), t" = undef,", nl(),
		t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl()
	}),
	s({trig = "node", descr = "(node)", priority = -1000, trigEngine = te("w")}, {
		t"node \"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'fqdn\')")}, ""), {key = "i1"}) }) end), t"\" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case $", i(1, "variable", {key = "i1"}), t" {", nl(),
		t"\tdefault: { ", i(0, "", {key = "i0"}), t" }", nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if $", i(1, "variable", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if $", i(1, "variable", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifd", descr = "(ifd)", priority = -1000, trigEngine = te("w")}, {
		t"if defined(", i(1, "Resource", {key = "i1"}), t"[\"", i(2, "name", {key = "i2"}), t"\"]) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifnd", descr = "(ifnd)", priority = -1000, trigEngine = te("w")}, {
		t"if !defined(", i(1, "Resource", {key = "i1"}), t"[\"", i(2, "name", {key = "i2"}), t"\"]) {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "?", descr = "(?)", priority = -1000, trigEngine = te("w")}, {
		t"? {", nl(),
		t"\t\"", i(1, "", {key = "i1"}), t"\"\t=> ", i(0, "", {key = "i0"}), nl(),
		t"  }"
	}),
	s({trig = "[", descr = "([)", priority = -1000, trigEngine = te("w")}, {
		t"[ ", i(1, "", {key = "i1"}), t" ]"
	}),
	s({trig = ">", descr = "(>)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t"\t=> ", i(0, "", {key = "i0"})
	}),
	s({trig = "p:", descr = "(p:)", priority = -1000, trigEngine = te("w")}, {
		t"\"puppet://puppet/", i(1, "module name", {key = "i1"}), t"/", i(0, "file name", {key = "i0"}), t"\""
	}),
	s({trig = "inc", descr = "(inc)", priority = -1000, trigEngine = te("w")}, {
		t"include ", i(1, "classname", {key = "i1"})
	}),
	s({trig = "host", descr = "(host)", priority = -1000, trigEngine = te("w")}, {
		t"host { \"", i(1, "hostname", {key = "i1"}), t"\":", nl(),
		t"\tip => ", i(0, "127.0.0.1", {key = "i0"}), t",", nl(),
		t"}", nl()
	}),
	s({trig = "mailalias", descr = "(mailalias)", priority = -1000, trigEngine = te("w")}, {
		t"mailalias { \"", i(1, "localpart", {key = "i1"}), t"\":", nl(),
		t"\trecipient => \"", i(0, "recipient", {key = "i0"}), t"\",", nl(),
		t"}", nl()
	}),
	s({trig = "notify", descr = "(notify)", priority = -1000, trigEngine = te("w")}, {
		t"notify { \"", i(1, "message", {key = "i1"}), t"\": }", nl()
	}),
	s({trig = "yumrepo", descr = "(yumrepo)", priority = -1000, trigEngine = te("w")}, {
		t"yumrepo { \"", i(1, "repo name", {key = "i1"}), t"\":", nl(),
		t"\tdescr   => \"", cp(1), t"\",", nl(),
		t"\tenabled => ", i(0, "1", {key = "i0"}), t",", nl(),
		t"}", nl()
	}),
	s({trig = "archive", descr = "(archive)", priority = -1000, trigEngine = te("w")}, {
		t"archive { \"", i(1, "filename", {key = "i1"}), t"\":", nl(),
		t"\tensure     => ", i(2, "present", {key = "i2"}), t",", nl(),
		t"\turl        => \"http://", i(3, "url", {key = "i3"}), t"\",", nl(),
		t"\textension  => \"", i(4, "tgz", {key = "i4"}), t"\",", nl(),
		t"\ttarget     => \"", i(5, "target", {key = "i5"}), t"\",", nl(),
		t"\tchecksum   => ", i(6, "false", {key = "i6"}), t",", nl(),
		t"\tsrc_target => \"", i(7, "/tmp", {key = "i7"}), t"\",", nl(),
		t"}", nl()
	}),
	s({trig = "firewall", descr = "(firewall)", priority = -1000, trigEngine = te("w")}, {
		t"firewall { \"", i(1, "comment", {key = "i1"}), t"\":", nl(),
		t"\tproto\t=> ", i(2, "tcp", {key = "i2"}), t",", nl(),
		t"\taction\t=> ", i(3, "accept", {key = "i3"}), t",", nl(),
		t"\tport\t=> ", i(4, "", {key = "i4"}), t",", nl(),
		t"}", nl()
	}),
})
