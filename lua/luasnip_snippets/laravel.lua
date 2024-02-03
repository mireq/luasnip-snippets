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


local am = { -- list of argument numbers
	{1, 2, 3},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 3, 4, 5},
	{1, 2, 3, 4, 5, 6, 7},
	{1, 2, 3, 4},
	{1, 3, 4, 5, 6, 7},
	{1, 2, 3, 4, 5, 6},
	{1, 2, 4, 5},
}
ls.add_snippets("laravel", {
	s({trig = "l_rsc", descr = "(l_rsc)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\class       ", cp(1), nl(),
		t"*", nl(),
		t"* \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i3"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i1"}) }) end), t" extends ", i(2, "BaseController", {key = "i2"}), t" {", nl(),
		t"\tfunction __construct() {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function index() {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function create() {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function store() {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function show($id) {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function edit($id) {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function update($id) {", nl(),
		t"\t}", nl(),
		t"\t", nl(),
		t"\tpublic function destroy($id) {", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "l_ssp", descr = "(l_ssp)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(1), nl(),
		t"* \\class       ", cp(2), nl(),
		t"*", nl(),
		t"* \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i3"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(1, "Services", {key = "i1"}), t";", nl(),
		nl(),
		t"use Illuminate\\Support\\ServiceProvider;", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends ServiceProvider {", nl(),
		t"\t", nl(),
		t"\tpublic function register() {", nl(),
		t"\t\t$this->app->bind(\'", i(4, "", {key = "i4"}), t"Service\', function ($app) {", nl(),
		t"\t\t\treturn new ", i(5, "", {key = "i5"}), t"(", nl(),
		t"\t\t\t\t$app->make(\'Repositories\\", i(6, "", {key = "i6"}), t"Interface\')", nl(),
		t"\t\t\t);", nl(),
		t"\t\t});", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "l_rsp", descr = "(l_rsp)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(2), nl(),
		t"* \\class       ", cp(3), nl(),
		t"*", nl(),
		t"* \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i4"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(2, "Repositories\\${1:}", {key = "i2"}), t";", nl(),
		nl(),
		t"use Entities\\", i(1, "", {key = "i1"}), t";", nl(),
		t"use ", cp(2), t"\\", cp(1), t"Repository;", nl(),
		t"use Illuminate\\Support\\ServiceProvider;", nl(),
		nl(),
		t"class ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i3"}) }) end), t" extends ServiceProvider {", nl(),
		t"\t/*!", nl(),
		t"\t* \\var     defer", nl(),
		t"\t* \\brief   Defer service", nl(),
		t"\t*/", nl(),
		t"\tprotected $defer = ", i(5, "true", {key = "i5"}), t";", nl(),
		nl(),
		t"\tpublic function register() {", nl(),
		t"\t\t\t$this->app->bind(\'", cp(2), t"\\", cp(1), t"Interface\', function($app) {", nl(),
		t"\t\t\t\t\treturn new ", cp(1), t"Repository(new ", cp(1), t"());", nl(),
		t"\t\t\t});", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\brief   If $defer == true need this fn", nl(),
		t"\t*/ ", nl(),
		t"\tpublic function provides() {", nl(),
		t"\t\t\treturn [\'", cp(2), t"\\", cp(1), t"Interface\'];", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "l_md", descr = "(l_md)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(1), nl(),
		t"* \\class       ", cp(2), nl(),
		t"*", nl(),
		t"* \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i3"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(1, "Entities", {key = "i1"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends \\Eloquent {", nl(),
		t"\tprotected $table   = \'", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("!p snip.rv = t[2].lower()")}, "\t"), {key = "i4"}) }) end), t"\';", nl(),
		nl(),
		t"\tpublic $timestamps = ", i(5, "false", {key = "i5"}), t";", nl(),
		nl(),
		t"\tprotected $hidden  = array(", i(6, "", {key = "i6"}), t");", nl(),
		nl(),
		t"\tprotected $guarded = array(", i(7, "\'id\'", {key = "i7"}), t");", nl(),
		t"}"
	}),
	s({trig = "l_ar", descr = "(l_ar)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(1), nl(),
		t"* \\class       ", cp(2), nl(),
		t"* \\implements  ", cp(3), nl(),
		t"*", nl(),
		t"* \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i4"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(1, "Repositories", {key = "i1"}), t";", nl(),
		nl(),
		t"use Illuminate\\Database\\Eloquent\\Model;", nl(),
		nl(),
		t"abstract class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" implements ", i(3, "BaseRepositoryInterface", {key = "i3"}), t" {", nl(),
		t"\tprotected $model;", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      __construct", nl(),
		t"\t*", nl(),
		t"\t* \\brief   Take the model", nl(),
		t"\t*/", nl(),
		nl(),
		t"\tpublic function __construct(Model $model) {", nl(),
		t"\t\t\t$this->model = $model;", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      all", nl(),
		t"\t*", nl(),
		t"\t* \\return  Illuminate\\Database\\Eloquent\\Collection", nl(),
		t"\t*/", nl(),
		t"\tpublic function all($columns = array(\'*\')) {", nl(),
		t"\t\t\treturn $this->model->all()->toArray();", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      create", nl(),
		t"\t*", nl(),
		t"\t* \\return  Illuminate\\Database\\Eloquent\\Model", nl(),
		t"\t*/", nl(),
		t"\tpublic function create(array $attributes) {", nl(),
		t"\t\t\treturn $this->model->create($attributes);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      destroy", nl(),
		t"\t*", nl(),
		t"\t* \\return  int", nl(),
		t"\t*/", nl(),
		t"\tpublic function destroy($ids) {", nl(),
		t"\t\t\treturn $this->model->destroy($ids);", nl(),
		t"\t}", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      find", nl(),
		t"\t*", nl(),
		t"\t* \\return  mixed", nl(),
		t"\t*/", nl(),
		t"\tpublic function find($id, $columns = array(\'*\')) {", nl(),
		t"\t\treturn $this->model->find($id, $columns);", nl(),
		t"\t}", nl(),
		t"}", nl()
	}),
	s({trig = "l_r", descr = "(l_r)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(1), nl(),
		t"* \\class       ", cp(3), nl(),
		t"* \\implements  ", cp(4), nl(),
		t"*", nl(),
		t"* \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i5"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(1, "Repositories\\${2}", {key = "i1"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i3"}) }) end), t" extends \\", i(5, "", {key = "i6"}), t" implements ", d(3, function(args) return sn(nil, {cp(3), t"RepositoryInterface"}) end, {}, {key = "i4"}), t" {", nl(),
		t"\t", i(6, "", {key = "i7"}), nl(),
		t"}"
	}),
	s({trig = "l_s", descr = "(l_s)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace ", cp(1), nl(),
		t"* \\class     ", cp(2), nl(),
		t"*", nl(),
		t"* \\author    ", d(6, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i6"}) }) end), nl(),
		t"* \\date      ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace Services\\", i(1, "", {key = "i1"}), t";", nl(),
		nl(),
		t"use ", i(3, "Repositories\\${4:Interface}", {key = "i3"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" {", nl(),
		t"\tprotected $", i(5, "repo", {key = "i5"}), t";", nl(),
		nl(),
		t"\t/*!", nl(),
		t"\t* \\fn      __construct", nl(),
		t"\t*/", nl(),
		t"\tpublic function __construct(", i(4, "", {key = "i4"}), t" $repo) {", nl(),
		t"\t\t$this->", cp(5), t" = $repo;", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "l_f", descr = "(l_f)", priority = -1000, trigEngine = te("w")}, {
		t"/*!", nl(),
		t"* \\namespace   ", cp(1), nl(),
		t"* \\class       ", cp(2), nl(),
		t"*", nl(),
		t"* \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v g:snips_author")}, ""), {key = "i5"}) }) end), nl(),
		t"* \\date        ", f(function(args, snip) return c_viml("!v strftime(\'%d-%m-%y\')") end, {}), nl(),
		t"*/", nl(),
		nl(),
		t"namespace ", i(1, "Services", {key = "i1"}), t";", nl(),
		nl(),
		t"use \\Illuminate\\Support\\Facades\\Facade;", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("!v expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends Facade {", nl(),
		t"\t/*!", nl(),
		t"\t* \\fn          getFacadeAccessor", nl(),
		t"\t*", nl(),
		t"\t* \\return      string", nl(),
		t"\t*/", nl(),
		t"\tprotected static function getFacadeAccessor() { return \'", i(3, "${3}Service", {key = "i4"}), t"\'; }", nl(),
		t"}"
	}),
})
