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
	0,
	0,
	1,
	1,
	1,
	0,
	1,
	1,
	1,
	1,
	2,
	2,
	2,
	4,
	1,
	0,
	1,
	2,
	1,
	0,
	1,
	0,
	1,
	1,
	1,
	0,
	0,
	0,
	0,
}
ls.add_snippets("fsharp", {
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"/// ", i(0, "", {key = "i0"})
	}),
	s({trig = "comment", descr = "(comment)", priority = -1000, trigEngine = te("w")}, {
		t"// ", i(0, "", {key = "i0"})
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"})
	}),
	s({trig = "lit", descr = "(lit)", priority = -1000, trigEngine = te("w")}, {
		t"[<Literal>]", nl(),
		t"let ", i(1, "", {key = "i1"}), t" = ", i(0, "", {key = "i0"})
	}),
	s({trig = "rec", descr = "(rec)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "", {key = "i1"}), t" = { ", i(0, "", {key = "i0"}), t" }"
	}),
	s({trig = "arec", descr = "(arec)", priority = -1000, trigEngine = te("w")}, {
		t"{| ", i(0, "", {key = "i0"}), t" |}"
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"let ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fnr", descr = "(fnr)", priority = -1000, trigEngine = te("w")}, {
		t"let rec ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "lam", descr = "(lam)", priority = -1000, trigEngine = te("w")}, {
		t"(fun ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "", {key = "i1"}), t" in ", i(2, "", {key = "i2"}), t" do", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"})
	}),
	s({trig = "ife", descr = "(ife)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ifee", descr = "(ifee)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(2, "", {key = "i2"}), nl(),
		t"elif ", i(3, "", {key = "i3"}), t" then", nl(),
		t"\t", i(4, "", {key = "i4"}), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "eif", descr = "(eif)", priority = -1000, trigEngine = te("w")}, {
		t"elif ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "el", descr = "(el)", priority = -1000, trigEngine = te("w")}, {
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", i(1, "", {key = "i1"}), nl(),
		t"with ", i(0, "", {key = "i0"})
	}),
	s({trig = "match", descr = "(match)", priority = -1000, trigEngine = te("w")}, {
		t"match ", i(1, "", {key = "i1"}), t" with", nl(),
		t"| ", i(2, "", {key = "i2"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "|", descr = "(|)", priority = -1000, trigEngine = te("w")}, {
		t"| ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"})
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"printfn \"", i(1, "", {key = "i1"}), t"\" ", i(0, "", {key = "i0"})
	}),
	s({trig = "pri", descr = "(pri)", priority = -1000, trigEngine = te("w")}, {
		t"printfn $\"", i(0, "", {key = "i0"}), t"\""
	}),
	s({trig = "amap", descr = "(amap)", priority = -1000, trigEngine = te("w")}, {
		t"|> Array.map (fun ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "lmap", descr = "(lmap)", priority = -1000, trigEngine = te("w")}, {
		t"|> List.map (fun ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "smap", descr = "(smap)", priority = -1000, trigEngine = te("w")}, {
		t"|> Seq.map (fun ", i(1, "", {key = "i1"}), t" -> ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "atap", descr = "(atap)", priority = -1000, trigEngine = te("w")}, {
		t"|> Array.map (fun x -> printfn \"%A\" x; x) // tap"
	}),
	s({trig = "ltap", descr = "(ltap)", priority = -1000, trigEngine = te("w")}, {
		t"|> List.map (fun x -> printfn \"%A\" x; x) // tap"
	}),
	s({trig = "stap", descr = "(stap)", priority = -1000, trigEngine = te("w")}, {
		t"|> Seq.map (fun x -> printfn \"%A\" x; x) // tap"
	}),
	s({trig = "main", descr = "(main)", priority = -1000, trigEngine = te("w")}, {
		t"[<EntryPoint>]", nl(),
		t"let main argv =", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		t"\t0"
	}),
})
