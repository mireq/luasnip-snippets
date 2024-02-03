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
	{},
	{},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2, 3, 4},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2, 3},
	{1, 2},
	{1, 2},
	{1, 2, 3},
	{1},
	{1, 2},
	{1, 2},
	{1, 2},
}
ls.add_snippets("asm", {
	s({trig = "scode", descr = "(scode) Start basic code for assembly", priority = -1000, trigEngine = te("w")}, {
		t".data", nl(),
		nl(),
		nl(),
		t".text", nl(),
		nl(),
		nl(),
		t".global main", nl(),
		nl(),
		nl(),
		t"main:", nl(),
		nl()
	}),
	s({trig = "scodes", descr = "(scodes) Start basic code for assembly with _start label", priority = -1000, trigEngine = te("w")}, {
		t".data", nl(),
		nl(),
		nl(),
		t".text", nl(),
		nl(),
		nl(),
		t".globl _start", nl(),
		nl(),
		nl(),
		t"_start:", nl(),
		nl()
	}),
	s({trig = "lo", descr = "(lo) Long", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .long ", i(2, "", {key = "i2"})
	}),
	s({trig = "wo", descr = "(wo) Word", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .word ", i(2, "", {key = "i2"})
	}),
	s({trig = "by", descr = "(by) Byte", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .byte ", i(2, "", {key = "i2"})
	}),
	s({trig = "sp", descr = "(sp) Space", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .space ", i(2, "", {key = "i2"})
	}),
	s({trig = "ai", descr = "(ai) Ascii", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .ascii \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "az", descr = "(az) Asciz", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .asciz \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "ze", descr = "(ze) Zero", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .zero \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "qu", descr = "(qu) Quad", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .quad \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "si", descr = "(si) Single", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .single \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "do", descr = "(do) Double", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .single \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "fl", descr = "(fl) Float", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .single \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "oc", descr = "(oc) Octa", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .single \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "sh", descr = "(sh) Short", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t": .single \"", i(2, "", {key = "i2"}), t"\""
	}),
	s({trig = "exit0", descr = "(exit0) Exit without error", priority = -1000, trigEngine = te("w")}, {
		t"movl $1, %eax", nl(),
		t"xorl %ebx, %ebx", nl(),
		t"int $0x80", nl()
	}),
	s({trig = "exit", descr = "(exit) Exit with error", priority = -1000, trigEngine = te("w")}, {
		t"mov $1, %eax", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %ebx", nl(),
		t"int $0x80", nl()
	}),
	s({trig = "readfstdin", descr = "(readfstdin) Read fixed length text from stdin", priority = -1000, trigEngine = te("w")}, {
		t"mov $3, %eax", nl(),
		t"mov $2, %ebx", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %ecx", nl(),
		t"mov ", i(2, "", {key = "i2"}), t", %edx", nl(),
		t"int $0x80", nl()
	}),
	s({trig = "writestdout", descr = "(writestdout) Write text to stdout", priority = -1000, trigEngine = te("w")}, {
		t"mov $4, %eax", nl(),
		t"mov $1, %ebx", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %ecx", nl(),
		t"mov ", i(2, "", {key = "i2"}), t", %edx", nl(),
		t"int $0x80", nl()
	}),
	s({trig = "writestderr", descr = "(writestderr) Write text to stderr", priority = -1000, trigEngine = te("w")}, {
		t"mov $4, %eax", nl(),
		t"mov $2, %ebx", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %ecx", nl(),
		t"mov ", i(2, "", {key = "i2"}), t", %edx", nl(),
		t"int $0x80", nl()
	}),
	s({trig = "*", descr = "(*) Multiplication", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %eax", nl(),
		t"mul ", i(2, "", {key = "i2"}), nl()
	}),
	s({trig = "/", descr = "(/) Division", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %eax", nl(),
		t"div ", i(2, "", {key = "i2"}), nl()
	}),
	s({trig = "jmpl", descr = "(jmpl) Conditional lower jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"jl ", i(3, "", {key = "i3"}), t" ", nl()
	}),
	s({trig = "jmple", descr = "(jmple) Conditional lower or equal jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"jle ", i(3, "", {key = "i3"}), t" ", nl()
	}),
	s({trig = "jmpe", descr = "(jmpe) Conditional equal jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"je ", i(3, "", {key = "i3"}), t" ", nl()
	}),
	s({trig = "jmpn", descr = "(jmpn) Conditional not equal jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"jn ", i(3, "", {key = "i3"}), nl()
	}),
	s({trig = "jmpg", descr = "(jmpg) Conditional greater jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"jg ", i(3, "", {key = "i3"}), nl()
	}),
	s({trig = "jmpge", descr = "(jmpge) Conditional greater or equal jump", priority = -1000, trigEngine = te("w")}, {
		t"cmp ", i(1, "", {key = "i1"}), t", ", i(2, "", {key = "i2"}), nl(),
		t"je ", i(3, "", {key = "i3"}), nl()
	}),
	s({trig = "loopn", descr = "(loopn) Loop n times", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %ecx", nl(),
		nl(),
		t"et_for:", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		nl(),
		t"\tloop et_for", nl()
	}),
	s({trig = "loopnn", descr = "(loopnn) Loop n-1 times", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %ecx", nl(),
		t"dec %ecx", nl(),
		nl(),
		t"et_for:", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		nl(),
		t"\tloop et_for", nl()
	}),
	s({trig = "loopv", descr = "(loopv) Loop through a vector", priority = -1000, trigEngine = te("w")}, {
		t"lea ", i(1, "", {key = "i1"}), t", %edi", nl(),
		t"xor %ecx, %ecx", nl(),
		nl(),
		t"et_for:", nl(),
		t"\tcmp %ecx, ", i(2, "", {key = "i2"}), nl(),
		t"\tje ", i(3, "", {key = "i3"}), nl(),
		nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		nl(),
		t"\tinc %ecx", nl(),
		t"\tjmp et_for", nl()
	}),
	s({trig = "mul", descr = "(mul) Multiply", priority = -1000, trigEngine = te("w")}, {
		t"xor %edx, %edx", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %eax", nl(),
		t"mul ", i(2, "", {key = "i2"})
	}),
	s({trig = "mul64", descr = "(mul64) Multiply numbers greater than 2^32", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %edx", nl(),
		t"mov ", i(2, "", {key = "i2"}), t", %eax", nl(),
		t"mul ", i(3, "", {key = "i3"})
	}),
	s({trig = "div", descr = "(div) Divide", priority = -1000, trigEngine = te("w")}, {
		t"xor %edx, %edx", nl(),
		t"mov ", i(1, "", {key = "i1"}), t", %eax", nl(),
		t"div ", i(2, "", {key = "i2"})
	}),
	s({trig = "div64", descr = "(div64) Divide numbers greater than 2^32", priority = -1000, trigEngine = te("w")}, {
		t"mov ", i(1, "", {key = "i1"}), t", %edx", nl(),
		t"mov ", i(2, "", {key = "i2"}), t", %eax", nl(),
		t"div ", i(3, "", {key = "i3"})
	}),
	s({trig = "pr", descr = "(pr) Call printf", priority = -1000, trigEngine = te("w")}, {
		t"pushl ", i(1, "", {key = "i1"}), nl(),
		t"call printf", nl(),
		t"popl ", i(2, "", {key = "i2"})
	}),
	s({trig = "sc", descr = "(sc) Call scanf", priority = -1000, trigEngine = te("w")}, {
		t"pushl ", i(1, "", {key = "i1"}), nl(),
		t"call scanf", nl(),
		t"popl ", i(2, "", {key = "i2"})
	}),
	s({trig = "mindex", descr = "(mindex) Current index from a matrix", priority = -1000, trigEngine = te("w")}, {
		t"xor %edx, %edx", nl(),
		t"movl ", i(1, "", {key = "i1"}), t", %eax", nl(),
		t"mull ", i(2, "", {key = "i2"}), nl(),
		t"addl ", i(3, "", {key = "i3"}), t", %eax"
	}),
	s({trig = "ffl", descr = "(ffl) Call fflush", priority = -1000, trigEngine = te("w")}, {
		t"pushl $0", nl(),
		t"call fflush", nl(),
		t"popl ", i(1, "", {key = "i1"})
	}),
	s({trig = "at", descr = "(at) Call atoi", priority = -1000, trigEngine = te("w")}, {
		t"pushl ", i(1, "", {key = "i1"}), nl(),
		t"call atoi", nl(),
		t"popl ", i(2, "", {key = "i2"})
	}),
	s({trig = "len", descr = "(len) Call strlen", priority = -1000, trigEngine = te("w")}, {
		t"pushl ", i(1, "", {key = "i1"}), nl(),
		t"call strlen", nl(),
		t"popl ", i(2, "", {key = "i2"})
	}),
	s({trig = "proc", descr = "(proc) Basic procedure", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t":", nl(),
		t"pushl %ebp", nl(),
		t"movl %esp, %ebp", nl(),
		nl(),
		i(2, "", {key = "i2"}), nl(),
		nl(),
		t"popl %ebp", nl(),
		t"ret"
	}),
})
