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
	{0, 1},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1},
	{1},
	{0, 1},
	{1},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{1},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0, 1},
	{0, 1, 2},
	{0},
	{},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{},
	{0, 1, 2},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
	{0},
	{0, 1, 2, 3, 4},
	{0},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5, 6, 7, 8},
	{0, 1},
	{0, 1, 2},
	{0, 1, 2, 3, 4},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3, 4, 5, 6},
	{0},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0, 1},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2, 3},
	{0},
	{0, 1, 2, 3},
	{0},
	{0},
	{0, 1, 2, 4, 5},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0, 1, 2, 4},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0},
	{0},
	{0, 1, 2, 3, 4},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{1, 2, 3, 7},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	{0, 1, 2, 3, 4, 5, 6, 7, 8},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5},
	{0, 1},
	{0, 1, 2, 3},
	{0},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4},
	{0},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0, 1, 2, 3, 4},
	{0},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3, 4, 5},
	{0, 1, 2, 3},
	{0, 1, 2, 3, 4, 5, 6, 7},
	{0, 1, 2, 3},
	{0, 1, 2, 3},
	{0, 1, 2},
	{0},
	{0},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2},
	{0, 1, 2, 3},
	{0},
	{0, 1},
	{0},
	{0, 2, 3, 4},
	{0, 2, 3, 4},
	{0, 2, 3, 4},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0},
	{0, 1, 2, 3, 4, 5, 6},
	{0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
	{0, 1, 2, 3, 4},
	{0, 1, 2, 3},
	{0, 1},
	{0, 1, 2, 3, 4},
	{0},
	{0},
	{0},
	{0},
	{0},
	{0, 1, 2},
	{0, 1},
}
ls.add_snippets("processing", {
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" *  ", i(1, "Description", {key = "i1"}), nl(),
		t" *", nl(),
		t" *\t@author ", i(2, "name", {key = "i2"}), nl(),
		t" *\t@since  ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%d/%m/%y %H:%M:%S\")")}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "docc", descr = "(docc)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" *\t", i(1, "@private", {key = "i1"}), cp(0), nl(),
		t" */", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "class", descr = "(class)", priority = -1000, trigEngine = te("w")}, {
		i(1, "public ", {key = "i1"}), t"class ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("fnamemodify(bufname(\"%\"),\":t:r\")")}, ""), {key = "i2"}) }) end), t" ", i(3, "extends", {key = "i3"}), nl(),
		t"{", nl(),
		nl(),
		t"\t//--------------------------------------", nl(),
		t"\t//  CONSTRUCTOR", nl(),
		t"\t//--------------------------------------", nl(),
		nl(),
		t"\tpublic ", cp(2), t" (", i(4, "arguments", {key = "i4"}), t") {", nl(),
		t"\t\t", i(0, "// expression", {key = "i0"}), nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "package", descr = "(package)", priority = -1000, trigEngine = te("w")}, {
		t"/**", nl(),
		t" *  ", i(1, "Description", {key = "i1"}), nl(),
		t" *", nl(),
		t" *\t@author ", i(2, "$TM_FULLNAME", {key = "i2"}), nl(),
		t" *\t@since  ", d(3, function(args, snip) return sn(nil, { i(1, jt({c_viml("strftime(\"%d/%m/%y %H:%M:%S\")")}, " "), {key = "i3"}) }) end), nl(),
		t" */", nl(),
		nl(),
		t"package ", i(0, "package", {key = "i0"}), t";"
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void/private/protected/public", {key = "i1"}), i(2, " static", {key = "i2"}), t" ", i(3, "name", {key = "i3"}), t"(", i(4, "", {key = "i4"}), t") {", nl(),
		t"\t", i(5, "//if not void return null;", {key = "i5"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		i(1, "void ", {key = "i1"}), i(2, "name", {key = "i2"}), t"(", i(3, "", {key = "i3"}), t") {", nl(),
		t"\t", i(4, "//if not void return null;", {key = "i4"}), nl(),
		t"}", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "const", descr = "(const)", priority = -1000, trigEngine = te("w")}, {
		t"static final ", i(1, "Object", {key = "i1"}), t" ", i(2, "VAR_NAM", {key = "i2"}), t" = ", i(0, "", {key = "i0"}), t";"
	}),
	s({trig = "var", descr = "(var)", priority = -1000, trigEngine = te("w")}, {
		i(1, "private/public ", {key = "i1"}), i(2, "static ", {key = "i2"}), i(3, "String", {key = "i3"}), t" ", i(4, "str", {key = "i4"}), i(5, " =", {key = "i5"}), i(0, "value", {key = "i0"}), t";"
	}),
	s({trig = "obj", descr = "(obj)", priority = -1000, trigEngine = te("w")}, {
		i(1, "private/public ", {key = "i1"}), i(2, "Object", {key = "i2"}), t" ", i(3, "o", {key = "i3"}), i(4, " = new ", {key = "i4"}), cp(2), t"(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for (int ", i(2, "i", {key = "i2"}), t" = 0; ", cp(2), t" < ", i(1, "Things", {key = "i1"}), t".length; ", cp(2), i(3, "++", {key = "i3"}), t") {", nl(),
		t"\t", d(4, function(args, snip) return sn(nil, { i(1, jt({args[1], "[", args[2], "]"}, "\t"), {key = "i0"}) }) end, {k"i1", k"i2"}), nl(),
		t"};"
	}),
	s({trig = "wh", descr = "(wh)", priority = -1000, trigEngine = te("w")}, {
		t"while (", i(1, "", {key = "i1"}), t") {", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "break", descr = "(break)", priority = -1000, trigEngine = te("w")}, {
		t"break ", i(1, "label", {key = "i1"}), t";"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "expression", {key = "i1"}), t" :", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"break;"
	}),
	s({trig = "default", descr = "(default)", priority = -1000, trigEngine = te("w")}, {
		t"default :", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"break;"
	}),
	s({trig = "switch", descr = "(switch)", priority = -1000, trigEngine = te("w")}, {
		t"switch(", i(1, "expression", {key = "i1"}), t") {", nl(),
		t"\tcase \'", i(3, "case", {key = "i3"}), t"\':", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\t\tbreak;", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\tdefault:", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"}"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch(", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t") {", nl(),
		t"}"
	}),
	s({trig = "tryf", descr = "(tryf)", priority = -1000, trigEngine = te("w")}, {
		t"try {", nl(),
		t"\t", d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i0"}) }) end), nl(),
		t"} catch(", i(1, "Exception", {key = "i1"}), t" ", i(2, "e", {key = "i2"}), t") {", nl(),
		t"} finally {", nl(),
		t"}"
	}),
	s({trig = "throw", descr = "(throw)", priority = -1000, trigEngine = te("w")}, {
		t"throw new (\"", i(1, "Exception()", {key = "i1"}), t"\");"
	}),
	s({trig = "?", descr = "(?)", priority = -1000, trigEngine = te("w")}, {
		t"? ", i(1, "trueExpression", {key = "i1"}), t" : ", i(2, "falseExpression", {key = "i2"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "true", {key = "i1"}), t") {", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if (", i(1, "true", {key = "i1"}), t") {", i(2, "", {key = "i2"}), t"}", nl(),
		t"else{", i(0, "", {key = "i0"}), t"}"
	}),
	s({trig = "get", descr = "(get) pixel", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"public ", i(1, "String", {key = "i1"}), t" get", i(2, "", {key = "i2"}), t"() {", nl(),
			t"\treturn ", i(0, "fieldName", {key = "i0"}), t";", nl(),
			t"}"
		},
		{
			t"get(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), i(3, ", ", {key = "i3"}), i(4, "width", {key = "i4"}), i(5, ", ", {key = "i5"}), i(0, "height", {key = "i0"}), t");"
		},
	})),
	s({trig = "set", descr = "(set) pixel", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"public void set", i(1, "", {key = "i1"}), t"(", i(0, "String", {key = "i0"}), t" new", cp(1), t") {", nl(),
			t"\t", i(1, "fieldName", {key = "i1"}), t" = new", cp(1), t";", nl(),
			t"}"
		},
		{
			t"set(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(0, "color/image", {key = "i0"}), t");"
		},
	})),
	s({trig = "println", descr = "(println)", priority = -1000, trigEngine = te("w")}, {
		t"println(\"", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("fnamemodify(bufname(\"%\"),\":t:r\")")}, ""), {key = "i1"}) }) end), t"::", i(2, "method", {key = "i2"}), t"() \"", i(3, " +", {key = "i3"}), t" ", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"println(\"", i(0, "", {key = "i0"}), t"\");"
	}),
	s({trig = "setup", descr = "(setup)", priority = -1000, trigEngine = te("w")}, {
		t"void setup(){", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"}", nl(),
		nl(),
		t"void draw(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "opengl", descr = "(opengl)", priority = -1000, trigEngine = te("w")}, {
		t"import processing.opengl.*;", nl(),
		t"import javax.media.opengl.*;", nl(),
		nl(),
		t"PGraphicsOpenGL pgl;", nl(),
		t"GL gl;", nl(),
		nl(),
		t"void setup(){", nl(),
		t"\tsize( ", i(1, "300", {key = "i1"}), t", ", i(2, "300", {key = "i2"}), t", OPENGL );", nl(),
		t"\tcolorMode( RGB, 1.0 );", nl(),
		t"\thint( ENABLE_OPENGL_4X_SMOOTH );", nl(),
		t"\tpgl = (PGraphicsOpenGL) g;", nl(),
		t"\tgl = pgl.gl;", nl(),
		t"\tgl.setSwapInterval(1);", nl(),
		t"\tinitGL();", nl(),
		t"\t", i(3, "", {key = "i3"}), nl(),
		t"}", nl(),
		nl(),
		t"void draw(){", nl(),
		t"\tpgl.beginGL();", nl(),
		t"\t\t", i(4, "", {key = "i4"}), nl(),
		t"\tpgl.endGL();", nl(),
		t"\tgetOpenGLErrors();", nl(),
		t"}", nl(),
		nl(),
		t"void initGL(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}", nl(),
		nl(),
		t"void getOpenGLErrors(){", nl(),
		t"\tint error = gl.glGetError();", nl(),
		t"\tswitch (error){", nl(),
		t"\t\tcase 1280 :", nl(),
		t"\t\t\tprintln(\"GL_INVALID_ENUM - An invalid enumerant was passed to an OpenGL command.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 1282 :", nl(),
		t"\t\t\tprintln(\"GL_INVALID_OPERATION - An OpenGL command was issued that was invalid or inappropriate for the current state.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 1281 :", nl(),
		t"\t\t\tprintln(\"GL_INVALID_VALUE - A value was passed to OpenGL that was outside the allowed range.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 1285 :", nl(),
		t"\t\t\tprintln(\"GL_OUT_OF_MEMORY - OpenGL was unable to allocate enough memory to process a command.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 1283 :", nl(),
		t"\t\t\tprintln(\"GL_STACK_OVERFLOW - A command caused an OpenGL stack to overflow.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 1284 :", nl(),
		t"\t\t\tprintln(\"GL_STACK_UNDERFLOW - A command caused an OpenGL stack to underflow.\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t\tcase 32817 :", nl(),
		t"\t\t\tprintln(\"GL_TABLE_TOO_LARGE\");", nl(),
		t"\t\tbreak;", nl(),
		t"\t}", nl(),
		t"}"
	}),
	s({trig = "gl", descr = "(gl) gl clear", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"pgl.beginGL();", nl(),
			t"\t", i(0, "", {key = "i0"}), nl(),
			t"pgl.endGL();"
		},
		{
			t"// specify the minimum swap interval for buffer swaps.", nl(),
			t"gl.setSwapInterval(", i(0, "interval", {key = "i0"}), t");"
		},
		{
			t"// execute a display list", nl(),
			t"gl.glCallList(", i(0, "list", {key = "i0"}), t");"
		},
		{
			t"// import java.nio.IntBuffer;", nl(),
			t"// import java.nio.FloatBuffer;", nl(),
			t"// import com.sun.opengl.util.BufferUtil;", nl(),
			nl(),
			t"// You might need to create four buffers to store vertext data, normal data, texture coordinate data, and indices in vertex arrays", nl(),
			t"IntBuffer bufferObjects = IntBuffer.allocate(", i(1, "4", {key = "i1"}), t");", nl(),
			t"gl.glGenBuffers(", cp(1), t", bufferObjects);", nl(),
			nl(),
			t"int vertexCount = ", i(2, "3", {key = "i2"}), t";", nl(),
			t"int numCoordinates = ", i(0, "3", {key = "i0"}), t";", nl(),
			t"// vertexCount * numCoordinates", nl(),
			t"FloatBuffer vertices = BufferUtil.newFloatBuffer(vertexCount * numCoordinates);", nl(),
			t"float[] v = {0.0f, 0.0f, 0.0f,", nl(),
			t"\t\t\t\t\t\t 1.0f, 0.0f, 0.0f,", nl(),
			t"\t\t\t\t\t\t 0.0f, 1.0f, 1.0f};", nl(),
			t"vertices.put(v);", nl(),
			nl(),
			t"// Bind the first buffer object ID for use with vertext array data", nl(),
			t"gl.glBindBuffer(GL.GL_ARRAY_BUFFER, bufferObjects.get(0));", nl(),
			t"gl.glBufferData(GL.GL_ARRAY_BUFFER, vertexCount * numCoordinates * BufferUtil.SIZEOF_FLOAT, vertices, GL.GL_STATIC_DRAW);"
		},
		{
			i(0, "// A buffer ID of zero unbinds a buffer object", {key = "i0"}), nl(),
			t"gl.glBindBuffer(GL.GL_ARRAY_BUFFER, ", i(1, "0", {key = "i1"}), t");"
		},
		{
			i(0, "// Parameters are the same for glGenBuffers", {key = "i0"}), nl(),
			t"gl.glDeleteBuffers(", i(1, "4", {key = "i1"}), t", ", i(2, "bufferObjects", {key = "i2"}), t");"
		},
		{
			t"// enable or disable writing into the depth buffer", nl(),
			t"gl.glDepthMask(", i(0, "flag", {key = "i0"}), t");"
		},
		{
			t"// replaces the top of the active matrix stack with the identity matrix", nl(),
			t"gl.glLoadIdentity();"
		},
		{
			t"// set the current texture coordinates - 2 floats", nl(),
			t"gl.glTexCoord2f(", i(1, "0.0f", {key = "i1"}), t", ", i(0, "0.0f", {key = "i0"}), t");"
		},
		{
			t"gl.glVertex2f(", i(1, "0.0f", {key = "i1"}), t", ", i(0, "0.0f", {key = "i0"}), t");"
		},
		{
			t"gl.glVertex3f(", i(1, "0.0f", {key = "i1"}), t", ", i(2, "0.0f", {key = "i2"}), t", ", i(0, "0.0f", {key = "i0"}), t");"
		},
		{
			t"// multiply the current matrix by a translation matrix", nl(),
			t"gl.glTranslatef(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(0, "z", {key = "i0"}), t");"
		},
		{
			t"// rotate, x-axis, y-axis, z-axiz", nl(),
			t"gl.glRotatef(", i(1, "angle", {key = "i1"}), t", ", i(2, "x", {key = "i2"}), t", ", i(3, "y", {key = "i3"}), t", ", i(0, "z", {key = "i0"}), t");"
		},
		{
			t"// multiply the current matrix by a general scaling matrix", nl(),
			t"gl.glScalef(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(0, "z", {key = "i0"}), t");"
		},
		{
			t"gl.glColor4f(", i(1, "red", {key = "i1"}), t", ", i(2, "green", {key = "i2"}), t", ", i(3, "blue", {key = "i3"}), t", ", i(0, "alpha", {key = "i0"}), t");"
		},
		{
			t"gl.glClearColor(", i(1, "red", {key = "i1"}), t", ", i(2, "green", {key = "i2"}), t", ", i(3, "blue", {key = "i3"}), t", ", i(0, "alpha", {key = "i0"}), t");"
		},
		{
			t"gl.glColor3f(", i(1, "red", {key = "i1"}), t", ", i(2, "green", {key = "i2"}), t", ", i(0, "blue", {key = "i0"}), t");"
		},
		{
			t"// spush and pop the current matrix stack", nl(),
			t"gl.glPushMatrix();", nl(),
			i(0, "", {key = "i0"}), nl(),
			t"gl.glPopMatrix();"
		},
		{
			t"gl.glGenLists(", i(0, "1", {key = "i0"}), t")"
		},
		{
			t"// Empties buffers. Call this when all previous issues commands completed", nl(),
			t"gl.glFlush();", nl(),
			i(0, "", {key = "i0"})
		},
		{
			t"println(gl.glGetError());"
		},
		{
			t"gl.glClear(", i(1, "GL.GL_COLOR_BUFFER_BIT", {key = "i1"}), i(2, " | ", {key = "i2"}), i(0, "GL.GL_DEPTH_BUFFER_BIT", {key = "i0"}), t");"
		},
	})),
	s({trig = "frameRate", descr = "(frameRate)", priority = -1000, trigEngine = te("w")}, {
		t"frameRate(", i(1, "30", {key = "i1"}), t");", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "saveFrame", descr = "(saveFrame)", priority = -1000, trigEngine = te("w")}, {
		t"saveFrame(\"", i(1, "filename-####", {key = "i1"}), i(0, ".ext", {key = "i0"}), t"\");"
	}),
	s({trig = "size", descr = "(size) opengl", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"size(", i(1, "200", {key = "i1"}), t", ", i(2, "200", {key = "i2"}), i(0, ", P3D", {key = "i0"}), t");"
		},
		{
			t"size(", i(1, "200", {key = "i1"}), t", ", i(2, "200", {key = "i2"}), i(0, ", OPENGL", {key = "i0"}), t");"
		},
	})),
	s({trig = "color", descr = "(color)", priority = -1000, trigEngine = te("w")}, {
		t"color ", i(1, "c", {key = "i1"}), i(2, " = color(", {key = "i2"}), i(3, "value1, ", {key = "i3"}), i(4, "value2, ", {key = "i4"}), i(0, "value3)", {key = "i0"}), t";"
	}),
	s({trig = "char", descr = "(char)", priority = -1000, trigEngine = te("w")}, {
		t"char ", i(1, "m", {key = "i1"}), i(2, " = \"", {key = "i2"}), i(0, "char\"", {key = "i0"}), t";"
	}),
	s({trig = "float", descr = "(float)", priority = -1000, trigEngine = te("w")}, {
		t"float ", i(1, "f", {key = "i1"}), i(2, " = ", {key = "i2"}), i(0, "0.0f", {key = "i0"}), t";"
	}),
	s({trig = "int", descr = "(int)", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "f", {key = "i1"}), i(2, " = ", {key = "i2"}), i(0, "0", {key = "i0"}), t";"
	}),
	s({trig = "boolean", descr = "(boolean)", priority = -1000, trigEngine = te("w")}, {
		t"boolean ", i(1, "b", {key = "i1"}), i(2, " = ", {key = "i2"}), i(0, "true", {key = "i0"}), t";"
	}),
	s({trig = "byte", descr = "(byte)", priority = -1000, trigEngine = te("w")}, {
		t"byte ", i(1, "b", {key = "i1"}), i(2, " = ", {key = "i2"}), i(0, "127", {key = "i0"}), t";"
	}),
	s({trig = "string", descr = "(string)", priority = -1000, trigEngine = te("w")}, {
		t"String ", i(1, "str", {key = "i1"}), i(2, " = \"", {key = "i2"}), i(0, "CCCP\"", {key = "i0"}), t";"
	}),
	s({trig = "array", descr = "(array)", priority = -1000, trigEngine = te("w")}, {
		i(1, "int", {key = "i1"}), t"[] ", i(2, "numbers", {key = "i2"}), d(3, function(args, snip) return sn(nil, { i(1, jt({" = new ", args[1]}, ""), {key = "i3"}) }) end, {k"i1"}), t"[", i(0, "length", {key = "i0"}), t"];"
	}),
	s({trig = "object", descr = "(object)", priority = -1000, trigEngine = te("w")}, {
		i(1, "Object", {key = "i1"}), t" ", i(2, "o", {key = "i2"}), d(3, function(args, snip) return sn(nil, { i(1, jt({" = new ", args[1]}, " "), {key = "i3"}) }) end, {k"i1"}), t"(", i(0, "", {key = "i0"}), t");"
	}),
	s({trig = "curve", descr = "(curve) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"curve(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "x2", {key = "i3"}), t", ", i(4, "y2", {key = "i4"}), t", ", i(5, "x3", {key = "i5"}), t", ", i(6, "y3", {key = "i6"}), t", ", i(7, "x4", {key = "i7"}), t", ", i(0, "y4", {key = "i0"}), t");"
		},
		{
			t"curve(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "z1", {key = "i3"}), t", ", i(4, "x2", {key = "i4"}), t", ", i(5, "y2", {key = "i5"}), t", ", i(6, "z2", {key = "i6"}), t", ", i(7, "x3", {key = "i7"}), t", ", i(8, "y3", {key = "i8"}), t", ", i(9, "z3", {key = "i9"}), t", ", i(10, "x4", {key = "i10"}), t", ", i(11, "y4", {key = "i11"}), t", ", i(0, "z4", {key = "i0"}), t");"
		},
	})),
	s({trig = "curveDetail", descr = "(curveDetail)", priority = -1000, trigEngine = te("w")}, {
		t"curveDetail(", i(0, "detail", {key = "i0"}), t");"
	}),
	s({trig = "curvePoint", descr = "(curvePoint)", priority = -1000, trigEngine = te("w")}, {
		t"curvePoint(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), t", ", i(3, "c", {key = "i3"}), t", ", i(4, "d", {key = "i4"}), t", ", i(0, "t", {key = "i0"}), t");"
	}),
	s({trig = "curveTightness", descr = "(curveTightness)", priority = -1000, trigEngine = te("w")}, {
		t"curveTightness(", i(0, "squishy", {key = "i0"}), t");"
	}),
	s({trig = "bezier", descr = "(bezier) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"bezier(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "cx1", {key = "i3"}), t", ", i(4, "cy1", {key = "i4"}), t", ", i(5, "cx2", {key = "i5"}), t", ", i(6, "cy2", {key = "i6"}), t", ", i(7, "x2", {key = "i7"}), t", ", i(0, "y2", {key = "i0"}), t");"
		},
		{
			t"bezier(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "z1", {key = "i3"}), t", ", i(4, "cx1", {key = "i4"}), t", ", i(5, "cy1", {key = "i5"}), t", ", i(6, "cz1", {key = "i6"}), t", ", i(7, "cx2", {key = "i7"}), t", ", i(8, "cy2", {key = "i8"}), t", ", i(9, "cz2", {key = "i9"}), t", ", i(10, "x2", {key = "i10"}), t", ", i(11, "y2", {key = "i11"}), t", ", i(0, "z2", {key = "i0"}), t");"
		},
	})),
	s({trig = "bezierDetail", descr = "(bezierDetail)", priority = -1000, trigEngine = te("w")}, {
		t"bezierDetail(", i(0, "detail", {key = "i0"}), t");"
	}),
	s({trig = "bezierTangent", descr = "(bezierTangent)", priority = -1000, trigEngine = te("w")}, {
		t"bezierTangent(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), t", ", i(3, "c", {key = "i3"}), t", ", i(4, "d", {key = "i4"}), t", ", i(0, "t", {key = "i0"}), t");"
	}),
	s({trig = "bezierPoint", descr = "(bezierPoint)", priority = -1000, trigEngine = te("w")}, {
		t"bezierPoint(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), t", ", i(3, "c", {key = "i3"}), t", ", i(4, "d", {key = "i4"}), t", ", i(0, "t", {key = "i0"}), t");"
	}),
	s({trig = "vertex", descr = "(vertex) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"vertex(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), i(3, ", ", {key = "i3"}), i(4, "u", {key = "i4"}), i(5, ", ", {key = "i5"}), i(0, "v", {key = "i0"}), t");"
		},
		{
			t"vertex(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(3, "z", {key = "i3"}), i(4, ", ", {key = "i4"}), i(5, "u", {key = "i5"}), i(6, ", ", {key = "i6"}), i(0, "v", {key = "i0"}), t");"
		},
	})),
	s({trig = "bezierVertex", descr = "(bezierVertex) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"bezierVertex(", i(1, "cx1", {key = "i1"}), t", ", i(2, "cy1", {key = "i2"}), t", ", i(3, "cx2", {key = "i3"}), t", ", i(4, "cy2", {key = "i4"}), t", ", i(5, "x", {key = "i5"}), t", ", i(0, "y", {key = "i0"}), t");"
		},
		{
			t"bezierVertex(", i(1, "cx1", {key = "i1"}), t", ", i(2, "cy1", {key = "i2"}), t", ", i(3, "cz1", {key = "i3"}), t", ", i(4, "cx2", {key = "i4"}), t", ", i(5, "cy2", {key = "i5"}), t", ", i(6, "cz2", {key = "i6"}), t", ", i(7, "x", {key = "i7"}), t", ", i(8, "y", {key = "i8"}), t", ", i(0, "z", {key = "i0"}), t");"
		},
	})),
	s({trig = "curveVertex", descr = "(curveVertex) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"curveVertex(", i(1, "x", {key = "i1"}), t", ", i(0, "y", {key = "i0"}), t");"
		},
		{
			t"curveVertex(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(0, "z", {key = "i0"}), t");"
		},
	})),
	s({trig = "stroke", descr = "(stroke)", priority = -1000, trigEngine = te("w")}, {
		t"stroke(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(3, "value3", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "alpha", {key = "i0"}), t");"
	}),
	s({trig = "strokeWeight", descr = "(strokeWeight)", priority = -1000, trigEngine = te("w")}, {
		t"strokeWeight(", i(0, "1", {key = "i0"}), t");"
	}),
	s({trig = "mouseDragged", descr = "(mouseDragged)", priority = -1000, trigEngine = te("w")}, {
		t"void mouseDragged(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mouseMoved", descr = "(mouseMoved)", priority = -1000, trigEngine = te("w")}, {
		t"void mouseMoved(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mouseReleased", descr = "(mouseReleased)", priority = -1000, trigEngine = te("w")}, {
		t"void mouseReleased(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "mousePressed", descr = "(mousePressed)", priority = -1000, trigEngine = te("w")}, {
		t"void mousePressed(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "keyReleased", descr = "(keyReleased)", priority = -1000, trigEngine = te("w")}, {
		t"void keyReleased(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "keyTyped", descr = "(keyTyped)", priority = -1000, trigEngine = te("w")}, {
		t"void keyTyped(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "keyPressed", descr = "(keyPressed)", priority = -1000, trigEngine = te("w")}, {
		t"void keyPressed(){", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "loadStrings", descr = "(loadStrings)", priority = -1000, trigEngine = te("w")}, {
		t"loadStrings(\"", i(0, "filename", {key = "i0"}), t"\");"
	}),
	s({trig = "saveStrings", descr = "(saveStrings)", priority = -1000, trigEngine = te("w")}, {
		t"saveStrings(", i(1, "filename", {key = "i1"}), t", ", i(0, "strings", {key = "i0"}), t");"
	}),
	s({trig = "loadBytes", descr = "(loadBytes)", priority = -1000, trigEngine = te("w")}, {
		t"loadBytes(\"", i(0, "filename", {key = "i0"}), t"\");"
	}),
	s({trig = "beginRecord", descr = "(beginRecord)", priority = -1000, trigEngine = te("w")}, {
		t"beginRecord(", i(1, "renderer", {key = "i1"}), t", ", i(0, "filename", {key = "i0"}), t");"
	}),
	s({trig = "saveBytes", descr = "(saveBytes)", priority = -1000, trigEngine = te("w")}, {
		t"saveBytes(", i(1, "filename", {key = "i1"}), t", ", i(0, "bytes", {key = "i0"}), t");"
	}),
	s({trig = "createWriter", descr = "(createWriter)", priority = -1000, trigEngine = te("w")}, {
		t"createWriter(", i(0, "filename", {key = "i0"}), t");"
	}),
	s({trig = "createReader", descr = "(createReader)", priority = -1000, trigEngine = te("w")}, {
		t"createReader(", i(0, "filename", {key = "i0"}), t");"
	}),
	s({trig = "pushMatrix", descr = "(pushMatrix)", priority = -1000, trigEngine = te("w")}, {
		t"pushMatrix();", nl(),
		i(0, "", {key = "i0"}), t";", nl(),
		t"popMatrix();"
	}),
	s({trig = "text", descr = "(text) stringdata", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"text(", i(1, "data", {key = "i1"}), t", ", i(2, "x", {key = "i2"}), t", ", i(3, "y", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "z", {key = "i0"}), t");"
		},
		{
			t"text(", i(1, "stringdata", {key = "i1"}), t", ", i(2, "x", {key = "i2"}), t", ", i(3, "y", {key = "i3"}), t", ", i(4, "width", {key = "i4"}), t", ", i(5, "height", {key = "i5"}), i(6, ", ", {key = "i6"}), i(0, "z", {key = "i0"}), t");"
		},
	})),
	s({trig = "textSize", descr = "(textSize)", priority = -1000, trigEngine = te("w")}, {
		t"textSize(", i(0, "size", {key = "i0"}), t");"
	}),
	s({trig = "textLeading", descr = "(textLeading)", priority = -1000, trigEngine = te("w")}, {
		t"textLeading(", i(0, "size", {key = "i0"}), t");"
	}),
	s({trig = "textWidth", descr = "(textWidth)", priority = -1000, trigEngine = te("w")}, {
		t"textWidth(", i(0, "data", {key = "i0"}), t");"
	}),
	s({trig = "font", descr = "(font)", priority = -1000, trigEngine = te("w")}, {
		t"PFont ", i(1, "font", {key = "i1"}), t";", nl(),
		cp(1), t" = loadFont(\"", i(0, "FFScala-32.vlw", {key = "i0"}), t"\");"
	}),
	s({trig = "loadFont", descr = "(loadFont)", priority = -1000, trigEngine = te("w")}, {
		i(1, "font", {key = "i1"}), t" = loadFont(\"", i(0, "FFScala-32.vlw", {key = "i0"}), t"\");"
	}),
	s({trig = "textFont", descr = "(textFont)", priority = -1000, trigEngine = te("w")}, {
		t"textFont(", i(1, "font", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "size", {key = "i0"}), t");"
	}),
	s({trig = "tan", descr = "(tan)", priority = -1000, trigEngine = te("w")}, {
		t"tan(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "atan", descr = "(atan)", priority = -1000, trigEngine = te("w")}, {
		t"atan(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "atan2", descr = "(atan2)", priority = -1000, trigEngine = te("w")}, {
		t"atan2(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "sin", descr = "(sin)", priority = -1000, trigEngine = te("w")}, {
		t"sin(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "asin", descr = "(asin)", priority = -1000, trigEngine = te("w")}, {
		t"asin(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "cos", descr = "(cos)", priority = -1000, trigEngine = te("w")}, {
		t"cos(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "acos", descr = "(acos)", priority = -1000, trigEngine = te("w")}, {
		t"acos(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "degrees", descr = "(degrees)", priority = -1000, trigEngine = te("w")}, {
		t"degrees(", i(0, "rad", {key = "i0"}), t");"
	}),
	s({trig = "radians", descr = "(radians)", priority = -1000, trigEngine = te("w")}, {
		t"radians(", i(0, "deg", {key = "i0"}), t");"
	}),
	s({trig = "randomSseed", descr = "(randomSseed)", priority = -1000, trigEngine = te("w")}, {
		t"randomSeed(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "random", descr = "(random)", priority = -1000, trigEngine = te("w")}, {
		t"random(", i(1, "value1", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "value2", {key = "i0"}), t");"
	}),
	s({trig = "pow", descr = "(pow)", priority = -1000, trigEngine = te("w")}, {
		t"pow(", i(1, "num", {key = "i1"}), t", ", i(0, "exponent", {key = "i0"}), t");"
	}),
	s({trig = "floor", descr = "(floor)", priority = -1000, trigEngine = te("w")}, {
		t"floor(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "sqrt", descr = "(sqrt)", priority = -1000, trigEngine = te("w")}, {
		t"sqrt(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "abs", descr = "(abs)", priority = -1000, trigEngine = te("w")}, {
		t"abs(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "sq", descr = "(sq)", priority = -1000, trigEngine = te("w")}, {
		t"sq(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "ceil", descr = "(ceil)", priority = -1000, trigEngine = te("w")}, {
		t"ceil(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"exp(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "round", descr = "(round)", priority = -1000, trigEngine = te("w")}, {
		t"round(", i(0, "value", {key = "i0"}), t"};"
	}),
	s({trig = "min", descr = "(min) array", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"min(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "value3", {key = "i0"}), t");"
		},
		{
			t"min(", i(0, "array", {key = "i0"}), t");"
		},
	})),
	s({trig = "max", descr = "(max) array", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"max(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "value3", {key = "i0"}), t");"
		},
		{
			t"max(", i(0, "array", {key = "i0"}), t");"
		},
	})),
	s({trig = "log", descr = "(log)", priority = -1000, trigEngine = te("w")}, {
		t"log(", i(0, "value", {key = "i0"}), t");"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"map(", i(1, "value", {key = "i1"}), t", ", i(2, "low1", {key = "i2"}), t", ", i(3, "high1", {key = "i4"}), t", ", i(4, "low2", {key = "i5"}), t", ", i(0, "high2", {key = "i0"}), t");"
	}),
	s({trig = "norm", descr = "(norm)", priority = -1000, trigEngine = te("w")}, {
		t"norm(", i(1, "value", {key = "i1"}), t", ", i(2, "low", {key = "i2"}), t", ", i(0, "high", {key = "i0"}), t");"
	}),
	s({trig = "constrain", descr = "(constrain)", priority = -1000, trigEngine = te("w")}, {
		t"constrain(", i(1, "value", {key = "i1"}), t", ", i(2, "min", {key = "i2"}), t", ", i(0, "max", {key = "i0"}), t");"
	}),
	s({trig = "mag", descr = "(mag)", priority = -1000, trigEngine = te("w")}, {
		t"mag(", i(1, "a", {key = "i1"}), t", ", i(2, "b", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "c", {key = "i0"}), t");"
	}),
	s({trig = "dist", descr = "(dist) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"dist(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "x2", {key = "i4"}), t", ", i(0, "y2", {key = "i0"}), t");"
		},
		{
			t"dist(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "z1", {key = "i3"}), t", ", i(4, "x2", {key = "i4"}), t", ", i(5, "y2", {key = "i5"}), t", ", i(0, "z2", {key = "i0"}), t");"
		},
	})),
	s({trig = "noise", descr = "(noise)", priority = -1000, trigEngine = te("w")}, {
		t"noise(", i(1, "x", {key = "i1"}), i(2, ", ", {key = "i2"}), i(3, "y", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "z", {key = "i0"}), t");"
	}),
	s({trig = "noiseDetail", descr = "(noiseDetail)", priority = -1000, trigEngine = te("w")}, {
		t"noiseDetail(", i(1, "octaves", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "falloff", {key = "i0"}), t");"
	}),
	s({trig = "noiseSeed", descr = "(noiseSeed)", priority = -1000, trigEngine = te("w")}, {
		t"noiseSeed(", i(0, "x", {key = "i0"}), t");"
	}),
	s({trig = "shininess", descr = "(shininess)", priority = -1000, trigEngine = te("w")}, {
		t"shininess(", i(0, "shine", {key = "i0"}), t");"
	}),
	s({trig = "specular", descr = "(specular)", priority = -1000, trigEngine = te("w")}, {
		t"specular(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(3, "value3", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "alpha", {key = "i0"}), t");"
	}),
	s({trig = "ambient", descr = "(ambient)", priority = -1000, trigEngine = te("w")}, {
		t"ambient(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(0, "value3", {key = "i0"}), t");"
	}),
	s({trig = "emissive", descr = "(emissive)", priority = -1000, trigEngine = te("w")}, {
		t"emissive(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(0, "value3", {key = "i0"}), t");"
	}),
	s({trig = "diretionalLight", descr = "(diretionalLight)", priority = -1000, trigEngine = te("w")}, {
		t"directionalLight(", i(1, "v1", {key = "i1"}), t", ", i(2, "v2", {key = "i2"}), t", ", i(3, "v3", {key = "i3"}), t", ", i(4, "nx", {key = "i4"}), t", ", i(5, "ny", {key = "i5"}), t", ", i(0, "nz", {key = "i0"}), t");"
	}),
	s({trig = "pointLight", descr = "(pointLight)", priority = -1000, trigEngine = te("w")}, {
		t"pointLight(", i(1, "v1", {key = "i1"}), t", ", i(2, "v2", {key = "i2"}), t", ", i(3, "v3", {key = "i3"}), t", ", i(4, "nx", {key = "i4"}), t", ", i(5, "ny", {key = "i5"}), t", ", i(0, "nz", {key = "i0"}), t");"
	}),
	s({trig = "lightFalloff", descr = "(lightFalloff)", priority = -1000, trigEngine = te("w")}, {
		t"lightFalloff(", i(1, "constant", {key = "i1"}), t", ", i(2, "linear", {key = "i2"}), t", ", i(0, "quadratic", {key = "i0"}), t");"
	}),
	s({trig = "normal", descr = "(normal)", priority = -1000, trigEngine = te("w")}, {
		t"normal(", i(1, "nx", {key = "i1"}), t", ", i(2, "ny", {key = "i2"}), t", ", i(0, "nz", {key = "i0"}), t");"
	}),
	s({trig = "lightSpecular", descr = "(lightSpecular)", priority = -1000, trigEngine = te("w")}, {
		t"lightSpecular(", i(1, "v1", {key = "i1"}), t", ", i(2, "v2", {key = "i2"}), t", ", i(0, "v3", {key = "i0"}), t");"
	}),
	s({trig = "ambientLight", descr = "(ambientLight)", priority = -1000, trigEngine = te("w")}, {
		t"ambientLight(", i(1, "v1", {key = "i1"}), t", ", i(2, "v2", {key = "i2"}), t", ", i(3, "v3", {key = "i3"}), i(4, ", ${4:x}, ${5:y}, ${0:z}", {key = "i7"}), t");"
	}),
	s({trig = "spotLight", descr = "(spotLight)", priority = -1000, trigEngine = te("w")}, {
		t"spotLight(", i(1, "v1", {key = "i1"}), t", ", i(2, "v2", {key = "i2"}), t", ", i(3, "v3", {key = "i3"}), t", ", i(4, "x", {key = "i4"}), t", ", i(5, "y", {key = "i5"}), t", ", i(6, "z", {key = "i6"}), t", ", i(7, "nx", {key = "i7"}), t", ", i(8, "ny", {key = "i8"}), t", ", i(9, "nz", {key = "i9"}), t", ", i(10, "angle", {key = "i10"}), t", ", i(0, "concentration", {key = "i0"}), t");"
	}),
	s({trig = "camera", descr = "(camera)", priority = -1000, trigEngine = te("w")}, {
		t"camera(", i(1, "eyeX", {key = "i1"}), t", ", i(2, "eyeY", {key = "i2"}), t", ", i(3, "eyeZ", {key = "i3"}), t", ", i(4, "centerX", {key = "i4"}), t", ", i(5, "centerY", {key = "i5"}), t", ", i(6, "centerZ", {key = "i6"}), t", ", i(7, "upX", {key = "i7"}), t", ", i(8, "upY", {key = "i8"}), t", ", i(0, "upZ", {key = "i0"}), t");"
	}),
	s({trig = "ortho", descr = "(ortho)", priority = -1000, trigEngine = te("w")}, {
		t"ortho(", i(1, "left", {key = "i1"}), t", ", i(2, "right", {key = "i2"}), t", ", i(3, "bottom", {key = "i3"}), t", ", i(4, "top", {key = "i4"}), t", ", i(5, "near", {key = "i5"}), t", ", i(0, "far", {key = "i0"}), t");"
	}),
	s({trig = "perspective", descr = "(perspective)", priority = -1000, trigEngine = te("w")}, {
		t"perspective(", i(1, "fov", {key = "i1"}), t", ", i(2, "aspect", {key = "i2"}), t", ", i(3, "zNear", {key = "i3"}), t", ", i(0, "zFar", {key = "i0"}), t");"
	}),
	s({trig = "frustrum", descr = "(frustrum)", priority = -1000, trigEngine = te("w")}, {
		t"frustrum(", i(1, "left", {key = "i1"}), t", ", i(2, "right", {key = "i2"}), t", ", i(3, "bottom", {key = "i3"}), t", ", i(4, "top", {key = "i4"}), t", ", i(5, "near", {key = "i5"}), t", ", i(0, "far", {key = "i0"}), t");"
	}),
	s({trig = "rotate", descr = "(rotate)", priority = -1000, trigEngine = te("w")}, {
		t"rotate", i(1, "X", {key = "i1"}), t"(", i(0, "angle", {key = "i0"}), t");"
	}),
	s({trig = "translate", descr = "(translate)", priority = -1000, trigEngine = te("w")}, {
		t"translate(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "z", {key = "i0"}), t");"
	}),
	s({trig = "scale", descr = "(scale)", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"scale(", i(0, "size", {key = "i0"}), t");"
		},
		{
			t"scale(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "z", {key = "i0"}), t");"
		},
	})),
	s({trig = "coord", descr = "(coord)", priority = -1000, trigEngine = te("w")}, {
		i(1, "model/screen", {key = "i1"}), i(2, "X", {key = "i2"}), t"(", i(3, "x", {key = "i3"}), t", ", i(4, "y", {key = "i4"}), t", ", i(0, "z", {key = "i0"}), t");"
	}),
	s({trig = "brightness", descr = "(brightness)", priority = -1000, trigEngine = te("w")}, {
		t"brightness(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "lerpColor", descr = "(lerpColor)", priority = -1000, trigEngine = te("w")}, {
		t"lerpColor(", i(1, "c1", {key = "i1"}), t", ", i(2, "c2", {key = "i2"}), t", ", i(0, "amt", {key = "i0"}), t");"
	}),
	s({trig = "saturation", descr = "(saturation)", priority = -1000, trigEngine = te("w")}, {
		t"saturation(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "hue", descr = "(hue)", priority = -1000, trigEngine = te("w")}, {
		t"hue(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "alpha", descr = "(alpha)", priority = -1000, trigEngine = te("w")}, {
		t"alpha(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "tint", descr = "(tint)", priority = -1000, trigEngine = te("w")}, {
		t"tint(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(3, "value3", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "alpha", {key = "i0"}), t");"
	}),
	s({trig = "pixels", descr = "(pixels)", priority = -1000, trigEngine = te("w")}, {
		t"pixels[", i(0, "index", {key = "i0"}), t"]"
	}),
	s({trig = "triangle", descr = "(triangle)", priority = -1000, trigEngine = te("w")}, {
		t"triangle(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "x2", {key = "i3"}), t", ", i(4, "y2", {key = "i4"}), t", ", i(5, "x3", {key = "i5"}), t", ", i(0, "y3", {key = "i0"}), t");"
	}),
	s({trig = "line", descr = "(line) 3D", priority = -1000, trigEngine = te("w")}, c(1, {
		{
			t"line(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "x2", {key = "i3"}), t", ", i(0, "y2", {key = "i0"}), t");"
		},
		{
			t"line(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "z1", {key = "i3"}), t", ", i(4, "x2", {key = "i4"}), t", ", i(5, "y2", {key = "i5"}), t", ", i(0, "z2", {key = "i0"}), t");"
		},
	})),
	s({trig = "arc", descr = "(arc)", priority = -1000, trigEngine = te("w")}, {
		t"arc(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(3, "width", {key = "i3"}), t", ", i(4, "height", {key = "i4"}), t", ", i(5, "start", {key = "i5"}), t", ", i(0, "stop", {key = "i0"}), t");"
	}),
	s({trig = "point", descr = "(point)", priority = -1000, trigEngine = te("w")}, {
		t"point(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "z", {key = "i0"}), t");"
	}),
	s({trig = "quad", descr = "(quad)", priority = -1000, trigEngine = te("w")}, {
		t"quad(", i(1, "x1", {key = "i1"}), t", ", i(2, "y1", {key = "i2"}), t", ", i(3, "x2", {key = "i3"}), t", ", i(4, "y2", {key = "i4"}), t", ", i(5, "x3", {key = "i5"}), t", ", i(6, "y3", {key = "i6"}), t", ", i(7, "x4", {key = "i7"}), t", ", i(0, "y4", {key = "i0"}), t");"
	}),
	s({trig = "ellipse", descr = "(ellipse)", priority = -1000, trigEngine = te("w")}, {
		t"ellipse(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(3, "width", {key = "i3"}), t", ", i(0, "height", {key = "i0"}), t");"
	}),
	s({trig = "rect", descr = "(rect)", priority = -1000, trigEngine = te("w")}, {
		t"rect(", i(1, "x", {key = "i1"}), t", ", i(2, "y", {key = "i2"}), t", ", i(3, "width", {key = "i3"}), t", ", i(0, "height", {key = "i0"}), t");"
	}),
	s({trig = "box", descr = "(box)", priority = -1000, trigEngine = te("w")}, {
		t"box(", i(1, "width", {key = "i1"}), t", ", i(2, "height", {key = "i2"}), t", ", i(0, "depth", {key = "i0"}), t");"
	}),
	s({trig = "sphere", descr = "(sphere)", priority = -1000, trigEngine = te("w")}, {
		t"sphere(", i(0, "radius", {key = "i0"}), t");"
	}),
	s({trig = "sphereDetails", descr = "(sphereDetails)", priority = -1000, trigEngine = te("w")}, {
		t"sphereDetail(", i(0, "n", {key = "i0"}), t");"
	}),
	s({trig = "split", descr = "(split)", priority = -1000, trigEngine = te("w")}, {
		t"split(\"", i(1, "str", {key = "i1"}), t"\"", i(2, " , ", {key = "i2"}), i(0, "delimiter", {key = "i0"}), t");"
	}),
	s({trig = "splitTokens", descr = "(splitTokens)", priority = -1000, trigEngine = te("w")}, {
		t"splitTokens(", i(1, "str", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "tokens", {key = "i0"}), t");"
	}),
	s({trig = "join", descr = "(join)", priority = -1000, trigEngine = te("w")}, {
		t"join(", i(1, "strgArray", {key = "i1"}), i(2, " , ", {key = "i2"}), i(0, "seperator", {key = "i0"}), t");"
	}),
	s({trig = "shorten", descr = "(shorten)", priority = -1000, trigEngine = te("w")}, {
		t"shorten(", i(0, "array", {key = "i0"}), t");"
	}),
	s({trig = "concat", descr = "(concat)", priority = -1000, trigEngine = te("w")}, {
		t"concat(", i(1, "array1", {key = "i1"}), t", ", i(0, "array2", {key = "i0"}), t");"
	}),
	s({trig = "subset", descr = "(subset)", priority = -1000, trigEngine = te("w")}, {
		t"subset(", i(1, "array", {key = "i1"}), t", ", i(0, "offset", {key = "i0"}), t");"
	}),
	s({trig = "append", descr = "(append)", priority = -1000, trigEngine = te("w")}, {
		t"append(", i(1, "array", {key = "i1"}), t", ", i(0, "element", {key = "i0"}), t");"
	}),
	s({trig = "reverse", descr = "(reverse)", priority = -1000, trigEngine = te("w")}, {
		t"reverse(", i(0, "array", {key = "i0"}), t");"
	}),
	s({trig = "splice", descr = "(splice)", priority = -1000, trigEngine = te("w")}, {
		t"splice(", i(1, "array", {key = "i1"}), t", ", i(2, "value/array2", {key = "i2"}), t", ", i(0, "index", {key = "i0"}), t");"
	}),
	s({trig = "sort", descr = "(sort)", priority = -1000, trigEngine = te("w")}, {
		t"sort(", i(1, "dataArray", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "count", {key = "i0"}), t");"
	}),
	s({trig = "expand", descr = "(expand)", priority = -1000, trigEngine = te("w")}, {
		t"expand(", i(1, "array", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "newSize", {key = "i0"}), t");"
	}),
	s({trig = "arrayCopy", descr = "(arrayCopy)", priority = -1000, trigEngine = te("w")}, {
		t"arrayCopy(", i(1, "src", {key = "i1"}), t", ", i(2, "dest", {key = "i2"}), t", ", i(3, ", ", {key = "i3"}), i(0, "length", {key = "i0"}), t");"
	}),
	s({trig = "str", descr = "(str)", priority = -1000, trigEngine = te("w")}, {
		t"str(\"", i(0, "str", {key = "i0"}), t"\");"
	}),
	s({trig = "match", descr = "(match)", priority = -1000, trigEngine = te("w")}, {
		t"match(", i(1, "str", {key = "i1"}), t", ", i(0, "regexp", {key = "i0"}), t");"
	}),
	s({trig = "trim", descr = "(trim)", priority = -1000, trigEngine = te("w")}, {
		t"trim(", i(0, "str", {key = "i0"}), t");"
	}),
	s({trig = "nf", descr = "(nf)", priority = -1000, trigEngine = te("w")}, {
		t"nf(", i(1, "value", {key = "i2"}), t", ", i(2, "left", {key = "i3"}), i(3, ", ", {key = "i4"}), i(0, "right", {key = "i0"}), t");"
	}),
	s({trig = "nfs", descr = "(nfs)", priority = -1000, trigEngine = te("w")}, {
		t"nfs(", i(1, "value", {key = "i2"}), t", ", i(2, "left", {key = "i3"}), i(3, ", ", {key = "i4"}), i(0, "right", {key = "i0"}), t");"
	}),
	s({trig = "nfp", descr = "(nfp)", priority = -1000, trigEngine = te("w")}, {
		t"nfp(", i(1, "value", {key = "i2"}), t", ", i(2, "left", {key = "i3"}), i(3, ", ", {key = "i4"}), i(0, "right", {key = "i0"}), t");"
	}),
	s({trig = "nfc", descr = "(nfc)", priority = -1000, trigEngine = te("w")}, {
		t"nfc(", i(1, "value", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "right", {key = "i0"}), t");"
	}),
	s({trig = "unbinary", descr = "(unbinary)", priority = -1000, trigEngine = te("w")}, {
		t"unbinary(\"", i(0, "str", {key = "i0"}), t"\"});"
	}),
	s({trig = "hexadecimal", descr = "(hexadecimal)", priority = -1000, trigEngine = te("w")}, {
		t"hex(", i(0, "c", {key = "i0"}), t");"
	}),
	s({trig = "unhex", descr = "(unhex)", priority = -1000, trigEngine = te("w")}, {
		t"unhex(", i(0, "c", {key = "i0"}), t");"
	}),
	s({trig = "binary", descr = "(binary)", priority = -1000, trigEngine = te("w")}, {
		t"binary(", i(1, "value", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "digits", {key = "i0"}), t");"
	}),
	s({trig = "loadImage", descr = "(loadImage)", priority = -1000, trigEngine = te("w")}, {
		t"loadImage(", i(0, "filename", {key = "i0"}), t");"
	}),
	s({trig = "image", descr = "(image)", priority = -1000, trigEngine = te("w")}, {
		t"image(", i(1, "img", {key = "i1"}), t", ", i(2, "x", {key = "i2"}), t", ", i(3, "y", {key = "i3"}), i(4, ", ", {key = "i4"}), i(5, "width", {key = "i5"}), i(6, ", ", {key = "i6"}), i(0, "height", {key = "i0"}), t");"
	}),
	s({trig = "copy", descr = "(copy)", priority = -1000, trigEngine = te("w")}, {
		t"copy(", i(1, "srcImg", {key = "i1"}), i(2, ", ", {key = "i2"}), i(3, "x", {key = "i3"}), t", ", i(4, "y", {key = "i4"}), t", ", i(5, "width", {key = "i5"}), t", ", i(6, "height", {key = "i6"}), t", ", i(7, "dx", {key = "i7"}), t", ", i(8, "dy", {key = "i8"}), t", ", i(9, "dwidth", {key = "i9"}), t", ", i(0, "dheight", {key = "i0"}), t");"
	}),
	s({trig = "bg", descr = "(bg)", priority = -1000, trigEngine = te("w")}, {
		t"background(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(3, "value3", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "alpha", {key = "i0"}), t");"
	}),
	s({trig = "pg", descr = "(pg)", priority = -1000, trigEngine = te("w")}, {
		t"PGraphics pg;", nl(),
		t"pg = createGraphics(", i(1, "width", {key = "i1"}), t", ", i(2, "height", {key = "i2"}), i(3, ", ", {key = "i3"}), i(0, "applet", {key = "i0"}), t");"
	}),
	s({trig = "pimage", descr = "(pimage)", priority = -1000, trigEngine = te("w")}, {
		t"PImage(", i(1, "width", {key = "i1"}), t", ", i(0, "height", {key = "i0"}), t");"
	}),
	s({trig = "fill", descr = "(fill)", priority = -1000, trigEngine = te("w")}, {
		t"fill(", i(1, "value1", {key = "i1"}), t", ", i(2, "value2", {key = "i2"}), t", ", i(3, "value3", {key = "i3"}), i(4, ", ", {key = "i4"}), i(0, "alpha", {key = "i0"}), t");"
	}),
	s({trig = "red", descr = "(red)", priority = -1000, trigEngine = te("w")}, {
		t"red(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "green", descr = "(green)", priority = -1000, trigEngine = te("w")}, {
		t"green(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "blue", descr = "(blue)", priority = -1000, trigEngine = te("w")}, {
		t"blue(", i(0, "color", {key = "i0"}), t");"
	}),
	s({trig = "status", descr = "(status)", priority = -1000, trigEngine = te("w")}, {
		t"status(", i(0, "text", {key = "i0"}), t");"
	}),
	s({trig = "param", descr = "(param)", priority = -1000, trigEngine = te("w")}, {
		t"param(", i(0, "s", {key = "i0"}), t");"
	}),
	s({trig = "link", descr = "(link)", priority = -1000, trigEngine = te("w")}, {
		t"link(", i(1, "url", {key = "i1"}), i(2, ", ", {key = "i2"}), i(0, "target", {key = "i0"}), t");"
	}),
	s({trig = "@", descr = "(@)", priority = -1000, trigEngine = te("w")}, {
		t"@", i(1, "param/return/private/public", {key = "i1"}), t"  ", i(1, "parameter", {key = "i1"}), t"  ", i(0, "description", {key = "i0"})
	}),
})
