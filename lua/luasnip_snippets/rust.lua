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
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1},
	{1, 2, 3},
	{0},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{0},
	{0, 1},
	{1},
	{},
	{0, 1},
	{1},
	{1, 2},
	{0, 1},
	{0, 1},
	{},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1, 2, 3, 4, 5},
	{1},
	{1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{1, 2, 3},
	{1, 2},
	{0},
	{0},
	{0, 1},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0, 1},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 4, 5},
	{1, 2},
	{1, 2},
	{1, 2},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1},
	{1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{0},
	{0},
	{},
	{1, 2},
	{0},
}
ls.add_snippets("rust", {
	s({trig = "fn", descr = "(fn) \"fn name(?) -> ? {}\"", priority = -50, trigEngine = te("")}, {
		t"fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", tr(3, "..*", " -> "), i(3, "", {key = "i3"}), t" {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "pfn", descr = "(pfn) \"pub fn name(?) -> ? {}\"", priority = -50, trigEngine = te("")}, {
		t"pub fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", tr(3, "..*", " -> "), i(3, "", {key = "i3"}), t" {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "afn", descr = "(afn) \"async fn name(?) -> ? {}\"", priority = -50, trigEngine = te("")}, {
		t"async fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", tr(3, "..*", " -> "), i(3, "", {key = "i3"}), t" {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "pafn", descr = "(pafn) \"pub async fn name(?) -> ? {}\"", priority = -50, trigEngine = te("")}, {
		t"pub async fn ", i(1, "function_name", {key = "i1"}), t"(", i(2, "", {key = "i2"}), t")", tr(3, "..*", " -> "), i(3, "", {key = "i3"}), t" {", nl(),
		t"\t", f(function(args, snip) return snip.env.LS_SELECT_DEDENT or {} end), i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "bench", descr = "(bench) \"Bench function\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[bench]", nl(),
		t"fn ", i(1, "bench_function_name", {key = "i1"}), t"(b: &mut test::Bencher) {", nl(),
		t"\tb.iter(|| {", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t})", nl(),
		t"}"
	}),
	s({trig = "new", descr = "(new) \"Constructor function\"", priority = -1000, trigEngine = te("w")}, {
		t"pub fn new(", i(2, "", {key = "i2"}), t") -> ", i(1, "Self", {key = "i1"}), t" {", nl(),
		t"\t", cp(1), t" { ", i(3, "", {key = "i3"}), t" }", nl(),
		t"}"
	}),
	s({trig = "main", descr = "(main) \"Main function\"", priority = -1000, trigEngine = te("w")}, {
		t"pub fn main() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "let", descr = "(let) \"let variable declaration with type inference\"", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "lett", descr = "(lett) \"let variable declaration with explicit type annotation\"", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "letm", descr = "(letm) \"let mut variable declaration with type inference\"", priority = -1000, trigEngine = te("w")}, {
		t"let mut ", i(1, "", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "lettm", descr = "(lettm) \"let mut variable declaration with explicit type annotation\"", priority = -1000, trigEngine = te("w")}, {
		t"let mut ", i(1, "", {key = "i1"}), t": ", i(2, "", {key = "i2"}), t" = ", i(3, "", {key = "i3"}), t";"
	}),
	s({trig = "pri", descr = "(pri) \"print!(..)\"", priority = -50, trigEngine = te("b")}, {
		t"print!(\"", i(1, "", {key = "i1"}), t"\"", tr(2, "..*", ", "), i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "pri,", descr = "(pri,) \"print! with format param\"", priority = -1000, trigEngine = te("w")}, {
		t"print!(\"", i(1, "", {key = "i1"}), t"{", i(2, "", {key = "i2"}), t"}\", ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "pln", descr = "(pln) \"println!(..)\"", priority = -50, trigEngine = te("b")}, {
		t"println!(\"", i(1, "", {key = "i1"}), t"\"", tr(2, "..*", ", "), i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "pln,", descr = "(pln,) \"println! with format param\"", priority = -1000, trigEngine = te("w")}, {
		t"println!(\"", i(1, "", {key = "i1"}), t"{", i(2, "", {key = "i2"}), t"}\", ", i(3, "", {key = "i3"}), t");"
	}),
	s({trig = "fmt", descr = "(fmt) \"format!(..)\"", priority = -50, trigEngine = te("")}, {
		t"format!(\"", i(1, "", {key = "i1"}), t"\"", tr(2, "..*", ", "), i(2, "", {key = "i2"}), t");"
	}),
	s({trig = "d", descr = "(d) \"dbg! debugging macro\"", priority = -1000, trigEngine = te("w")}, {
		t"dbg!(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "d;", descr = "(d;) \"dbg! debugging macro statement\"", priority = -1000, trigEngine = te("w")}, {
		t"dbg!(&", i(1, "", {key = "i1"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ec", descr = "(ec) \"extern crate\"", priority = -1000, trigEngine = te("w")}, {
		t"extern crate ", i(1, "sync", {key = "i1"}), t";"
	}),
	s({trig = "ecl", descr = "(ecl) \"extern crate log\"", priority = -1000, trigEngine = te("w")}, {
		t"#[macro_use]", nl(),
		t"extern crate log;"
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"mod ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"} /* ", cp(1), t" */"
	}),
	s({trig = "as", descr = "(as) \"assert!\"", priority = -1000, trigEngine = te("w")}, {
		t"assert!(", i(1, "predicate", {key = "i1"}), t");"
	}),
	s({trig = "ase", descr = "(ase) \"assert_eq!\"", priority = -1000, trigEngine = te("w")}, {
		t"assert_eq!(", i(1, "expected", {key = "i1"}), t", ", i(2, "actual", {key = "i2"}), t");"
	}),
	s({trig = "test", descr = "(test) \"Unit test function\"", priority = -1000, trigEngine = te("w")}, {
		t"#[test]", nl(),
		t"fn ", i(1, "function_name", {key = "i1"}), t"_test() {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "testmod", descr = "(testmod) \"Test module\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[cfg(test)]", nl(),
		t"mod tests {", nl(),
		t"\tuse super::", i(1, "*", {key = "i1"}), t";", nl(),
		nl(),
		t"\ttest", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ig", descr = "(ig) \"#[ignore]\"", priority = -1000, trigEngine = te("w")}, {
		t"#[ignore]"
	}),
	s({trig = "allow", descr = "(allow) \"allow lint attribute\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[allow(", i(1, "unused_variables", {key = "i1"}), t")]"
	}),
	s({trig = "cfg", descr = "(cfg) \"cfg attribute\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[cfg(", i(1, "target_os = \"linux\"", {key = "i1"}), t")]"
	}),
	s({trig = "feat", descr = "(feat) \"feature attribute\" b", priority = -1000, trigEngine = te("w")}, {
		t"#![feature(", i(1, "plugin", {key = "i1"}), t")]"
	}),
	s({trig = "der", descr = "(der) \"#[derive(..)]\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[derive(", i(1, "Debug", {key = "i1"}), t")]"
	}),
	s({trig = "attr", descr = "(attr) \"#[..]\" b", priority = -1000, trigEngine = te("w")}, {
		t"#[", i(1, "inline", {key = "i1"}), t"]"
	}),
	s({trig = "crate", descr = "(crate) \"Define create meta attributes\"", priority = -1000, trigEngine = te("w")}, {
		t"// Crate name", nl(),
		t"#![crate_name = \"", i(1, "crate_name", {key = "i1"}), t"\"]", nl(),
		t"// Additional metadata attributes", nl(),
		t"#![desc = \"", i(2, "Description.", {key = "i2"}), t"\"]", nl(),
		t"#![license = \"", i(3, "BSD", {key = "i3"}), t"\"]", nl(),
		t"#![comment = \"", i(4, "Comment.", {key = "i4"}), t"\"]", nl(),
		t"// Specify the output type", nl(),
		t"#![crate_type = \"", i(5, "lib", {key = "i5"}), t"\"]"
	}),
	s({trig = "opt", descr = "(opt) \"Option<T>\"", priority = -1000, trigEngine = te("w")}, {
		t"Option<", i(1, "i32", {key = "i1"}), t">"
	}),
	s({trig = "res", descr = "(res) \"Result<T, E>\"", priority = -1000, trigEngine = te("w")}, {
		t"Result<", i(1, "&str", {key = "i1"}), t", ", i(2, "()", {key = "i2"}), t">"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "ife", descr = "(ife) \"if / else\"", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"} else {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "ifl", descr = "(ifl) \"if let (...)\"", priority = -1000, trigEngine = te("w")}, {
		t"if let ", d(1, function(args) return sn(nil, {t"Some(", i(1, "", {key = "i2"}), t")"}) end, {}, {key = "i1"}), t" = ", i(2, "", {key = "i3"}), t" {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "el", descr = "(el) \"else\"", priority = -1000, trigEngine = te("w")}, {
		t"else {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "eli", descr = "(eli) \"else if\"", priority = -1000, trigEngine = te("w")}, {
		t"else if ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "mat", descr = "(mat) \"match pattern\"", priority = -1000, trigEngine = te("w")}, {
		t"match ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), t" => ", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "case", descr = "(case) \"Case clause of pattern match\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "_", {key = "i1"}), t" => ", i(2, "expression", {key = "i2"})
	}),
	s({trig = "=", descr = "(=) \"=> \"", priority = -1000, trigEngine = te("w")}, {
		t"=> ", i(0, "", {key = "i0"})
	}),
	s({trig = "loop", descr = "(loop) \"loop {}\" b", priority = -1000, trigEngine = te("w")}, {
		t"loop {", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "wh", descr = "(wh) \"while loop\"", priority = -1000, trigEngine = te("w")}, {
		t"while ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "whl", descr = "(whl) \"while let (...)\"", priority = -1000, trigEngine = te("w")}, {
		t"while let ", d(1, function(args) return sn(nil, {t"Some(", i(1, "", {key = "i2"}), t")"}) end, {}, {key = "i1"}), t" = ", i(2, "", {key = "i3"}), t" {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"}"
	}),
	s({trig = "for", descr = "(for) \"for ... in ... loop\"", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "todo", descr = "(todo) \"TODO comment\"", priority = -1000, trigEngine = te("w")}, {
		t"// TODO: ", i(0, "", {key = "i0"})
	}),
	s({trig = "fixme", descr = "(fixme) \"FIXME comment\"", priority = -1000, trigEngine = te("w")}, {
		t"// FIXME: ", i(0, "", {key = "i0"})
	}),
	s({trig = "st", descr = "(st) \"Struct definition\"", priority = -1000, trigEngine = te("w")}, {
		t"struct ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "impl", descr = "(impl) \"Struct/Trait implementation\"", priority = -50, trigEngine = te("b")}, {
		t"impl", cp(4), t" ", i(1, "Type/Trait", {key = "i1"}), d(2, function(args) return sn(nil, {t" for ", i(1, "Type", {key = "i3"})}) end, {}, {key = "i2"}), d(3, function(args) return sn(nil, {t"<", i(1, "T", {key = "i5"}), t">"}) end, {}, {key = "i4"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "stn", descr = "(stn) \"Struct with new constructor\"", priority = -1000, trigEngine = te("w")}, {
		t"pub struct ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("substitute(vim_snippets#Filename(), \'\\(_\\|^\\)\\(.\\)\', \'\\u\\2\', \'g\')")}, ""), {key = "i1"}) }) end), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		nl(),
		t"impl", i(2, "", {key = "i2"}), t" ", cp(1), cp(2), t" {", nl(),
		t"\tpub fn new(", i(3, "", {key = "i4"}), t") -> Self {", nl(),
		t"\t\t", cp(1), t" { ", i(4, "", {key = "i5"}), t" }", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ty", descr = "(ty) \"Type alias\"", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "NewName", {key = "i1"}), t" = ", i(2, "", {key = "i2"}), t";"
	}),
	s({trig = "enum", descr = "(enum) \"enum definition\"", priority = -1000, trigEngine = te("w")}, {
		t"enum ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), t",", nl(),
		t"}"
	}),
	s({trig = "penum", descr = "(penum) \"pub enum definition\"", priority = -1000, trigEngine = te("w")}, {
		t"pub enum ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "", {key = "i2"}), t",", nl(),
		t"}"
	}),
	s({trig = "trait", descr = "(trait) \"Trait definition\"", priority = -1000, trigEngine = te("w")}, {
		t"trait ", i(1, "Name", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "drop", descr = "(drop) \"Drop trait implementation (destructor)\"", priority = -1000, trigEngine = te("w")}, {
		t"impl Drop for ", i(1, "", {key = "i1"}), t" {", nl(),
		t"\tfn drop(&mut self) {", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "ss", descr = "(ss) \"static string declaration\"", priority = -1000, trigEngine = te("w")}, {
		t"static ", i(1, "", {key = "i1"}), t": &\'static str = \"", i(0, "", {key = "i0"}), t"\";"
	}),
	s({trig = "stat", descr = "(stat) \"static item declaration\"", priority = -1000, trigEngine = te("w")}, {
		t"static ", i(1, "", {key = "i1"}), t": ", i(2, "usize", {key = "i2"}), t" = ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "spawn", descr = "(spawn) \"spawn a thread\"", priority = -1000, trigEngine = te("w")}, {
		t"thread::spawn(", i(1, "move ", {key = "i1"}), t"|| {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"});"
	}),
	s({trig = "chan", descr = "(chan) \"Declare (Sender, Receiver) pair of asynchronous channel()\"", priority = -1000, trigEngine = te("w")}, {
		t"let (", i(1, "tx", {key = "i1"}), t", ", i(2, "rx", {key = "i2"}), t"): (Sender<", i(3, "i32", {key = "i3"}), t">, Receiver<", i(4, "i32", {key = "i4"}), t">) = channel();"
	}),
	s({trig = "asref", descr = "(asref) \"AsRef trait implementation\"", priority = -1000, trigEngine = te("w")}, {
		t"impl AsRef<", i(1, "Ref", {key = "i1"}), t"> for ", i(2, "Type", {key = "i2"}), t" {", nl(),
		t"\tfn as_ref(&self) -> &", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i3"}), t" {", nl(),
		t"\t\t&self.", i(0, "field", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "asmut", descr = "(asmut) \"AsMut trait implementation\"", priority = -1000, trigEngine = te("w")}, {
		t"impl AsMut<", i(1, "Ref", {key = "i1"}), t"> for ", i(2, "Type", {key = "i2"}), t" {", nl(),
		t"\tfn as_mut(&mut self) -> &mut ", d(3, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i3"}), t" {", nl(),
		t"\t\t&mut self.", i(0, "field", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "fd", descr = "(fd) \"Struct field definition\" w", priority = -1000, trigEngine = te("w")}, {
		i(1, "name", {key = "i1"}), t": ", i(2, "Type", {key = "i2"}), t","
	}),
	s({trig = "||", descr = "(||) \"Closure, anonymous function (inline)\" i", priority = -1000, trigEngine = te("w")}, {
		i(1, "move ", {key = "i1"}), t"|", i(2, "", {key = "i2"}), t"| { ", i(3, "", {key = "i3"}), t" }"
	}),
	s({trig = "|}", descr = "(|}) \"Closure, anonymous function (block)\" i", priority = -1000, trigEngine = te("w")}, {
		i(1, "move ", {key = "i1"}), t"|", i(2, "", {key = "i2"}), t"| {", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}"
	}),
	s({trig = "macro", descr = "(macro) \"macro_rules!\" b", priority = -1000, trigEngine = te("w")}, {
		t"macro_rules! ", i(1, "name", {key = "i1"}), t" {", nl(),
		t"\t(", i(2, "matcher", {key = "i2"}), t") => (", nl(),
		t"\t\t", i(3, "", {key = "i3"}), nl(),
		t"\t)", nl(),
		t"}"
	}),
	s({trig = "boxp", descr = "(boxp) \"Box::new()\"", priority = -1000, trigEngine = te("w")}, {
		t"Box::new(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "rc", descr = "(rc) \"Rc::new()\"", priority = -1000, trigEngine = te("w")}, {
		t"Rc::new(", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), t")"
	}),
	s({trig = "unim", descr = "(unim) \"unimplemented!()\"", priority = -1000, trigEngine = te("w")}, {
		t"unimplemented!()"
	}),
	s({trig = "use", descr = "(use) \"use ...;\" b", priority = -1000, trigEngine = te("w")}, {
		t"use ", d(1, function(args) return sn(nil, {t"std::", i(1, "", {key = "i2"})}) end, {}, {key = "i1"}), t";"
	}),
	s({trig = ".it", descr = "(.it) \".iter()\"", priority = -50, trigEngine = te("i")}, {
		t".iter()", i(0, "", {key = "i0"})
	}),
})
