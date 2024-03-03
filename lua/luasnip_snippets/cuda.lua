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


ls.add_snippets("cuda", {
	s({trig = "kern", descr = "(kern) \"Kernel definition\"", priority = -1000, trigEngine = te("w")}, {
		t"__global__ void ", i(1, "kernel", {key = "i1"}), t"(", i(2, "void", {key = "i2"}), t") {", nl(),
		t"\t", i(0, "// TODO: Implement", {key = "i0"}), nl(),
		t"}"
	}),
	s({trig = "dev", descr = "(dev) \"Device function definition\"", priority = -1000, trigEngine = te("w")}, {
		t"__device__ ", i(1, "int", {key = "i1"}), t" ", i(2, "foo", {key = "i2"}), t"(", i(3, "void", {key = "i3"}), t") {", nl(),
		t"\t", i(0, "// TODO: Implement", {key = "i0"}), nl(),
		t"\treturn 0;", nl(),
		t"}"
	}),
	s({trig = "call", descr = "(call) \"Kernel call\"", priority = -1000, trigEngine = te("w")}, {
		i(1, "kernel", {key = "i1"}), t"<<<", i(2, "args", {key = "i2"}), t">>>(", i(3, "", {key = "i3"}), t");", i(0, "", {key = "i0"})
	}),
	s({trig = "sync", descr = "(sync) \"Synchonize threads\"", priority = -1000, trigEngine = te("w")}, {
		t"__syncthreads();"
	}),
	s({trig = "tid", descr = "(tid) \"Thread Index\"", priority = -1000, trigEngine = te("w")}, {
		t"threadIdx.", i(0, "", {key = "i0"})
	}),
	s({trig = "bid", descr = "(bid) \"Block Index\"", priority = -1000, trigEngine = te("w")}, {
		t"blockIdx.", i(0, "", {key = "i0"})
	}),
	s({trig = "bdim", descr = "(bdim) \"Block Dimension\"", priority = -1000, trigEngine = te("w")}, {
		t"blockDim.", i(0, "", {key = "i0"})
	}),
	s({trig = "ii", descr = "(ii) \"Get current index (1D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "index", {key = "i1"}), t" = threadIdx.", i(2, "x", {key = "i2"}), t" + blockIdx.", cp(2), t" * blockDim.", cp(2), t";"
	}),
	s({trig = "ix", descr = "(ix) \"Get current X index (1D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "x", {key = "i1"}), t" = threadIdx.x + blockIdx.x * blockDim.x;"
	}),
	s({trig = "iy", descr = "(iy) \"Get current Y index (1D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "y", {key = "i1"}), t" = threadIdx.y + blockIdx.y * blockDim.y;"
	}),
	s({trig = "iz", descr = "(iz) \"Get current Z index (1D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "z", {key = "i1"}), t" = threadIdx.z + blockIdx.z * blockDim.z;"
	}),
	s({trig = "ixy", descr = "(ixy) \"Get current X,Y index (2D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "x", {key = "i1"}), t" = threadIdx.x + blockIdx.x * blockDim.x;", nl(),
		t"int ", i(2, "y", {key = "i2"}), t" = threadIdx.y + blockIdx.y * blockDim.y;"
	}),
	s({trig = "ixz", descr = "(ixz) \"Get current X,Z index (2D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "x", {key = "i1"}), t" = threadIdx.x + blockIdx.x * blockDim.x;", nl(),
		t"int ", i(2, "z", {key = "i3"}), t" = threadIdx.z + blockIdx.z * blockDim.z;"
	}),
	s({trig = "iyz", descr = "(iyz) \"Get current Y,Z index (2D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "y", {key = "i2"}), t" = threadIdx.y + blockIdx.y * blockDim.y;", nl(),
		t"int ", i(2, "z", {key = "i3"}), t" = threadIdx.z + blockIdx.z * blockDim.z;"
	}),
	s({trig = "ixyz", descr = "(ixyz) \"Get current X,Y,Z index (3D)\"", priority = -1000, trigEngine = te("w")}, {
		t"int ", i(1, "x", {key = "i1"}), t" = threadIdx.x + blockIdx.x * blockDim.x;", nl(),
		t"int ", i(2, "y", {key = "i2"}), t" = threadIdx.y + blockIdx.y * blockDim.y;", nl(),
		t"int ", i(3, "z", {key = "i3"}), t" = threadIdx.z + blockIdx.z * blockDim.z;"
	}),
	s({trig = "share", descr = "(share) \"Shared memory declaration\"", priority = -1000, trigEngine = te("w")}, {
		t"__shared__ ", i(1, "int", {key = "i1"}), t" ", i(2, "memo", {key = "i2"}), t"[", i(3, "SIZE", {key = "i3"}), t"];", i(0, "", {key = "i0"})
	}),
})
