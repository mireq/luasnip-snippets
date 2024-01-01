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
	{{1, 1}, {2, 2}},
	{{1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}},
	{{0, 0}, {1, 1}},
	{{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}, {7, 7}, {8, 8}, {9, 9}},
}

local python_globals = {
	[[def complete(t, opts):
	if t:
		opts = [ m[len(t):] for m in opts if m.startswith(t) ]
	if len(opts) == 1:
		return opts[0]
	return '(' + '|'.join(opts) + ')']]
}


ls.add_snippets("gitcommit", {
	s({trig = "co", descr = "(co)", priority = -1000, trigEngine = te("w")}, {
		t"Co-authored-by: ", i(1, "", {key = "i1"}), t" <", i(2, "", {key = "i2"}), t">"
	}),
	s({trig = "status", descr = "(status) \"Status\"", snippetType = "autosnippet", priority = 0, trigEngine = te("bA")}, {
		t"status ", i(1, "", {key = "i1"}), f(function(args, snip) return c_py({"gitcommit", 2}, "snip.rv = complete(t[1], [\'build\', \'ci\', \'test\', \'refactor\', \'perf\', \'improvement\', \'docs\', \'chore\', \'feat\', \'fix\'])", python_globals, args, snip, "", am[2]) end, ae(am[2]))
	}),
	s({trig = "fix", descr = "(fix) \"fix conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"fix(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "feat", descr = "(feat) \"feat conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"feat(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "chore", descr = "(chore) \"chore conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"chore(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "docs", descr = "(docs) \"docs conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"docs(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "improvement", descr = "(improvement) \"improvement conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"improvement(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "perf", descr = "(perf) \"perf conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"perf(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "refactor", descr = "(refactor) \"refactor conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"refactor(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "test", descr = "(test) \"test conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"test(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "ci", descr = "(ci) \"ci conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"ci(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "build", descr = "(build) \"build conventional commit\"", priority = 0, trigEngine = te("")}, {
		t"build(", i(1, "scope", {key = "i1"}), t"): ", i(2, "title", {key = "i2"}), nl(),
		nl(),
		d(3, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end)
	}),
	s({trig = "sign", descr = "(sign) \"Signature\"", priority = 0, trigEngine = te("")}, {
		t"-------------------------------------------------------------------------------", nl(),
		i(1, "Company Name", {key = "i1"}), nl(),
		nl(),
		i(2, "Author Name", {key = "i2"}), nl(),
		nl(),
		i(3, "Streetname 21", {key = "i3"}), nl(),
		i(4, "City and Area", {key = "i4"}), nl(),
		nl(),
		i(5, "Tel: \t\t\t\t\t\t+44 (0)987 / 888 8888", {key = "i5"}), nl(),
		i(6, "Fax: \t\t\t\t\t\t+44 (0)987 / 888 8882", {key = "i6"}), nl(),
		i(7, "Mail: \t\t\t\t\tEmail", {key = "i7"}), nl(),
		i(8, "Web: \t\t\t\t\t\thttps://", {key = "i8"}), nl(),
		t"-------------------------------------------------------------------------------", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "t", descr = "(t) \"Todo\"", priority = 0, trigEngine = te("")}, {
		t"TODO: ", i(1, "What is it", {key = "i1"}), t" (", f(function(args, snip) return c_shell("date \"+%b %d %Y %a (%H:%M:%S)\"") end, {}), t", ", f(function(args, snip) return c_shell("echo $USER") end, {}), t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "cmt", descr = "(cmt) \"Commit Structure\"", snippetType = "autosnippet", priority = 0, trigEngine = te("bA")}, {
		i(1, "Summarize changes in around 50 characters or less", {key = "i1"}), nl(),
		nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({"More detailed explanatory text, if necessary. Wrap it to about 72", "\n", "characters or so. In some contexts, the first line is treated as the", "\n", "subject of the commit and the rest of the text as the body. The", "\n", "blank line separating the summary from the body is critical (unless", "\n", "you omit the body entirely); various tools like ", c_shell("log"), ", ", c_shell("shortlog"), "\n", "and ", c_shell("rebase"), " can get confused if you run the two together."}, ""), {key = "i2"}) }) end), nl(),
		nl(),
		i(3, {"Explain the problem that this commit is solving. Focus on why you", "are making this change as opposed to how (the code explains that).", "Are there side effects or other unintuitive consequences of this", "change? Here\'s the place to explain them."}, {key = "i3"}), nl(),
		nl(),
		i(4, {"Further paragraphs come after blank lines.", "", " - Bullet points are okay, too", "", " - Typically a hyphen or asterisk is used for the bullet, preceded", "   by a single space, with blank lines in between, but conventions", "   vary here"}, {key = "i4"}), nl(),
		nl(),
		i(5, "Status", {key = "i5"}), nl(),
		nl(),
		i(6, {"If you use an issue tracker, put references to them at the bottom,", "like this."}, {key = "i6"}), nl(),
		nl(),
		i(7, "Any todos", {key = "i7"}), nl(),
		nl(),
		i(8, {"Resolves: #123", "See also: #456, #789"}, {key = "i8"}), nl(),
		nl(),
		i(9, "Signature", {key = "i9"})
	}),
})
