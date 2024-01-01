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
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}},
	{{1, 1}},
	{{0, 0}},
	{{0, 0}},
	{},
	{},
	{{1, 1}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{0, 0}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{0, 0}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{0, 0}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
	{{1, 1}, {2, 2}, {3, 3}},
	{{1, 1}, {2, 2}},
}
ls.add_snippets("objc", {
	s({trig = "Imp", descr = "(Imp) \"#import <> (Imp)\"", priority = -50, trigEngine = te("")}, {
		t"#import <", i(1, "Cocoa/Cocoa.h", {key = "i1"}), t">"
	}),
	s({trig = "imp", descr = "(imp) \"#import (imp)\"", priority = -50, trigEngine = te("b")}, {
		t"#import \"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"objc", 2}, "snip.rv = re.sub(r\'\\..*$\', \'.h\', fn)", python_globals, args, snip, "", am[2])}, ""), {key = "i1"}) }) end), t"\""
	}),
	s({trig = "sel", descr = "(sel) \"@selector\"", priority = -50, trigEngine = te("")}, {
		t"@selector(", i(1, "method", {key = "i1"}), t":)"
	}),
	s({trig = "s", descr = "(s)", priority = -1000, trigEngine = te("w")}, {
		t"@\"", i(1, "", {key = "i1"}), t"\""
	}),
	s({trig = "o", descr = "(o)", priority = -1000, trigEngine = te("w")}, {
		i(1, "NSObject", {key = "i1"}), t" *", i(2, "foo", {key = "i2"}), t" = [", d(3, function(args) return sn(nil, {cp(1), t" alloc"}) end, {}, {key = "i3"}), t"]", i(4, "", {key = "i4"}), t";"
	}),
	s({trig = "log", descr = "(log) \"NSLog (log) 2\"", priority = -50, trigEngine = te("")}, {
		t"NSLog(@\"", i(1, "", {key = "i1"}), t"\"", tr(1, "[^%]*(%)?.*", "(?1:, :\\);)"), i(2, "", {key = "i2"}), tr(1, "[^%]*(%)?.*", "(?1:\\);)")
	}),
	s({trig = "objc", descr = "(objc)", priority = -1000, trigEngine = te("w")}, {
		t"@interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'someClass\')")}, ""), {key = "i1"}) }) end), t" : ", i(2, "NSObject", {key = "i2"}), nl(),
		t"{", nl(),
		t"}", nl(),
		t"@end", nl(),
		nl(),
		t"@implementation ", cp(1), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		t"@interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'someClass\')")}, ""), {key = "i1"}) }) end), t" : ", i(2, "NSObject", {key = "i2"}), nl(),
		t"{", i(3, "", {key = "i3"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "@interface", descr = "(@interface)", priority = -1000, trigEngine = te("w")}, {
		t"@interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'someClass\')")}, ""), {key = "i1"}) }) end), t" : ", i(2, "NSObject", {key = "i2"}), nl(),
		t"{", i(3, "", {key = "i3"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "impl", descr = "(impl)", priority = -1000, trigEngine = te("w")}, {
		t"@implementation ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'someClass\')")}, ""), {key = "i1"}) }) end), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "@implementation", descr = "(@implementation)", priority = -1000, trigEngine = te("w")}, {
		t"@implementation ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'\', \'someClass\')")}, ""), {key = "i1"}) }) end), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "pro", descr = "(pro)", priority = -1000, trigEngine = te("w")}, {
		t"@protocol ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1Delegate\', \'MyProtocol\')")}, ""), {key = "i1"}) }) end), t" ", i(2, "<NSObject>", {key = "i2"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "@protocol", descr = "(@protocol)", priority = -1000, trigEngine = te("w")}, {
		t"@protocol ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1Delegate\', \'MyProtocol\')")}, ""), {key = "i1"}) }) end), t" ", i(2, "<NSObject>", {key = "i2"}), nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "init", descr = "(init)", priority = -1000, trigEngine = te("w")}, {
		t"- (id)init", nl(),
		t"{", nl(),
		t"\tif (self = [super init]) {", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"\treturn self;", nl(),
		t"}"
	}),
	s({trig = "dealloc", descr = "(dealloc)", priority = -1000, trigEngine = te("w")}, {
		t"- (void) dealloc", nl(),
		t"{", nl(),
		t"\t", i(0, "deallocations", {key = "i0"}), nl(),
		t"\t[super dealloc];", nl(),
		t"}"
	}),
	s({trig = "su", descr = "(su)", priority = -1000, trigEngine = te("w")}, {
		t"[super ", i(1, "init", {key = "i1"}), t"]"
	}),
	s({trig = "ibo", descr = "(ibo) \"IBOutlet (ibo)\"", priority = -50, trigEngine = te("")}, {
		t"IBOutlet ", i(1, "NSSomeClass", {key = "i1"}), t" *", d(2, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^[A-Z](?:[A-Z]+|[a-z]+)([A-Z]\\w*)", "\\l$1")}, ""), {key = "i2"}) }) end, {k"i1"}), t";"
	}),
	s({trig = "cat", descr = "(cat)", priority = -1000, trigEngine = te("w")}, {
		t"@interface ", i(1, "NSObject", {key = "i1"}), t" (", i(2, "MyCategory", {key = "i2"}), t")", nl(),
		t"@end", nl(),
		nl(),
		t"@implementation ", cp(1), t" (", cp(2), t")", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "cath", descr = "(cath)", priority = -1000, trigEngine = te("w")}, {
		t"@interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename(\'$1\', \'NSObject\')")}, ""), {key = "i1"}) }) end), t" (", i(2, "MyCategory", {key = "i2"}), t")", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"@end"
	}),
	s({trig = "m", descr = "(m)", priority = -1000, trigEngine = te("w")}, {
		t"- (", i(1, "id", {key = "i1"}), t")", i(2, "method", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "md", descr = "(md)", priority = -1000, trigEngine = te("w")}, {
		t"- (", i(1, "id", {key = "i1"}), t")", i(2, "method", {key = "i2"}), t";"
	}),
	s({trig = "ibad", descr = "(ibad)", priority = -1000, trigEngine = te("w")}, {
		t"- (IBAction)", i(1, "method", {key = "i1"}), t":(", i(2, "id", {key = "i2"}), t")sender;"
	}),
	s({trig = "iba", descr = "(iba)", priority = -1000, trigEngine = te("w")}, {
		t"- (IBAction)", i(1, "method", {key = "i1"}), t":(", i(2, "id", {key = "i2"}), t")sender", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "wake", descr = "(wake)", priority = -1000, trigEngine = te("w")}, {
		t"- (void)awakeFromNib", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "M", descr = "(M)", priority = -1000, trigEngine = te("w")}, {
		t"+ (", i(1, "id", {key = "i1"}), t")", i(2, "method", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t", i(0, "return nil;", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "sm", descr = "(sm)", priority = -1000, trigEngine = te("w")}, {
		t"- (", i(1, "id", {key = "i1"}), t")", i(2, "method", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t[super ", cp(2), t"];", i(0, "", {key = "i0"}), nl(),
		t"\treturn self;", nl(),
		t"}"
	}),
	s({trig = "objacc", descr = "(objacc) \"Object Accessors Interface (objacc)\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"- (", i(1, "id", {key = "i1"}), t")", i(2, "thing", {key = "i2"}), nl(),
			t"{", nl(),
			t"\treturn ", cp(2), t";", nl(),
			t"}", nl(),
			nl(),
			t"- (void)set", tr(2, ".", "\\u$0"), t":(", cp(1), t")aValue", nl(),
			t"{", nl(),
			t"\t", i(3, "", {key = "i0"}), tr(1, "( \\*)?$", "(?1:$1: )"), t"old", tr(2, ".", "\\u$0"), t" = ", cp(2), t";", nl(),
			t"\t", cp(2), t" = [aValue retain];", nl(),
			t"\t[old", tr(2, ".", "\\u$0"), t" release];", nl(),
			t"}"
		},
		{
			t"- (", i(1, "id", {key = "i1"}), t")", i(2, "thing", {key = "i2"}), t";", nl(),
			t"- (void)set", tr(2, ".", "\\u$0"), t":(", cp(1), t")aValue;"
		},
	})),
	s({trig = "forin", descr = "(forin)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "Class", {key = "i1"}), t" *", d(2, function(args) return sn(nil, {t"some", cp(1)}) end, {}, {key = "i2"}), t" in ", i(3, "array", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fore", descr = "(fore)", priority = -1000, trigEngine = te("w")}, {
		t"for (", i(1, "object", {key = "i1"}), t" in ", i(2, "array", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "statements", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "forarray", descr = "(forarray) \"for NSArray loop (forarray)\"", priority = -50, trigEngine = te("")}, {
		t"unsigned int\t", i(1, "object", {key = "i1"}), t"Count = [", i(2, "array", {key = "i2"}), t" count];", nl(),
		nl(),
		t"for(unsigned int index = 0; index < ", cp(1), t"Count; index += 1)", nl(),
		t"{", nl(),
		t"\t", i(3, "id", {key = "i3"}), t"\t", cp(1), t" = [", cp(2), t" objectAtIndex:index];", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "fora", descr = "(fora)", priority = -1000, trigEngine = te("w")}, {
		t"unsigned int ", i(1, "object", {key = "i1"}), t"Count = [", i(2, "array", {key = "i2"}), t" count];", nl(),
		nl(),
		t"for (unsigned int index = 0; index < ", cp(1), t"Count; index++) {", nl(),
		t"\t", i(3, "id", {key = "i3"}), t" ", cp(1), t" = [", cp(2), t" ", cp(1), t"AtIndex:index];", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "@try", descr = "(@try)", priority = -1000, trigEngine = te("w")}, {
		t"@try {", nl(),
		t"\t", i(1, "statements", {key = "i1"}), nl(),
		t"}", nl(),
		t"@catch (NSException * e) {", nl(),
		t"\t", i(2, "handler", {key = "i2"}), nl(),
		t"}", nl(),
		t"@finally {", nl(),
		t"\t", i(0, "statements", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "@catch", descr = "(@catch)", priority = -1000, trigEngine = te("w")}, {
		t"@catch (", i(1, "exception", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "handler", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "@finally", descr = "(@finally)", priority = -1000, trigEngine = te("w")}, {
		t"@finally {", nl(),
		t"\t", i(0, "statements", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "prop", descr = "(prop) \"Property\"", priority = -50, trigEngine = te("")}, {
		t"@property (", tr(1, "^(e)$|.*", "(?1:r)"), i(1, "r", {key = "i1"}), tr(1, "^(?:(r)|(e)|(c)|(a))$|.*", "(?1:etain)(?2:adonly)(?3:opy)(?4:ssign)"), t") ", i(2, "NSSomeClass", {key = "i2"}), t"$ *", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^[A-Z](?:[A-Z]+|[a-z]+)([A-Z]\\w*)", "\\l$1")}, ""), {key = "i3"}) }) end, {k"i2"}), t";"
	}),
	s({trig = "syn", descr = "(syn) \"Synthesize\"", priority = -50, trigEngine = te("")}, {
		t"@synthesize ", i(1, "property", {key = "i1"}), t";"
	}),
	s({trig = "alloc", descr = "(alloc)", priority = -1000, trigEngine = te("w")}, {
		t"[[", i(1, "foo", {key = "i1"}), t" alloc] init", i(2, "", {key = "i2"}), t"];"
	}),
	s({trig = "a", descr = "(a)", priority = -1000, trigEngine = te("w")}, {
		t"[[", i(1, "foo", {key = "i1"}), t" alloc] init", i(2, "", {key = "i2"}), t"];"
	}),
	s({trig = "ret", descr = "(ret)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "foo", {key = "i1"}), t" retain];"
	}),
	s({trig = "rel", descr = "(rel)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(0, "foo", {key = "i0"}), t" release];"
	}),
	s({trig = "arel", descr = "(arel)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(0, "foo", {key = "i0"}), t" autorelease];"
	}),
	s({trig = "pool", descr = "(pool) \"NSAutoreleasePool (pool)\"", priority = -50, trigEngine = te("")}, {
		t"NSAutoreleasePool *pool = [NSAutoreleasePool new];", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"[pool drain];"
	}),
	s({trig = "except", descr = "(except)", priority = -1000, trigEngine = te("w")}, {
		t"NSException *", i(1, "badness", {key = "i1"}), t";", nl(),
		cp(1), t" = [NSException exceptionWithName:@\"", d(2, function(args) return sn(nil, {cp(1), t"Name"}) end, {}, {key = "i2"}), t"\"", nl(),
		t"                             reason:@\"", i(0, "", {key = "i0"}), t"\"", nl(),
		t"                           userInfo:nil];", nl(),
		t"[", cp(1), t" raise];"
	}),
	s({trig = "prag", descr = "(prag)", priority = -1000, trigEngine = te("w")}, {
		t"#pragma mark ", i(0, "-", {key = "i0"})
	}),
	s({trig = "cl", descr = "(cl) \"020 Class (objc)\"", priority = -50, trigEngine = te("")}, {
		t"@interface ", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"objc", 46}, "\nif len(fn):\n\t\tsnip.rv = re.sub(r\'\\..*$\', \'\', fn)\nelse:\n\t\tsnip.rv = \"object\"\n", python_globals, args, snip, "", am[46])}, ""), {key = "i1"}) }) end), t" : ", i(2, "NSObject", {key = "i2"}), nl(),
		t"{", nl(),
		t"}", nl(),
		t"@end", nl(),
		nl(),
		t"@implementation ", cp(1), nl(),
		t"- (id)init", nl(),
		t"{", nl(),
		t"\tif((self = [super init]))", nl(),
		t"\t{", i(0, "", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"\treturn self;", nl(),
		t"}", nl(),
		t"@end"
	}),
	s({trig = "color", descr = "(color)", priority = -1000, trigEngine = te("w")}, {
		t"[[NSColor ", i(0, "blackColor", {key = "i0"}), t"] set];"
	}),
	s({trig = "array", descr = "(array) \"NSArray (array)\"", priority = -50, trigEngine = te("")}, {
		t"NSMutableArray *", i(1, "array", {key = "i1"}), t" = [NSMutableArray array];"
	}),
	s({trig = "nsa", descr = "(nsa)", priority = -1000, trigEngine = te("w")}, {
		t"NSArray ", i(0, "", {key = "i0"})
	}),
	s({trig = "nsma", descr = "(nsma)", priority = -1000, trigEngine = te("w")}, {
		t"NSMutableArray ", i(0, "", {key = "i0"})
	}),
	s({trig = "aa", descr = "(aa)", priority = -1000, trigEngine = te("w")}, {
		t"NSArray * array;"
	}),
	s({trig = "ma", descr = "(ma)", priority = -1000, trigEngine = te("w")}, {
		t"NSMutableArray * array;"
	}),
	s({trig = "dict", descr = "(dict) \"NSDictionary (dict)\"", priority = -50, trigEngine = te("")}, {
		t"NSMutableDictionary *", i(1, "dict", {key = "i1"}), t" = [NSMutableDictionary dictionary];"
	}),
	s({trig = "nsd", descr = "(nsd)", priority = -1000, trigEngine = te("w")}, {
		t"NSDictionary ", i(0, "", {key = "i0"})
	}),
	s({trig = "nsmd", descr = "(nsmd)", priority = -1000, trigEngine = te("w")}, {
		t"NSMutableDictionary ", i(0, "", {key = "i0"})
	}),
	s({trig = "nss", descr = "(nss)", priority = -1000, trigEngine = te("w")}, {
		t"NSString ", i(0, "", {key = "i0"})
	}),
	s({trig = "nsms", descr = "(nsms)", priority = -1000, trigEngine = te("w")}, {
		t"NSMutableString ", i(0, "", {key = "i0"})
	}),
	s({trig = "cdacc", descr = "(cdacc) \"CoreData Accessors Implementation\"", priority = -50, trigEngine = te("")}, {
		t"- (", i(1, "id", {key = "i1"}), t")", i(2, "attribute", {key = "i2"}), nl(),
		t"{", nl(),
		t"\t[self willAccessValueForKey:@\"", cp(2), t"\"];", nl(),
		t"\t", cp(1), t" value = [self primitiveValueForKey:@\"", cp(2), t"\"];", nl(),
		t"\t[self didAccessValueForKey:@\"", cp(2), t"\"];", nl(),
		t"\treturn value;", nl(),
		t"}", nl(),
		nl(),
		t"- (void)set", tr(2, ".", "\\u$0"), t":(", cp(1), t")aValue", nl(),
		t"{", nl(),
		t"\t[self willChangeValueForKey:@\"", cp(2), t"\"];", nl(),
		t"\t[self setPrimitiveValue:aValue forKey:@\"", cp(2), t"\"];", nl(),
		t"\t[self didChangeValueForKey:@\"", cp(2), t"\"];", nl(),
		t"}"
	}),
	s({trig = "delegate", descr = "(delegate) \"Delegate Responds to Selector\"", priority = -50, trigEngine = te("")}, {
		t"if([", i(1, "[self delegate]", {key = "i1"}), t" respondsToSelector:@selector(", i(2, "selfDidSomething:", {key = "i2"}), t")])", nl(),
		t"\t[", cp(1), t" ", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "((^\\s*([A-Za-z0-9_]*:)\\s*)|(:\\s*$)|(:\\s*))", "(?2:$2self :\\:<>)(?4::)(?5: :)")}, "\t"), {key = "i3"}) }) end, {k"i2"}), t"];", nl()
	}),
	s({trig = "thread", descr = "(thread) \"Detach New NSThread\"", priority = -50, trigEngine = te("")}, {
		t"[NSThread detachNewThreadSelector:@selector(", i(1, "method", {key = "i1"}), t":) toTarget:", i(2, "aTarget", {key = "i2"}), t" withObject:", i(3, "anArgument", {key = "i3"}), t"]"
	}),
	s({trig = "I", descr = "(I) \"Initialize Implementation (I)\"", priority = -50, trigEngine = te("")}, {
		t"+ (void)initialize", nl(),
		t"{", nl(),
		t"\t[[NSUserDefaults standardUserDefaults] registerDefaults:[NSDictionary dictionaryWithObjectsAndKeys:", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t"@\"value\", @\"key\",", nl(),
		t"\t\tnil]];", nl(),
		t"}"
	}),
	s({trig = "bind", descr = "(bind) \"Key:value binding (bind)\"", priority = -50, trigEngine = te("")}, {
		t"bind:@\"", i(1, "binding", {key = "i1"}), t"\" toObject:", i(2, "observableController", {key = "i2"}), t" withKeyPath:@\"", i(3, "keyPath", {key = "i3"}), t"\" options:", i(4, "nil", {key = "i4"})
	}),
	s({trig = "arracc", descr = "(arracc) \"LoD array interface (arracc)\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"- (void)addObjectTo", i(1, "Things", {key = "i1"}), t":(", i(2, "id", {key = "i2"}), t")anObject", nl(),
			t"{", nl(),
			t"\t[", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], ".", "\\l$0")}, "\t"), {key = "i3"}) }) end, {k"i1"}), t" addObject:anObject];", nl(),
			t"}", nl(),
			nl(),
			t"- (void)insertObject:(", cp(2), t")anObject in", cp(1), t"AtIndex:(unsigned int)i", nl(),
			t"{", nl(),
			t"\t[", cp(3), t" insertObject:anObject atIndex:i];", nl(),
			t"}", nl(),
			nl(),
			t"- (", cp(2), t")objectIn", cp(1), t"AtIndex:(unsigned int)i", nl(),
			t"{", nl(),
			t"\treturn [", cp(3), t" objectAtIndex:i];", nl(),
			t"}", nl(),
			nl(),
			t"- (unsigned int)indexOfObjectIn", cp(1), t":(", cp(2), t")anObject", nl(),
			t"{", nl(),
			t"\treturn [", cp(3), t" indexOfObject:anObject];", nl(),
			t"}", nl(),
			nl(),
			t"- (void)removeObjectFrom", cp(1), t"AtIndex:(unsigned int)i", nl(),
			t"{", nl(),
			t"\t[", cp(3), t" removeObjectAtIndex:i];", nl(),
			t"}", nl(),
			nl(),
			t"- (unsigned int)countOf", cp(1), nl(),
			t"{", nl(),
			t"\treturn [", cp(3), t" count];", nl(),
			t"}", nl(),
			nl(),
			t"- (NSArray *", tr(1, ".", "\\l$0"), nl(),
			t"{", nl(),
			t"\treturn ", cp(3), t";", nl(),
			t"}", nl(),
			nl(),
			t"- (void)set", cp(1), t":(NSArray *)new", cp(1), nl(),
			t"{", nl(),
			t"\t[", cp(3), t" setArray:new", cp(1), t"];", nl(),
			t"}"
		},
		{
			t"- (void)addObjectTo", i(1, "Things", {key = "i1"}), t":(", i(2, "id", {key = "i2"}), t")anObject;", nl(),
			t"- (void)insertObject:(", cp(2), t")anObject in", cp(1), t"AtIndex:(unsigned int)i;", nl(),
			t"- (", cp(2), t")objectIn", cp(1), t"AtIndex:(unsigned int)i;", nl(),
			t"- (unsigned int)indexOfObjectIn", cp(1), t":(", cp(2), t")anObject;", nl(),
			t"- (void)removeObjectFrom", cp(1), t"AtIndex:(unsigned int)i;", nl(),
			t"- (unsigned int)countOf", cp(1), t";", nl(),
			t"- (NSArray *)", tr(1, ".", "\\l$0"), t";", nl(),
			t"- (void)set", cp(1), t":(NSArray *)new", cp(1), t";"
		},
	})),
	s({trig = "focus", descr = "(focus) \"Lock Focus\"", priority = -50, trigEngine = te("")}, {
		t"[self lockFocus];", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"[self unlockFocus];"
	}),
	s({trig = "alert", descr = "(alert) \"NSRunAlertPanel (alert)\"", priority = -50, trigEngine = te("")}, {
		t"int choice = NSRunAlertPanel(@\"", i(1, "Something important!", {key = "i1"}), t"\", @\"", i(2, "Something important just happend, and now I need to ask you, do you want to continue?", {key = "i2"}), t"\", @\"", i(3, "Continue", {key = "i3"}), t"\", @\"", i(4, "Cancel", {key = "i4"}), t"\", nil);", nl(),
		t"if(choice == NSAlertDefaultReturn) // \"", cp(3), t"\"", nl(),
		t"{", nl(),
		t"\t", i(0, "", {key = "i0"}), t";", nl(),
		t"}", nl(),
		t"else if(choice == NSAlertAlternateReturn) // \"", cp(4), t"\"", nl(),
		t"{", nl(),
		t"\t\t", cp(0), nl(),
		t"}"
	}),
	s({trig = "format", descr = "(format) \"NSString stringWithFormat (format)\"", priority = -50, trigEngine = te("")}, {
		t"[NSString stringWithFormat:@\"", i(1, "", {key = "i1"}), t"\", ", i(2, "", {key = "i2"}), t"]", i(0, "", {key = "i0"})
	}),
	s({trig = "getprefs", descr = "(getprefs) \"Read from defaults (getprefs)\"", priority = -50, trigEngine = te("")}, {
		t"[[NSUserDefaults standardUserDefaults] objectForKey:", i(1, "key", {key = "i1"}), t"];"
	}),
	s({trig = "obs", descr = "(obs) \"Register for Notification\"", priority = -50, trigEngine = te("")}, {
		t"[[NSNotificationCenter defaultCenter] addObserver:", i(1, "self", {key = "i1"}), t" selector:@selector(", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "^([A-Z]{2})?(.+?)(Notification)?$", "\\l$2")}, ""), {key = "i3"}) }) end, {k"i2"}), t":) name:", i(2, "NSWindowDidBecomeMainNotification", {key = "i2"}), t" object:", i(4, "nil", {key = "i4"}), t"];"
	}),
	s({trig = "responds", descr = "(responds) \"Responds to Selector\"", priority = -50, trigEngine = te("")}, {
		t"if ([", i(1, "self", {key = "i1"}), t" respondsToSelector:@selector(", i(2, "someSelector:", {key = "i2"}), t")])", nl(),
		t"{", nl(),
		t"\t\t[", cp(1), t" ", d(3, function(args, snip) return sn(nil, { i(1, jt({rx_tr(args[1], "((:\\s*$)|(:\\s*))", ":<>(?3: )")}, "\t\t"), {key = "i3"}) }) end, {k"i2"}), t"];", nl(),
		t"}"
	}),
	s({trig = "gsave", descr = "(gsave) \"Save and Restore Graphics Context (gsave)\"", priority = -50, trigEngine = te("")}, {
		t"[NSGraphicsContext saveGraphicsState];", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"[NSGraphicsContext restoreGraphicsState];", nl()
	}),
	s({trig = "acc", descr = "(acc) \"Scalar Accessors Interface (acc)\"", priority = -50, trigEngine = te("")}, c(1, {
		{
			t"- (", i(1, "unsigned int", {key = "i1"}), t")", i(2, "thing", {key = "i2"}), nl(),
			t"{", nl(),
			t"\treturn ", d(3, function(args) return sn(nil, {cp(2)}) end, {}, {key = "i3"}), t";", nl(),
			t"}", nl(),
			nl(),
			t"- (void)set", tr(2, ".", "\\u$0"), t":(", i(1, "unsigned int", {key = "i1"}), t")new", tr(2, ".", "\\u$0"), nl(),
			t"{", nl(),
			t"\t", cp(3), t" = new", tr(2, ".", "\\u$0"), t";", nl(),
			t"}"
		},
		{
			t"- (", i(1, "unsigned int", {key = "i1"}), t")", i(2, "thing", {key = "i2"}), t";", nl(),
			t"- (void)set", tr(2, ".", "\\u$0"), t":(", cp(1), t")new", tr(2, ".", "\\u$0"), t";"
		},
	})),
	s({trig = "stracc", descr = "(stracc) \"String Accessors (stracc)\"", priority = -50, trigEngine = te("")}, {
		t"- (NSString *)", i(1, "thing", {key = "i1"}), nl(),
		t"{", nl(),
		t"\treturn ", d(2, function(args) return sn(nil, {cp(1)}) end, {}, {key = "i2"}), t";", nl(),
		t"}", nl(),
		nl(),
		t"- (void)set", tr(1, ".*", "\\u$0"), t":(NSString *)/})", d(3, function(args, snip) return sn(nil, { i(1, jt({"a", rx_tr(args[1], ".*", "\\u$0")}, ""), {key = "i3"}) }) end, {k"i1"}), nl(),
		t"{", nl(),
		t"\t", cp(3), t" = [", cp(3), t" copy];", nl(),
		t"\t[", cp(2), t" release];", nl(),
		t"\t", cp(2), t" = ", cp(3), t";", nl(),
		t"}"
	}),
	s({trig = "setprefs", descr = "(setprefs) \"Write to defaults (setprefs)\"", priority = -50, trigEngine = te("")}, {
		t"[[NSUserDefaults standardUserDefaults] setObject:", i(1, "object", {key = "i1"}), t" forKey:", i(2, "key", {key = "i2"}), t"];"
	}),
})
