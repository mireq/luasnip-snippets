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


ls.add_snippets("php-laravel", {
	s({trig = "l_rsc", descr = "(l_rsc) \"Laravel resource controller\"", priority = 0, trigEngine = te("b")}, {
		t"/*!", nl(),
		t" * \\class       ", cp(1), nl(),
		t" *", nl(),
		t" * \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"class ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i1"}) }) end), t" extends ", i(2, "BaseController", {key = "i2"}), t" {", nl(),
		t"    function __construct() {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function index() {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function create() {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function store() {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function show($id) {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function edit($id) {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function update($id) {", nl(),
		t"    }", nl(),
		t"    ", nl(),
		t"    public function destroy($id) {", nl(),
		t"    }", nl(),
		t"}"
	}),
	s({trig = "l_ssp", descr = "(l_ssp) \"Laravel service provider for service\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(1), nl(),
		t" * \\class       ", cp(2), nl(),
		t" *", nl(),
		t" * \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", i(1, "Services", {key = "i1"}), t";", nl(),
		nl(),
		t"use Illuminate\\Support\\ServiceProvider;", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends ServiceProvider {", nl(),
		t"    ", nl(),
		t"    public function register() {", nl(),
		t"        $this->app->bind(\'", i(4, "", {key = "i4"}), t"Service\', function ($app) {", nl(),
		t"            return new ", i(5, "", {key = "i5"}), t"(", nl(),
		t"                $app->make(\'Repositories\\", i(6, "", {key = "i6"}), t"Interface\')", nl(),
		t"            );", nl(),
		t"        });", nl(),
		t"    }", nl(),
		t"}"
	}),
	s({trig = "l_rsp", descr = "(l_rsp) \"Laravel service provider for repository\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(2), nl(),
		t" * \\class       ", cp(3), nl(),
		t" *", nl(),
		t" * \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i4"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", c(1, {{t"Repositories\\", i(1, "", {key = "i1"})}, {i(1, jt({"Repositories\\", ""}))}}, {key = "i2"}), t";", nl(),
		nl(),
		t"use Entities\\", cp(1), t";", nl(),
		t"use ", cp(2), t"\\", cp(1), t"Repository;", nl(),
		t"use Illuminate\\Support\\ServiceProvider;", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i3"}) }) end), t" extends ServiceProvider {", nl(),
		t"    /*!", nl(),
		t"     * \\var     defer", nl(),
		t"     * \\brief   Defer service", nl(),
		t"     */", nl(),
		t"    protected $defer = ", i(4, "true", {key = "i5"}), t";", nl(),
		nl(),
		t"    public function register() {", nl(),
		t"        $this->app->bind(\'", cp(2), t"\\", cp(1), t"Interface\', function($app) {", nl(),
		t"            return new ", cp(1), t"Repository(new ", cp(1), t"());", nl(),
		t"        });", nl(),
		t"    }", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\brief   If $defer == true need this fn", nl(),
		t"     */ ", nl(),
		t"    public function provides() {", nl(),
		t"        return [\'", cp(2), t"\\", cp(1), t"Interface\'];", nl(),
		t"    }", nl(),
		t"}"
	}),
	s({trig = "l_md", descr = "(l_md) \"Laravel simple model\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(1), nl(),
		t" * \\class       ", cp(2), nl(),
		t" *", nl(),
		t" * \\author      ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i3"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", i(1, "Entities", {key = "i1"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends \\Eloquent {", nl(),
		t"    protected $table   = \'", d(4, function(args, snip) return sn(nil, { i(1, jt({c_py({"php-laravel", 4}, "snip.rv = t[2].lower()", python_globals, args, snip, "", {2})}, "    "), {key = "i4"}) }) end, {k"i2"}), t"\';", nl(),
		nl(),
		t"    public $timestamps = ", i(5, "false", {key = "i5"}), t";", nl(),
		nl(),
		t"    protected $hidden  = [", i(6, "", {key = "i6"}), t"];", nl(),
		nl(),
		t"    protected $guarded = [", i(7, "\'id\'", {key = "i7"}), t"];", nl(),
		t"}"
	}),
	s({trig = "l_ar", descr = "(l_ar) \"Laravel abstract Repository\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(1), nl(),
		t" * \\class       ", cp(2), nl(),
		t" * \\implements  ", cp(3), nl(),
		t" *", nl(),
		t" * \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i4"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", i(1, "Repositories", {key = "i1"}), t";", nl(),
		nl(),
		t"use Illuminate\\Database\\Eloquent\\Model;", nl(),
		nl(),
		t"abstract class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" implements ", i(3, "BaseRepositoryInterface", {key = "i3"}), t" {", nl(),
		t"    protected $model;", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\fn      __construct", nl(),
		t"     *", nl(),
		t"     * \\brief   Take the model", nl(),
		t"     */", nl(),
		nl(),
		t"    public function __construct(Model $model) {", nl(),
		t"        $this->model = $model;", nl(),
		t"    }", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\fn      all", nl(),
		t"     *", nl(),
		t"     * \\return  Illuminate\\Database\\Eloquent\\Collection", nl(),
		t"     */", nl(),
		t"    public function all($columns = [\'*\']) {", nl(),
		t"        return $this->model->all()->toArray();", nl(),
		t"    }", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\fn      create", nl(),
		t"     *", nl(),
		t"     * \\return  Illuminate\\Database\\Eloquent\\Model", nl(),
		t"     */", nl(),
		t"    public function create(array $attributes) {", nl(),
		t"        return $this->model->create($attributes);", nl(),
		t"    }", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\fn      destroy", nl(),
		t"     *", nl(),
		t"     * \\return  int", nl(),
		t"     */", nl(),
		t"    public function destroy($ids) {", nl(),
		t"        return $this->model->destroy($ids);", nl(),
		t"    }", nl(),
		nl(),
		t"    /*!", nl(),
		t"     * \\fn      find", nl(),
		t"     *", nl(),
		t"     * \\return  mixed", nl(),
		t"     */", nl(),
		t"    public function find($id, $columns = [\'*\']) {", nl(),
		t"        return $this->model->find($id, $columns);", nl(),
		t"    }", nl(),
		t"}"
	}),
	s({trig = "l_r", descr = "(l_r) \"Laravel Repository\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(1), nl(),
		t" * \\class       ", cp(3), nl(),
		t" * \\implements  ", cp(4), nl(),
		t" *", nl(),
		t" * \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i5"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", c(1, {{t"Repositories\\", i(1, "", {key = "i2"})}, {i(1, jt({"Repositories\\", ""}))}}, {key = "i1"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i3"}) }) end), t" extends \\", i(5, "", {key = "i6"}), t" implements ", d(3, function(args, snip) return sn(nil, { i(1, jt({args[1], "RepositoryInterface"}, ""), {key = "i4"}) }) end, {k"i3"}), t" {", nl(),
		t"    ", i(6, "", {key = "i7"}), nl(),
		t"}"
	}),
	s({trig = "l_s", descr = "(l_s) \"Laravel Service\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", i(1, "", {key = "i1"}), nl(),
		t" * \\class       ", cp(2), nl(),
		t" *", nl(),
		t" * \\author      ", d(5, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i6"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace Services\\", cp(1), t";", nl(),
		nl(),
		t"use ", c(3, {{t"Repositories\\", i(1, "Interface", {key = "i4"})}, {i(1, jt({"Repositories\\", "Interface"}))}}, {key = "i3"}), t";", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" {", nl(),
		t"    protected $", i(4, "repo", {key = "i5"}), t";", nl(),
		t"    ", nl(),
		t"    /*!", nl(),
		t"     * \\fn      __construct", nl(),
		t"     */", nl(),
		t"    public function __construct(", cp(4), t" $repo) {", nl(),
		t"        $this->", cp(5), t" = $repo;", nl(),
		t"    }", nl(),
		t"}"
	}),
	s({trig = "l_f", descr = "(l_f) \"Laravel Facade\"", priority = 0, trigEngine = te("b")}, {
		t"<?php", nl(),
		nl(),
		t"/*!", nl(),
		t" * \\namespace   ", cp(1), nl(),
		t" * \\class       ", cp(2), nl(),
		t" *", nl(),
		t" * \\author      ", d(4, function(args, snip) return sn(nil, { i(1, jt({c_viml("g:snips_author")}, " "), {key = "i5"}) }) end), nl(),
		t" * \\date        ", f(function(args, snip) return c_viml("strftime(\'%d-%m-%y\')") end), nl(),
		t" */", nl(),
		nl(),
		t"namespace ", i(1, "Services", {key = "i1"}), t";", nl(),
		nl(),
		t"use \\Illuminate\\Support\\Facades\\Facade;", nl(),
		nl(),
		t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:t:r\')")}, ""), {key = "i2"}) }) end), t" extends Facade {", nl(),
		t"    /*!", nl(),
		t"     * \\fn          getFacadeAccessor", nl(),
		t"     *", nl(),
		t"     * \\return      string", nl(),
		t"     */", nl(),
		t"    protected static function getFacadeAccessor() { return \'", c(3, {{i(1, "", {key = "i3"}), t"Service"}, {i(1, jt({"", "Service"}))}}, {key = "i4"}), t"\'; }", nl(),
		t"}"
	}),
})
