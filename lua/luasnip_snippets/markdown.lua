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


local python_globals = {
	[[# A overkill(dirty) table with automatic alignment feature
def create_table(snip):
	# retrieving single line from current string and treat it like tabstops count
	placeholders_string = snip.buffer[snip.line].strip()
	rows_amount = int(placeholders_string[0])
	columns_amount = int(placeholders_string[1])

	prefix_str = "from vimsnippets import display_width;"

	# erase current line
	snip.buffer[snip.line] = ""

	# create anonymous snippet with expected content and number of tabstops
	anon_snippet_title = "| "
	anon_snippet_delimiter = "|"
	for col in range(1, columns_amount+1):
		sync_rows = [x*columns_amount+col for x in range(rows_amount+1)]
		sync_str = ",".join(["t[{0}]".format(x) for x in sync_rows])
		max_width_str = "max(list(map(display_width, [" + sync_str + "])))"
		cur_width_str = "display_width(t[" + str(col) + "])"
		rv_val = "(" + max_width_str + "-" + cur_width_str + ")*' '"
		anon_snippet_title += "${" + str(col)  + ":head" + str(col)\
			+ "}`!p " + prefix_str + "snip.rv=" + rv_val + "` | "
		anon_snippet_delimiter += ":`!p " + prefix_str + "snip.rv = "\
			+ max_width_str + "*'-'" + "`-|"

	anon_snippet_title += "\n"

	anon_snippet_delimiter += "\n"
	anon_snippet_body = ""
	for row in range(1, rows_amount+1):
		body_row = "| "
		for col in range(1, columns_amount+1):
			sync_rows = [x*columns_amount+col for x in range(rows_amount+1)]
			sync_str = ",".join(["t[{0}]".format(x) for x in sync_rows])
			max_width_str = "max(list(map(display_width, [" + sync_str + "])))"
			cur_width_str = "display_width(t[" + str(row*columns_amount+col) + "])"
			rv_val = "(" + max_width_str + "-" + cur_width_str + ")*' '"
			placeholder = "R{0}C{1}".format(row, col)
			body_row += "${" + str(row*columns_amount+col)  + ":" + placeholder\
				+ "}`!p " + prefix_str + "snip.rv=" + rv_val + "` | "

		body_row += "\n"
		anon_snippet_body += body_row

	anon_snippet_table = anon_snippet_title + anon_snippet_delimiter + anon_snippet_body

	# expand anonymous snippet
	snip.expand_anon(anon_snippet_table)]]
}


ls.add_snippets("markdown", {
	s({trig = "[", descr = "([)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "text", {key = "i1"}), t"](", i(2, "address", {key = "i2"}), t")"
	}),
	s({trig = "[*", descr = "([*)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "link", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t")"
	}),
	s({trig = "[c", descr = "([c)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "link", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t")"
	}),
	s({trig = "[\"", descr = "([\")", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "text", {key = "i1"}), t"](https://", i(2, "address", {key = "i2"}), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "[\"*", descr = "([\"*)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "link", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "[\"c", descr = "([\"c)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "link", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "[:", descr = "([:)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: https://", i(2, "url", {key = "i2"})
	}),
	s({trig = "[:*", descr = "([:*)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end)
	}),
	s({trig = "[:c", descr = "([:c)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end)
	}),
	s({trig = "[:\"", descr = "([:\")", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: https://", i(2, "url", {key = "i2"}), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "[:\"*", descr = "([:\"*)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "[:\"c", descr = "([:\"c)", priority = -1000, trigEngine = te("w")}, {
		t"[", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "![", descr = "(![)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alttext", {key = "i1"}), t"](", i(2, "/images/image.jpg", {key = "i2"}), t")"
	}),
	s({trig = "![*", descr = "(![*)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alt", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t")"
	}),
	s({trig = "![c", descr = "(![c)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alt", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t")"
	}),
	s({trig = "![\"", descr = "(![\")", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alttext", {key = "i1"}), t"](", i(2, "/images/image.jpg", {key = "i2"}), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "![\"*", descr = "(![\"*)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alt", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "![\"c", descr = "(![\"c)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "alt", {key = "i1"}), t"](", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\")"
	}),
	s({trig = "![:", descr = "(![:)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "id", {key = "i1"}), t"]: ", i(2, "url", {key = "i2"})
	}),
	s({trig = "![:*", descr = "(![:*)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end)
	}),
	s({trig = "![:\"", descr = "(![:\")", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "id", {key = "i1"}), t"]: ", i(2, "url", {key = "i2"}), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "![:\"*", descr = "(![:\"*)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@*")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "![:\"c", descr = "(![:\"c)", priority = -1000, trigEngine = te("w")}, {
		t"![", i(1, "id", {key = "i1"}), t"]: ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_viml("@+")}, ""), {key = "i2"}) }) end), t" \"", i(3, "title", {key = "i3"}), t"\""
	}),
	s({trig = "<", descr = "(<)", priority = -1000, trigEngine = te("w")}, {
		t"<http://", i(1, "url", {key = "i1"}), t">"
	}),
	s({trig = "<*", descr = "(<*)", priority = -1000, trigEngine = te("w")}, {
		t"<", f(function(args, snip) return c_viml("@*") end), t">"
	}),
	s({trig = "<c", descr = "(<c)", priority = -1000, trigEngine = te("w")}, {
		t"<", f(function(args, snip) return c_viml("@+") end), t">"
	}),
	s({trig = "**", descr = "(**) \"bold\"", priority = -50, trigEngine = te("")}, {
		t"**", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"**", i(0, "", {key = "i0"})
	}),
	s({trig = "__", descr = "(__) Bold", priority = -1000, trigEngine = te("w")}, {
		t"__", i(0, "", {key = "i0"}), t"__"
	}),
	s({trig = "---", descr = "(---) Front matter", priority = -1000, trigEngine = te("w")}, {
		t"---", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"---"
	}),
	s({trig = "====", descr = "(====)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("repeat(\'=\', strlen(getline(line(\'.\') - 3)))") end), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "-", descr = "(-)", priority = -1000, trigEngine = te("w")}, {
		t"-   ", i(0, "", {key = "i0"})
	}),
	s({trig = "----", descr = "(----)", priority = -1000, trigEngine = te("w")}, {
		f(function(args, snip) return c_viml("repeat(\'-\', strlen(getline(line(\'.\') - 3)))") end), nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "blockquote", descr = "(blockquote)", priority = -1000, trigEngine = te("w")}, {
		t"{% blockquote %}", nl(),
		i(0, "quote", {key = "i0"}), nl(),
		t"{% endblockquote %}"
	}),
	s({trig = "blockquote-author", descr = "(blockquote-author)", priority = -1000, trigEngine = te("w")}, {
		t"{% blockquote ", i(1, "author", {key = "i1"}), t", ", i(2, "title", {key = "i2"}), t" %}", nl(),
		i(0, "quote", {key = "i0"}), nl(),
		t"{% endblockquote %}"
	}),
	s({trig = "blockquote-link", descr = "(blockquote-link)", priority = -1000, trigEngine = te("w")}, {
		t"{% blockquote ", i(1, "author", {key = "i1"}), t" ", i(2, "URL", {key = "i2"}), t" ", i(3, "link_text", {key = "i3"}), t" %}", nl(),
		i(0, "quote", {key = "i0"}), nl(),
		t"{% endblockquote %}"
	}),
	s({trig = "```", descr = "(```)", priority = -1000, trigEngine = te("w")}, {
		t"```", i(1, "", {key = "i1"}), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i0"}) }) end), nl(),
		t"```"
	}),
	s({trig = "```l", descr = "(```l)", priority = -1000, trigEngine = te("w")}, {
		t"```", i(1, "language", {key = "i1"}), nl(),
		i(2, "code", {key = "i2"}), nl(),
		t"```"
	}),
	s({trig = "codeblock-short", descr = "(codeblock-short)", priority = -1000, trigEngine = te("w")}, {
		t"{% codeblock %}", nl(),
		i(0, "code_snippet", {key = "i0"}), nl(),
		t"{% endcodeblock %}"
	}),
	s({trig = "codeblock-full", descr = "(codeblock-full)", priority = -1000, trigEngine = te("w")}, {
		t"{% codeblock ", i(1, "title", {key = "i1"}), t" lang:", i(2, "language", {key = "i2"}), t" ", i(3, "URL", {key = "i3"}), t" ", i(4, "link_text", {key = "i4"}), t" %}", nl(),
		i(0, "code_snippet", {key = "i0"}), nl(),
		t"{% endcodeblock %}"
	}),
	s({trig = "gist-full", descr = "(gist-full)", priority = -1000, trigEngine = te("w")}, {
		t"{% gist ", i(1, "gist_id", {key = "i1"}), t" ", i(0, "filename", {key = "i0"}), t" %}"
	}),
	s({trig = "gist-short", descr = "(gist-short)", priority = -1000, trigEngine = te("w")}, {
		t"{% gist ", i(0, "gist_id", {key = "i0"}), t" %}"
	}),
	s({trig = "img", descr = "(img) \"Image\"", priority = -50, trigEngine = te("")}, {
		t"![", i(1, "pic alt", {key = "i1"}), t"](", i(2, "path", {key = "i2"}), tr(3, ".+", " \""), i(3, "opt title", {key = "i3"}), tr(3, ".+", "\""), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "youtube", descr = "(youtube)", priority = -1000, trigEngine = te("w")}, {
		t"{% youtube ", i(0, "video_id", {key = "i0"}), t" %}"
	}),
	s({trig = "tb", descr = "(tb)", priority = -1000, trigEngine = te("w")}, {
		t"|  ", i(0, "factors", {key = "i0"}), t"      |    ", i(1, "a", {key = "i1"}), t"       |  ", i(2, "b", {key = "i2"}), t"   \t|", nl(),
		t"| ------------- |-------------  | ------- |", nl(),
		t"|    ", i(3, "f1", {key = "i3"}), t"    |    Y          | N       |", nl(),
		t"|    ", i(4, "f2", {key = "i4"}), t"    |    Y          | N       |"
	}),
	s({trig = "pullquote", descr = "(pullquote)", priority = -1000, trigEngine = te("w")}, {
		t"{% pullquote %}", nl(),
		i(1, "text", {key = "i1"}), t" {\" ", i(2, "quote", {key = "i2"}), t" \"} ", i(0, "text", {key = "i0"}), nl(),
		t"{% endpullquote %}"
	}),
	s({trig = ":", descr = "(:) Definition list", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), nl(),
		t": ", i(0, "", {key = "i0"})
	}),
	s({trig = "::", descr = "(::) Alternate definition list", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), nl(),
		t"  - ", i(0, "", {key = "i0"})
	}),
	s({trig = "sec", descr = "(sec) \"Section\"", priority = -50, trigEngine = te("b")}, {
		t"# ", i(1, "Section Name", {key = "i1"}), t" #", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ssec", descr = "(ssec) \"Sub Section\"", priority = -50, trigEngine = te("b")}, {
		t"## ", i(1, "Section Name", {key = "i1"}), t" ##", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "sssec", descr = "(sssec) \"SubSub Section\"", priority = -50, trigEngine = te("b")}, {
		t"### ", i(1, "Section Name", {key = "i1"}), t" ###", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "par", descr = "(par) \"Paragraph\"", priority = -50, trigEngine = te("b")}, {
		t"#### ", i(1, "Paragraph Name", {key = "i1"}), t" ####", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "spar", descr = "(spar) \"Paragraph\"", priority = -50, trigEngine = te("b")}, {
		t"##### ", i(1, "Paragraph Name", {key = "i1"}), t" #####", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "*", descr = "(*) \"italics\"", priority = -50, trigEngine = te("")}, {
		t"*", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"*", i(0, "", {key = "i0"})
	}),
	s({trig = "***", descr = "(***) \"bold italics\"", priority = -50, trigEngine = te("")}, {
		t"***", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"***", i(0, "", {key = "i0"})
	}),
	s({trig = "/*", descr = "(/*) \"Comment\"", priority = -50, trigEngine = te("")}, {
		t"<!-- ", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t" -->", i(0, "", {key = "i0"})
	}),
	s({trig = "link", descr = "(link) \"Link to something\"", priority = -50, trigEngine = te("")}, {
		t"[", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"](", c(2, {{t"https://", i(1, "www.url.com", {key = "i2"})}, {i(1, jt({"https://", "www.url.com"}))}}, {key = "i3"}), t")", i(0, "", {key = "i0"})
	}),
	s({trig = "ilc", descr = "(ilc) \"Inline Code\"", priority = -50, trigEngine = te("i")}, {
		t"`", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"`", i(0, "", {key = "i0"})
	}),
	s({trig = "cbl", descr = "(cbl) \"Codeblock\"", priority = -50, trigEngine = te("b")}, {
		t"```", i(1, "", {key = "i1"}), nl(),
		d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i2"}) }) end), nl(),
		t"```", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "refl", descr = "(refl) \"Reference Link\"", priority = -50, trigEngine = te("")}, {
		t"[", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"][", i(2, "id", {key = "i2"}), t"]", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"[", cp(2), t"]:", c(3, {{t"https://", i(1, "www.url.com", {key = "i3"})}, {i(1, jt({"https://", "www.url.com"}))}}, {key = "i4"}), t" \"", d(4, function(args, snip) return sn(nil, { i(1, jt({args[1]}, ""), {key = "i5"}) }) end, {k"i4"}), t"\""
	}),
	s({trig = "fnt", descr = "(fnt) \"Footnote\"", priority = -50, trigEngine = te("")}, {
		t"[^", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, ""), {key = "i1"}) }) end), t"]", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"[^", cp(1), t"]:", i(2, "Text", {key = "i2"})
	}),
	s({trig = "detail", descr = "(detail) \"Disclosure\"", priority = -50, trigEngine = te("")}, {
		t"<details", i(2, " open=\"\"", {key = "i3"}), t">", nl(),
		t"  ", c(1, {{t"<summary>", i(1, "", {key = "i2"}), t"</summary>"}, {i(1, jt({"<summary>", "", "</summary>"}))}}, {key = "i1"}), i(0, "", {key = "i0"}), nl(),
		t"</details>"
	}),
	s({trig = "tb([1-9][1-9])", descr = "(tb([1-9][1-9])) \"Fancy table\"", priority = -50, trigEngine = te("br"), regTrig = true}, {
		f(function(args, snip) return c_py({"markdown", 62}, "snip.rv = match.group(1)", python_globals, args, snip, "", {}) end)
	}),
})
