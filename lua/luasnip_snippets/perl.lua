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


ls.add_snippets("perl", {
	s({trig = "#!", descr = "(#!)", priority = -1000, trigEngine = te("w")}, {
		t"#!/usr/bin/env perl"
	}),
	s({trig = ".", descr = "(.)", priority = -1000, trigEngine = te("w")}, {
		t" =>"
	}),
	s({trig = "sub", descr = "(sub) \"Function (sub)\"", priority = -50, trigEngine = te("")}, {
		t"sub ", i(1, "function_name", {key = "i1"}), t" {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "if", descr = "(if) \"if\"", priority = -50, trigEngine = te("")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "ife", descr = "(ife) \"Conditional if..else (ife)\"", priority = -50, trigEngine = te("")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl(),
		t"else {", nl(),
		t"\t", i(3, "# else...", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "ifee", descr = "(ifee) \"Conditional if..elsif..else (ifee)\"", priority = -50, trigEngine = te("")}, {
		t"if (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl(),
		t"elsif (", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "# elsif...", {key = "i4"}), nl(),
		t"}", nl(),
		t"else {", nl(),
		t"\t", i(5, "# else...", {key = "i5"}), nl(),
		t"}", nl()
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elsif (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "xif", descr = "(xif) \"Conditional one-line (xif)\"", priority = -50, trigEngine = te("")}, {
		i(1, "expression", {key = "i1"}), t" if ", i(2, "condition", {key = "i2"}), t";", nl()
	}),
	s({trig = "unless", descr = "(unless) \"unless\"", priority = -50, trigEngine = te("")}, {
		t"unless (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "xunless", descr = "(xunless) \"Conditional one-line (unless)\"", priority = -50, trigEngine = te("")}, {
		i(1, "expression", {key = "i1"}), t" unless ", i(2, "condition", {key = "i2"}), t";", nl()
	}),
	s({trig = "eval", descr = "(eval) \"eval\"", priority = -50, trigEngine = te("")}, {
		t"local $@;", nl(),
		t"eval {", nl(),
		t"\t", i(1, "# do something risky...", {key = "i1"}), nl(),
		t"};", nl(),
		t"if (my $", i(2, "exception", {key = "i2"}), t" = $@) {", nl(),
		t"\t", i(3, "# handle failure...", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "xwh", descr = "(xwh)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" while ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "cfor", descr = "(cfor)", priority = -1000, trigEngine = te("w")}, {
		t"for (my $", i(2, "var", {key = "i2"}), t" = 0; $", cp(2), t" < ", i(1, "count", {key = "i1"}), t"; $", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "xfor", descr = "(xfor)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" for @", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "for", descr = "(for) \"for\"", priority = -50, trigEngine = te("")}, {
		t"for (my $", i(1, "var", {key = "i1"}), t" = 0; $", cp(1), t" < ", i(2, "expression", {key = "i2"}), t"; $", cp(1), t"++) {", nl(),
		t"\t", i(3, "# body...", {key = "i3"}), nl(),
		t"}", nl()
	}),
	s({trig = "fore", descr = "(fore) \"foreach\"", priority = -50, trigEngine = te("")}, {
		t"foreach ", c(1, {{t"my $", i(1, "x", {key = "i2"})}, {i(1, jt({"my $", "x"}))}}, {key = "i1"}), t" (@", i(2, "array", {key = "i3"}), t") {", nl(),
		t"\t", i(3, "# body...", {key = "i4"}), nl(),
		t"}", nl()
	}),
	s({trig = "package", descr = "(package)", priority = -1000, trigEngine = te("w")}, {
		t"package ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:p:s?.*lib/??:r:gs?/?::?\')")}, ""), {key = "i1"}) }) end), t";", nl(),
		t"use strict;", nl(),
		t"use warnings;", nl(),
		nl(),
		i(0, "", {key = "i0"}), nl(),
		nl(),
		t"1;", nl(),
		nl(),
		t"__END__"
	}),
	s({trig = "packagev514", descr = "(packagev514)", priority = -1000, trigEngine = te("w")}, {
		t"package ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("expand(\'%:p:s?.*lib/??:r:gs?/?::?\')")}, ""), {key = "i1"}) }) end), t" ", i(2, "0.99", {key = "i2"}), t";", nl(),
		t"use v5.14;", nl(),
		t"use warnings;", nl(),
		nl(),
		i(0, "", {key = "i0"}), nl(),
		nl(),
		t"1;", nl(),
		nl(),
		t"__END__"
	}),
	s({trig = "moose", descr = "(moose)", priority = -1000, trigEngine = te("w")}, {
		t"use Moose;", nl(),
		t"use namespace::autoclean;", nl(),
		i(1, "#", {key = "i1"}), t"BEGIN {extends \'", i(2, "ParentClass", {key = "i2"}), t"\'};", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "parent", descr = "(parent)", priority = -1000, trigEngine = te("w")}, {
		t"use parent qw(", i(0, "Parent Class", {key = "i0"}), t");"
	}),
	s({trig = "slurp", descr = "(slurp) \"slurp\"", priority = -50, trigEngine = te("")}, {
		t"my $", i(1, "var", {key = "i1"}), t" = do { local $/ = undef; open my $fh, \'<\', ", i(2, "$file", {key = "i2"}), t"; <$fh> };", nl()
	}),
	s({trig = "strwar", descr = "(strwar)", priority = -1000, trigEngine = te("w")}, {
		t"use strict;", nl(),
		t"use warnings;"
	}),
	s({trig = "vers", descr = "(vers)", priority = -1000, trigEngine = te("w")}, {
		t"## no critic", nl(),
		t"our $VERSION = \'", i(0, "version", {key = "i0"}), t"\';", nl(),
		t"eval $VERSION;", nl(),
		t"## use critic"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"use feature \'switch\';"
	}),
	s({trig = "asub", descr = "(asub)", priority = -1000, trigEngine = te("w")}, {
		t"sub {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "begin", descr = "(begin)", priority = -1000, trigEngine = te("w")}, {
		t"BEGIN {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "pkgmv", descr = "(pkgmv)", priority = -1000, trigEngine = te("w")}, {
		t"__PACKAGE__->", i(1, "package_method", {key = "i1"}), t"(", i(0, "var", {key = "i0"}), t")"
	}),
	s({trig = "pkgm", descr = "(pkgm)", priority = -1000, trigEngine = te("w")}, {
		t"__PACKAGE__->", i(0, "package_method", {key = "i0"}), t"()"
	}),
	s({trig = "pkget", descr = "(pkget)", priority = -1000, trigEngine = te("w")}, {
		t"__PACKAGE__->get_", i(0, "package_method", {key = "i0"}), t"()"
	}),
	s({trig = "pkgetv", descr = "(pkgetv)", priority = -1000, trigEngine = te("w")}, {
		t"__PACKAGE__->get_", i(1, "package_method", {key = "i1"}), t"(", i(0, "var", {key = "i0"}), t")"
	}),
	s({trig = "qrx", descr = "(qrx)", priority = -1000, trigEngine = te("w")}, {
		t"qr/", nl(),
		t"     ", i(0, "regex", {key = "i0"}), nl(),
		t"/xms"
	}),
	s({trig = "qr/", descr = "(qr/)", priority = -1000, trigEngine = te("w")}, {
		t"qr/", i(0, "regex", {key = "i0"}), t"/x"
	}),
	s({trig = "given", descr = "(given)", priority = -1000, trigEngine = te("w")}, {
		t"given ($", i(1, "var", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# cases", {key = "i2"}), nl(),
		t"\t", i(0, "# default", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"when (", i(1, "case", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "hslice", descr = "(hslice)", priority = -1000, trigEngine = te("w")}, {
		t"@{ ", i(1, "hash", {key = "i1"}), t"  }{ ", i(0, "array", {key = "i0"}), t" }"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"map {  ", i(0, " body ", {key = "i0"}), t"    }  ", i(1, " @array ", {key = "i1"}), t" ;"
	}),
	s({trig = "ppod", descr = "(ppod)", priority = -1000, trigEngine = te("w")}, {
		t"=head1 NAME", nl(),
		nl(),
		i(1, "ClassName", {key = "i1"}), t" - ", i(2, "ShortDesc", {key = "i2"}), nl(),
		nl(),
		t"=head1 SYNOPSIS", nl(),
		nl(),
		t"  use ", cp(1), t";", nl(),
		nl(),
		t"  ", i(3, "# synopsis...", {key = "i3"}), nl(),
		nl(),
		t"=head1 DESCRIPTION", nl(),
		nl(),
		i(0, "# longer description...", {key = "i0"}), nl(),
		nl(),
		nl(),
		t"=head1 INTERFACE", nl(),
		nl(),
		nl(),
		t"=head1 DEPENDENCIES", nl(),
		nl(),
		nl(),
		t"=head1 SEE ALSO"
	}),
	s({trig = "psub", descr = "(psub)", priority = -1000, trigEngine = te("w")}, {
		t"=head2 ", i(1, "MethodName", {key = "i1"}), nl(),
		nl(),
		i(0, "Summary....", {key = "i0"})
	}),
	s({trig = "psubi", descr = "(psubi)", priority = -1000, trigEngine = te("w")}, {
		t"=head2 ", i(1, "MethodName", {key = "i1"}), nl(),
		nl(),
		i(0, "Summary...", {key = "i0"}), nl(),
		nl(),
		nl(),
		t"=cut"
	}),
	s({trig = "subpod", descr = "(subpod)", priority = -1000, trigEngine = te("w")}, {
		t"=head2 ", cp(1), nl(),
		nl(),
		t"Summary of ", cp(1), nl(),
		nl(),
		t"=cut", nl(),
		nl(),
		t"sub ", i(1, "subroutine_name", {key = "i1"}), t" {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "parg", descr = "(parg)", priority = -1000, trigEngine = te("w")}, {
		t"=over 2", nl(),
		nl(),
		t"=item", nl(),
		t"Arguments", nl(),
		nl(),
		nl(),
		t"=over 3", nl(),
		nl(),
		t"=item", nl(),
		t"C<", i(1, "DataStructure", {key = "i1"}), t">", nl(),
		nl(),
		t"  ", i(2, "Sample", {key = "i2"}), nl(),
		nl(),
		nl(),
		t"=back", nl(),
		nl(),
		nl(),
		t"=item", nl(),
		t"Return", nl(),
		nl(),
		t"=over 3", nl(),
		nl(),
		nl(),
		t"=item", nl(),
		t"C<", i(0, "...return data", {key = "i0"}), t">", nl(),
		nl(),
		nl(),
		t"=back", nl(),
		nl(),
		nl(),
		t"=back"
	}),
	s({trig = "has", descr = "(has)", priority = -1000, trigEngine = te("w")}, {
		t"has ", i(1, "attribute", {key = "i1"}), t" => (", nl(),
		t"\tis\t    => \'", i(2, "ro|rw", {key = "i2"}), t"\',", nl(),
		t"\tisa \t=> \'", i(3, "Str|Int|HashRef|ArrayRef|etc", {key = "i3"}), t"\',", nl(),
		t"\tdefault => sub {", nl(),
		t"\t\t", i(4, "defaultvalue", {key = "i4"}), nl(),
		t"\t},", nl(),
		t"\t", i(0, "# other attributes", {key = "i0"}), nl(),
		t");"
	}),
	s({trig = "override", descr = "(override)", priority = -1000, trigEngine = te("w")}, {
		t"override ", i(1, "attribute", {key = "i1"}), t" => sub {", nl(),
		t"\t", i(2, "# my $self = shift;", {key = "i2"}), t";", nl(),
		t"\t", i(0, "# my ($self, $args) = @_;", {key = "i0"}), t";", nl(),
		t"};"
	}),
	s({trig = "tuse", descr = "(tuse)", priority = -1000, trigEngine = te("w")}, {
		t"use Test::More;", nl(),
		t"use Test::Deep; # (); # uncomment to stop prototype errors", nl(),
		t"use Test::Exception;"
	}),
	s({trig = "tlib", descr = "(tlib)", priority = -1000, trigEngine = te("w")}, {
		t"use lib qw{ ./t/lib };"
	}),
	s({trig = "tmeths", descr = "(tmeths)", priority = -1000, trigEngine = te("w")}, {
		t"$ENV{TEST_METHOD} = \'", i(0, "regex", {key = "i0"}), t"\';"
	}),
	s({trig = "trunner", descr = "(trunner)", priority = -1000, trigEngine = te("w")}, {
		t"use ", i(0, "test_class", {key = "i0"}), t";", nl(),
		i(1, "", {key = "i1"}), t"->runtests();"
	}),
	s({trig = "tsub", descr = "(tsub)", priority = -1000, trigEngine = te("w")}, {
		t"sub t", i(1, "number", {key = "i1"}), t"_", i(2, "test_case", {key = "i2"}), t" :Test(", i(3, "num_of_tests", {key = "i3"}), t") {", nl(),
		t"\tmy $self = shift;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"}"
	}),
	s({trig = "trsub", descr = "(trsub)", priority = -1000, trigEngine = te("w")}, {
		t"test ", i(1, "test_name", {key = "i1"}), t" => { description => \'", i(2, "Description of test.", {key = "i2"}), t"\'} => sub {", nl(),
		t"\tmy ($self) = @_;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"};"
	}),
	s({trig = "tprep", descr = "(tprep)", priority = -1000, trigEngine = te("w")}, {
		t"sub prep", i(1, "number", {key = "i1"}), t"_", i(2, "test_case", {key = "i2"}), t" :Test(startup) {", nl(),
		t"\tmy $self = shift;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "debug_trace", descr = "(debug_trace)", priority = -1000, trigEngine = te("w")}, {
		t"use Carp; # \'verbose\';", nl(),
		t"# cloak \"die\"", nl(),
		t"# warn \"warning\"", nl(),
		t"$SIG{\'__DIE__\'} = sub {", nl(),
		t"\trequire Carp; Carp::confess", nl(),
		t"};"
	}),
	s({trig = "dump", descr = "(dump)", priority = -1000, trigEngine = te("w")}, {
		t"use Data::Dump qw(dump);", nl(),
		t"warn dump ", i(1, "variable", {key = "i1"})
	}),
	s({trig = "ddp", descr = "(ddp)", priority = -1000, trigEngine = te("w")}, {
		t"use DDP;", nl(),
		t"p ", i(1, "variable", {key = "i1"})
	}),
	s({trig = "subtest", descr = "(subtest)", priority = -1000, trigEngine = te("w")}, {
		t"subtest \'", i(1, " test_name", {key = "i1"}), t"\' => sub {", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"};"
	}),
	s({trig = "xfore", descr = "(xfore) \"Loop one-line (xforeach)\"", priority = -50, trigEngine = te("")}, {
		i(1, "expression", {key = "i1"}), t" foreach @", i(2, "array", {key = "i2"}), t";", nl()
	}),
	s({trig = "xwhile", descr = "(xwhile) \"Loop one-line (xwhile)\"", priority = -50, trigEngine = te("")}, {
		i(1, "expression", {key = "i1"}), t" while ", i(2, "condition", {key = "i2"}), t";", nl()
	}),
	s({trig = "test", descr = "(test) \"Test\"", priority = -50, trigEngine = te("")}, {
		t"#!/usr/bin/env perl -w", nl(),
		nl(),
		t"use strict;", nl(),
		t"use Test::More tests => ", i(1, "1", {key = "i1"}), t";", nl(),
		t"use ", i(2, "ModuleName", {key = "i2"}), t";", nl(),
		nl(),
		t"ok(", i(3, "assertion", {key = "i3"}), t");", nl()
	}),
	s({trig = "class", descr = "(class) \"class\"", priority = -50, trigEngine = te("")}, {
		t"package ", i(1, "ClassName", {key = "i1"}), t";", nl(),
		nl(),
		c(2, {{t"use parent qw(", i(1, "ParentClass", {key = "i3"}), t");"}, {i(1, jt({"use parent qw(", "ParentClass", ");"}))}}, {key = "i2"}), tr(2, ".+", "\\n\\n"), t"sub new {", nl(),
		t"\tmy $class = shift;", nl(),
		t"\t$class = ref $class if ref $class;", nl(),
		t"\tmy $self = bless {}, $class;", nl(),
		t"\t$self;", nl(),
		t"}", nl(),
		nl(),
		t"1;", nl()
	}),
	s({trig = "while", descr = "(while) \"while\"", priority = -50, trigEngine = te("")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl()
	}),
	s({trig = "until", descr = "(until) \"until\"", priority = -50, trigEngine = te("")}, {
		t"until (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(2, "# body...", {key = "i2"}), nl(),
		t"}", nl()
	}),
})
