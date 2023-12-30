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
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	6,
	0,
	0,
	3,
	0,
	6,
	0,
	0,
	3,
	0,
	0,
	0,
	0,
	1,
	0,
	1,
	4,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	2,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	6,
	0,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	3,
	2,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	3,
	2,
	1,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2,
	0,
	0,
	0,
	0,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
}
ls.add_snippets("stylus", {
	s({trig = "!", descr = "(!)", priority = -1000, trigEngine = te("w")}, {
		t"!important"
	}),
	s({trig = "ac", descr = "(ac)", priority = -1000, trigEngine = te("w")}, {
		t"align-content ", i(0, "", {key = "i0"})
	}),
	s({trig = "ac:s", descr = "(ac:s)", priority = -1000, trigEngine = te("w")}, {
		t"align-content start"
	}),
	s({trig = "ac:e", descr = "(ac:e)", priority = -1000, trigEngine = te("w")}, {
		t"align-content end"
	}),
	s({trig = "ac:c", descr = "(ac:c)", priority = -1000, trigEngine = te("w")}, {
		t"align-content center"
	}),
	s({trig = "ac:fs", descr = "(ac:fs)", priority = -1000, trigEngine = te("w")}, {
		t"align-content flex-start"
	}),
	s({trig = "ac:fe", descr = "(ac:fe)", priority = -1000, trigEngine = te("w")}, {
		t"align-content flex-end"
	}),
	s({trig = "ac:sb", descr = "(ac:sb)", priority = -1000, trigEngine = te("w")}, {
		t"align-content space-between"
	}),
	s({trig = "ac:sa", descr = "(ac:sa)", priority = -1000, trigEngine = te("w")}, {
		t"align-content space-around"
	}),
	s({trig = "ac:se", descr = "(ac:se)", priority = -1000, trigEngine = te("w")}, {
		t"align-content space-evenly"
	}),
	s({trig = "ac:st", descr = "(ac:st)", priority = -1000, trigEngine = te("w")}, {
		t"align-content stretch"
	}),
	s({trig = "ac:b", descr = "(ac:b)", priority = -1000, trigEngine = te("w")}, {
		t"align-content baseline"
	}),
	s({trig = "ac:fb", descr = "(ac:fb)", priority = -1000, trigEngine = te("w")}, {
		t"align-content first baseline"
	}),
	s({trig = "ac:lb", descr = "(ac:lb)", priority = -1000, trigEngine = te("w")}, {
		t"align-content last baseline"
	}),
	s({trig = "ai", descr = "(ai)", priority = -1000, trigEngine = te("w")}, {
		t"align-items ", i(0, "", {key = "i0"})
	}),
	s({trig = "ai:s", descr = "(ai:s)", priority = -1000, trigEngine = te("w")}, {
		t"align-items start"
	}),
	s({trig = "ai:e", descr = "(ai:e)", priority = -1000, trigEngine = te("w")}, {
		t"align-items end"
	}),
	s({trig = "ai:c", descr = "(ai:c)", priority = -1000, trigEngine = te("w")}, {
		t"align-items center"
	}),
	s({trig = "ai:fs", descr = "(ai:fs)", priority = -1000, trigEngine = te("w")}, {
		t"align-items flex-start"
	}),
	s({trig = "ai:fe", descr = "(ai:fe)", priority = -1000, trigEngine = te("w")}, {
		t"align-items flex-end"
	}),
	s({trig = "ai:st", descr = "(ai:st)", priority = -1000, trigEngine = te("w")}, {
		t"align-items stretch"
	}),
	s({trig = "ai:b", descr = "(ai:b)", priority = -1000, trigEngine = te("w")}, {
		t"align-items baseline"
	}),
	s({trig = "ai:fb", descr = "(ai:fb)", priority = -1000, trigEngine = te("w")}, {
		t"align-items first baseline"
	}),
	s({trig = "ai:lb", descr = "(ai:lb)", priority = -1000, trigEngine = te("w")}, {
		t"align-items last baseline"
	}),
	s({trig = "as", descr = "(as)", priority = -1000, trigEngine = te("w")}, {
		t"align-self ", i(0, "", {key = "i0"})
	}),
	s({trig = "as:s", descr = "(as:s)", priority = -1000, trigEngine = te("w")}, {
		t"align-self start"
	}),
	s({trig = "as:e", descr = "(as:e)", priority = -1000, trigEngine = te("w")}, {
		t"align-self end"
	}),
	s({trig = "as:c", descr = "(as:c)", priority = -1000, trigEngine = te("w")}, {
		t"align-self center"
	}),
	s({trig = "as:st", descr = "(as:st)", priority = -1000, trigEngine = te("w")}, {
		t"align-self stretch"
	}),
	s({trig = "as:fs", descr = "(as:fs)", priority = -1000, trigEngine = te("w")}, {
		t"align-self flex-start"
	}),
	s({trig = "as:fe", descr = "(as:fe)", priority = -1000, trigEngine = te("w")}, {
		t"align-self flex-end"
	}),
	s({trig = "as:b", descr = "(as:b)", priority = -1000, trigEngine = te("w")}, {
		t"align-self baseline"
	}),
	s({trig = "as:fb", descr = "(as:fb)", priority = -1000, trigEngine = te("w")}, {
		t"align-self first baseline"
	}),
	s({trig = "as:lb", descr = "(as:lb)", priority = -1000, trigEngine = te("w")}, {
		t"align-self last baseline"
	}),
	s({trig = "bdi:m+", descr = "(bdi:m+)", priority = -1000, trigEngine = te("w")}, {
		t"-moz-border-image url(", i(1, "", {key = "i1"}), t") ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(4, "0", {key = "i4"}), t" ", i(5, "0", {key = "i5"}), t" ", i(6, "stretch", {key = "i6"}), t" ", i(0, "stretch", {key = "i0"})
	}),
	s({trig = "bdi:m", descr = "(bdi:m)", priority = -1000, trigEngine = te("w")}, {
		t"-moz-border-image ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdrz:m", descr = "(bdrz:m)", priority = -1000, trigEngine = te("w")}, {
		t"-moz-border-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh:m+", descr = "(bxsh:m+)", priority = -1000, trigEngine = te("w")}, {
		t"-moz-box-shadow ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh:m", descr = "(bxsh:m)", priority = -1000, trigEngine = te("w")}, {
		t"-moz-box-shadow ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdi:w+", descr = "(bdi:w+)", priority = -1000, trigEngine = te("w")}, {
		t"-webkit-border-image url(", i(1, "", {key = "i1"}), t") ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(4, "0", {key = "i4"}), t" ", i(5, "0", {key = "i5"}), t" ", i(6, "stretch", {key = "i6"}), t" ", i(0, "stretch", {key = "i0"})
	}),
	s({trig = "bdi:w", descr = "(bdi:w)", priority = -1000, trigEngine = te("w")}, {
		t"-webkit-border-image ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdrz:w", descr = "(bdrz:w)", priority = -1000, trigEngine = te("w")}, {
		t"-webkit-border-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh:w+", descr = "(bxsh:w+)", priority = -1000, trigEngine = te("w")}, {
		t"-webkit-box-shadow ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh:w", descr = "(bxsh:w)", priority = -1000, trigEngine = te("w")}, {
		t"-webkit-box-shadow ", i(0, "", {key = "i0"})
	}),
	s({trig = "@f", descr = "(@f)", priority = -1000, trigEngine = te("w")}, {
		t"@font-face ", i(0, "", {key = "i0"})
	}),
	s({trig = "@i", descr = "(@i)", priority = -1000, trigEngine = te("w")}, {
		t"@import \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "@r", descr = "(@r)", priority = -1000, trigEngine = te("w")}, {
		t"@require \'", i(0, "", {key = "i0"}), t"\'"
	}),
	s({trig = "@m", descr = "(@m)", priority = -1000, trigEngine = te("w")}, {
		t"@media ", i(1, "screen", {key = "i1"})
	}),
	s({trig = "@msmw", descr = "(@msmw)", priority = -1000, trigEngine = te("w")}, {
		t"@media screen and (min-width: ", i(0, "", {key = "i0"}), t"px)"
	}),
	s({trig = "@ext", descr = "(@ext)", priority = -1000, trigEngine = te("w")}, {
		t"@extend .", i(1, "", {key = "i1"}), nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "bg+", descr = "(bg+)", priority = -1000, trigEngine = te("w")}, {
		t"background ", i(1, "", {key = "i1"}), t" url(", i(2, "", {key = "i2"}), t") ", i(3, "0", {key = "i3"}), t" ", i(4, "0", {key = "i4"}), t" ", i(0, "no-repeat", {key = "i0"})
	}),
	s({trig = "bga", descr = "(bga)", priority = -1000, trigEngine = te("w")}, {
		t"background-attachment ", i(0, "", {key = "i0"})
	}),
	s({trig = "bga:f", descr = "(bga:f)", priority = -1000, trigEngine = te("w")}, {
		t"background-attachment fixed"
	}),
	s({trig = "bga:s", descr = "(bga:s)", priority = -1000, trigEngine = te("w")}, {
		t"background-attachment scroll"
	}),
	s({trig = "bgbk", descr = "(bgbk)", priority = -1000, trigEngine = te("w")}, {
		t"background-break ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgbk:bb", descr = "(bgbk:bb)", priority = -1000, trigEngine = te("w")}, {
		t"background-break bounding-box"
	}),
	s({trig = "bgbk:c", descr = "(bgbk:c)", priority = -1000, trigEngine = te("w")}, {
		t"background-break continuous"
	}),
	s({trig = "bgbk:eb", descr = "(bgbk:eb)", priority = -1000, trigEngine = te("w")}, {
		t"background-break each-box"
	}),
	s({trig = "bgcp", descr = "(bgcp)", priority = -1000, trigEngine = te("w")}, {
		t"background-clip ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgcp:bb", descr = "(bgcp:bb)", priority = -1000, trigEngine = te("w")}, {
		t"background-clip border-box"
	}),
	s({trig = "bgcp:cb", descr = "(bgcp:cb)", priority = -1000, trigEngine = te("w")}, {
		t"background-clip content-box"
	}),
	s({trig = "bgcp:nc", descr = "(bgcp:nc)", priority = -1000, trigEngine = te("w")}, {
		t"background-clip no-clip"
	}),
	s({trig = "bgcp:pb", descr = "(bgcp:pb)", priority = -1000, trigEngine = te("w")}, {
		t"background-clip padding-box"
	}),
	s({trig = "bgc", descr = "(bgc)", priority = -1000, trigEngine = te("w")}, {
		t"background-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgc:t", descr = "(bgc:t)", priority = -1000, trigEngine = te("w")}, {
		t"background-color transparent"
	}),
	s({trig = "bgi", descr = "(bgi)", priority = -1000, trigEngine = te("w")}, {
		t"background-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bgi:n", descr = "(bgi:n)", priority = -1000, trigEngine = te("w")}, {
		t"background-image none"
	}),
	s({trig = "bgo", descr = "(bgo)", priority = -1000, trigEngine = te("w")}, {
		t"background-origin ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgo:bb", descr = "(bgo:bb)", priority = -1000, trigEngine = te("w")}, {
		t"background-origin border-box"
	}),
	s({trig = "bgo:cb", descr = "(bgo:cb)", priority = -1000, trigEngine = te("w")}, {
		t"background-origin content-box"
	}),
	s({trig = "bgo:pb", descr = "(bgo:pb)", priority = -1000, trigEngine = te("w")}, {
		t"background-origin padding-box"
	}),
	s({trig = "bgpx", descr = "(bgpx)", priority = -1000, trigEngine = te("w")}, {
		t"background-position-x ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgpy", descr = "(bgpy)", priority = -1000, trigEngine = te("w")}, {
		t"background-position-y ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgp", descr = "(bgp)", priority = -1000, trigEngine = te("w")}, {
		t"background-position ", i(1, "0", {key = "i1"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "bgr", descr = "(bgr)", priority = -1000, trigEngine = te("w")}, {
		t"background-repeat ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgr:n", descr = "(bgr:n)", priority = -1000, trigEngine = te("w")}, {
		t"background-repeat no-repeat"
	}),
	s({trig = "bgr:x", descr = "(bgr:x)", priority = -1000, trigEngine = te("w")}, {
		t"background-repeat repeat-x"
	}),
	s({trig = "bgr:y", descr = "(bgr:y)", priority = -1000, trigEngine = te("w")}, {
		t"background-repeat repeat-y"
	}),
	s({trig = "bgr:r", descr = "(bgr:r)", priority = -1000, trigEngine = te("w")}, {
		t"background-repeat repeat"
	}),
	s({trig = "bgz", descr = "(bgz)", priority = -1000, trigEngine = te("w")}, {
		t"background-size ", i(0, "", {key = "i0"})
	}),
	s({trig = "bgz:a", descr = "(bgz:a)", priority = -1000, trigEngine = te("w")}, {
		t"background-size auto"
	}),
	s({trig = "bgz:ct", descr = "(bgz:ct)", priority = -1000, trigEngine = te("w")}, {
		t"background-size contain"
	}),
	s({trig = "bgz:cv", descr = "(bgz:cv)", priority = -1000, trigEngine = te("w")}, {
		t"background-size cover"
	}),
	s({trig = "bg", descr = "(bg)", priority = -1000, trigEngine = te("w")}, {
		t"background ", i(0, "", {key = "i0"})
	}),
	s({trig = "bg:ie", descr = "(bg:ie)", priority = -1000, trigEngine = te("w")}, {
		t"filter progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'", i(1, "", {key = "i1"}), t"\',sizingMethod=\'", i(0, "crop", {key = "i0"}), t"\')"
	}),
	s({trig = "bg:n", descr = "(bg:n)", priority = -1000, trigEngine = te("w")}, {
		t"background none"
	}),
	s({trig = "bd+", descr = "(bd+)", priority = -1000, trigEngine = te("w")}, {
		t"border ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdb+", descr = "(bdb+)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbc", descr = "(bdbc)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbi", descr = "(bdbi)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdbi:n", descr = "(bdbi:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-image none"
	}),
	s({trig = "bdbli", descr = "(bdbli)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-left-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdbli:c", descr = "(bdbli:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-left-image continue"
	}),
	s({trig = "bdbli:n", descr = "(bdbli:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-left-image none"
	}),
	s({trig = "bdblrz", descr = "(bdblrz)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-left-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbri", descr = "(bdbri)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-right-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdbri:c", descr = "(bdbri:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-right-image continue"
	}),
	s({trig = "bdbri:n", descr = "(bdbri:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-right-image none"
	}),
	s({trig = "bdbrrz", descr = "(bdbrrz)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-right-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbs", descr = "(bdbs)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbs:n", descr = "(bdbs:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-style none"
	}),
	s({trig = "bdbw", descr = "(bdbw)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdb", descr = "(bdb)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdb:n", descr = "(bdb:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-bottom none"
	}),
	s({trig = "bdbk", descr = "(bdbk)", priority = -1000, trigEngine = te("w")}, {
		t"border-break ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdbk:c", descr = "(bdbk:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-break close"
	}),
	s({trig = "bdcl", descr = "(bdcl)", priority = -1000, trigEngine = te("w")}, {
		t"border-collapse ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdcl:c", descr = "(bdcl:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-collapse collapse"
	}),
	s({trig = "bdcl:s", descr = "(bdcl:s)", priority = -1000, trigEngine = te("w")}, {
		t"border-collapse separate"
	}),
	s({trig = "bdc", descr = "(bdc)", priority = -1000, trigEngine = te("w")}, {
		t"border-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdci", descr = "(bdci)", priority = -1000, trigEngine = te("w")}, {
		t"border-corner-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdci:c", descr = "(bdci:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-corner-image continue"
	}),
	s({trig = "bdci:n", descr = "(bdci:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-corner-image none"
	}),
	s({trig = "bdf", descr = "(bdf)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdf:c", descr = "(bdf:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit clip"
	}),
	s({trig = "bdf:of", descr = "(bdf:of)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit overwrite"
	}),
	s({trig = "bdf:ow", descr = "(bdf:ow)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit overwrite"
	}),
	s({trig = "bdf:r", descr = "(bdf:r)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit repeat"
	}),
	s({trig = "bdf:sc", descr = "(bdf:sc)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit scale"
	}),
	s({trig = "bdf:sp", descr = "(bdf:sp)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit space"
	}),
	s({trig = "bdf:st", descr = "(bdf:st)", priority = -1000, trigEngine = te("w")}, {
		t"border-fit stretch"
	}),
	s({trig = "bdi", descr = "(bdi)", priority = -1000, trigEngine = te("w")}, {
		t"border-image url(", i(1, "", {key = "i1"}), t") ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(4, "0", {key = "i4"}), t" ", i(5, "0", {key = "i5"}), t" ", i(6, "stretch", {key = "i6"}), t" ", i(0, "stretch", {key = "i0"})
	}),
	s({trig = "bdi:n", descr = "(bdi:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-image none"
	}),
	s({trig = "bdl+", descr = "(bdl+)", priority = -1000, trigEngine = te("w")}, {
		t"border-left ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdlc", descr = "(bdlc)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdli", descr = "(bdli)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdli:n", descr = "(bdli:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-image none"
	}),
	s({trig = "bdls", descr = "(bdls)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdls:n", descr = "(bdls:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-style none"
	}),
	s({trig = "bdlw", descr = "(bdlw)", priority = -1000, trigEngine = te("w")}, {
		t"border-left-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdl", descr = "(bdl)", priority = -1000, trigEngine = te("w")}, {
		t"border-left ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdl:n", descr = "(bdl:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-left none"
	}),
	s({trig = "bdlt", descr = "(bdlt)", priority = -1000, trigEngine = te("w")}, {
		t"border-length ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdlt:a", descr = "(bdlt:a)", priority = -1000, trigEngine = te("w")}, {
		t"border-length auto"
	}),
	s({trig = "bdrz", descr = "(bdrz)", priority = -1000, trigEngine = te("w")}, {
		t"border-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdr+", descr = "(bdr+)", priority = -1000, trigEngine = te("w")}, {
		t"border-right ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdrc", descr = "(bdrc)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdri", descr = "(bdri)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdri:n", descr = "(bdri:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-image none"
	}),
	s({trig = "bdrs", descr = "(bdrs)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdrs:n", descr = "(bdrs:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-style none"
	}),
	s({trig = "bdrw", descr = "(bdrw)", priority = -1000, trigEngine = te("w")}, {
		t"border-right-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdr", descr = "(bdr)", priority = -1000, trigEngine = te("w")}, {
		t"border-right ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdr:n", descr = "(bdr:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-right none"
	}),
	s({trig = "bdsp", descr = "(bdsp)", priority = -1000, trigEngine = te("w")}, {
		t"border-spacing ", i(0, "", {key = "i0"})
	}),
	s({trig = "bds", descr = "(bds)", priority = -1000, trigEngine = te("w")}, {
		t"border-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "bds:ds", descr = "(bds:ds)", priority = -1000, trigEngine = te("w")}, {
		t"border-style dashed"
	}),
	s({trig = "bds:dtds", descr = "(bds:dtds)", priority = -1000, trigEngine = te("w")}, {
		t"border-style dot-dash"
	}),
	s({trig = "bds:dtdtds", descr = "(bds:dtdtds)", priority = -1000, trigEngine = te("w")}, {
		t"border-style dot-dot-dash"
	}),
	s({trig = "bds:dt", descr = "(bds:dt)", priority = -1000, trigEngine = te("w")}, {
		t"border-style dotted"
	}),
	s({trig = "bds:db", descr = "(bds:db)", priority = -1000, trigEngine = te("w")}, {
		t"border-style double"
	}),
	s({trig = "bds:g", descr = "(bds:g)", priority = -1000, trigEngine = te("w")}, {
		t"border-style groove"
	}),
	s({trig = "bds:h", descr = "(bds:h)", priority = -1000, trigEngine = te("w")}, {
		t"border-style hidden"
	}),
	s({trig = "bds:i", descr = "(bds:i)", priority = -1000, trigEngine = te("w")}, {
		t"border-style inset"
	}),
	s({trig = "bds:n", descr = "(bds:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-style none"
	}),
	s({trig = "bds:o", descr = "(bds:o)", priority = -1000, trigEngine = te("w")}, {
		t"border-style outset"
	}),
	s({trig = "bds:r", descr = "(bds:r)", priority = -1000, trigEngine = te("w")}, {
		t"border-style ridge"
	}),
	s({trig = "bds:s", descr = "(bds:s)", priority = -1000, trigEngine = te("w")}, {
		t"border-style solid"
	}),
	s({trig = "bds:w", descr = "(bds:w)", priority = -1000, trigEngine = te("w")}, {
		t"border-style wave"
	}),
	s({trig = "bdt+", descr = "(bdt+)", priority = -1000, trigEngine = te("w")}, {
		t"border-top ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdtc", descr = "(bdtc)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdti", descr = "(bdti)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdti:n", descr = "(bdti:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-image none"
	}),
	s({trig = "bdtli", descr = "(bdtli)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-left-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdtli:c", descr = "(bdtli:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-corner-image continue"
	}),
	s({trig = "bdtli:n", descr = "(bdtli:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-corner-image none"
	}),
	s({trig = "bdtlrz", descr = "(bdtlrz)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-left-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdtri", descr = "(bdtri)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-right-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "bdtri:c", descr = "(bdtri:c)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-right-image continue"
	}),
	s({trig = "bdtri:n", descr = "(bdtri:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-right-image none"
	}),
	s({trig = "bdtrrz", descr = "(bdtrrz)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-right-radius ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdts", descr = "(bdts)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdts:n", descr = "(bdts:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-style none"
	}),
	s({trig = "bdtw", descr = "(bdtw)", priority = -1000, trigEngine = te("w")}, {
		t"border-top-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdt", descr = "(bdt)", priority = -1000, trigEngine = te("w")}, {
		t"border-top ", i(0, "", {key = "i0"})
	}),
	s({trig = "bdt:n", descr = "(bdt:n)", priority = -1000, trigEngine = te("w")}, {
		t"border-top none"
	}),
	s({trig = "bdw", descr = "(bdw)", priority = -1000, trigEngine = te("w")}, {
		t"border-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "bd", descr = "(bd)", priority = -1000, trigEngine = te("w")}, {
		t"border ", i(0, "", {key = "i0"})
	}),
	s({trig = "bd:n", descr = "(bd:n)", priority = -1000, trigEngine = te("w")}, {
		t"border none"
	}),
	s({trig = "b", descr = "(b)", priority = -1000, trigEngine = te("w")}, {
		t"bottom ", i(0, "", {key = "i0"})
	}),
	s({trig = "b:a", descr = "(b:a)", priority = -1000, trigEngine = te("w")}, {
		t"bottom auto"
	}),
	s({trig = "bxsh+", descr = "(bxsh+)", priority = -1000, trigEngine = te("w")}, {
		t"box-shadow ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh", descr = "(bxsh)", priority = -1000, trigEngine = te("w")}, {
		t"box-shadow ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxsh:n", descr = "(bxsh:n)", priority = -1000, trigEngine = te("w")}, {
		t"box-shadow none"
	}),
	s({trig = "bxz", descr = "(bxz)", priority = -1000, trigEngine = te("w")}, {
		t"box-sizing ", i(0, "", {key = "i0"})
	}),
	s({trig = "bxz:bb", descr = "(bxz:bb)", priority = -1000, trigEngine = te("w")}, {
		t"box-sizing border-box"
	}),
	s({trig = "bxz:cb", descr = "(bxz:cb)", priority = -1000, trigEngine = te("w")}, {
		t"box-sizing content-box"
	}),
	s({trig = "cps", descr = "(cps)", priority = -1000, trigEngine = te("w")}, {
		t"caption-side ", i(0, "", {key = "i0"})
	}),
	s({trig = "cps:b", descr = "(cps:b)", priority = -1000, trigEngine = te("w")}, {
		t"caption-side bottom"
	}),
	s({trig = "cps:t", descr = "(cps:t)", priority = -1000, trigEngine = te("w")}, {
		t"caption-side top"
	}),
	s({trig = "cl", descr = "(cl)", priority = -1000, trigEngine = te("w")}, {
		t"clear ", i(0, "", {key = "i0"})
	}),
	s({trig = "cl:b", descr = "(cl:b)", priority = -1000, trigEngine = te("w")}, {
		t"clear both"
	}),
	s({trig = "cl:l", descr = "(cl:l)", priority = -1000, trigEngine = te("w")}, {
		t"clear left"
	}),
	s({trig = "cl:n", descr = "(cl:n)", priority = -1000, trigEngine = te("w")}, {
		t"clear none"
	}),
	s({trig = "cl:r", descr = "(cl:r)", priority = -1000, trigEngine = te("w")}, {
		t"clear right"
	}),
	s({trig = "cp", descr = "(cp)", priority = -1000, trigEngine = te("w")}, {
		t"clip ", i(0, "", {key = "i0"})
	}),
	s({trig = "cp:a", descr = "(cp:a)", priority = -1000, trigEngine = te("w")}, {
		t"clip auto"
	}),
	s({trig = "cp:r", descr = "(cp:r)", priority = -1000, trigEngine = te("w")}, {
		t"clip rect(", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "0", {key = "i0"}), t")"
	}),
	s({trig = "c", descr = "(c)", priority = -1000, trigEngine = te("w")}, {
		t"color ", i(0, "", {key = "i0"})
	}),
	s({trig = "ct", descr = "(ct)", priority = -1000, trigEngine = te("w")}, {
		t"content ", i(0, "", {key = "i0"})
	}),
	s({trig = "ct:a", descr = "(ct:a)", priority = -1000, trigEngine = te("w")}, {
		t"content attr(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ct:cq", descr = "(ct:cq)", priority = -1000, trigEngine = te("w")}, {
		t"content close-quote"
	}),
	s({trig = "ct:c", descr = "(ct:c)", priority = -1000, trigEngine = te("w")}, {
		t"content counter(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ct:cs", descr = "(ct:cs)", priority = -1000, trigEngine = te("w")}, {
		t"content counters(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "ct:ncq", descr = "(ct:ncq)", priority = -1000, trigEngine = te("w")}, {
		t"content no-close-quote"
	}),
	s({trig = "ct:noq", descr = "(ct:noq)", priority = -1000, trigEngine = te("w")}, {
		t"content no-open-quote"
	}),
	s({trig = "ct:n", descr = "(ct:n)", priority = -1000, trigEngine = te("w")}, {
		t"content normal"
	}),
	s({trig = "ct:oq", descr = "(ct:oq)", priority = -1000, trigEngine = te("w")}, {
		t"content open-quote"
	}),
	s({trig = "coi", descr = "(coi)", priority = -1000, trigEngine = te("w")}, {
		t"counter-increment ", i(0, "", {key = "i0"})
	}),
	s({trig = "cor", descr = "(cor)", priority = -1000, trigEngine = te("w")}, {
		t"counter-reset ", i(0, "", {key = "i0"})
	}),
	s({trig = "cur", descr = "(cur)", priority = -1000, trigEngine = te("w")}, {
		t"cursor ", i(0, "", {key = "i0"})
	}),
	s({trig = "cur:a", descr = "(cur:a)", priority = -1000, trigEngine = te("w")}, {
		t"cursor auto"
	}),
	s({trig = "cur:c", descr = "(cur:c)", priority = -1000, trigEngine = te("w")}, {
		t"cursor crosshair"
	}),
	s({trig = "cur:d", descr = "(cur:d)", priority = -1000, trigEngine = te("w")}, {
		t"cursor default"
	}),
	s({trig = "cur:ha", descr = "(cur:ha)", priority = -1000, trigEngine = te("w")}, {
		t"cursor hand"
	}),
	s({trig = "cur:he", descr = "(cur:he)", priority = -1000, trigEngine = te("w")}, {
		t"cursor help"
	}),
	s({trig = "cur:m", descr = "(cur:m)", priority = -1000, trigEngine = te("w")}, {
		t"cursor move"
	}),
	s({trig = "cur:p", descr = "(cur:p)", priority = -1000, trigEngine = te("w")}, {
		t"cursor pointer"
	}),
	s({trig = "cur:t", descr = "(cur:t)", priority = -1000, trigEngine = te("w")}, {
		t"cursor text"
	}),
	s({trig = "d", descr = "(d)", priority = -1000, trigEngine = te("w")}, {
		t"display ", i(0, "", {key = "i0"})
	}),
	s({trig = "d:mib", descr = "(d:mib)", priority = -1000, trigEngine = te("w")}, {
		t"display -moz-inline-box"
	}),
	s({trig = "d:mis", descr = "(d:mis)", priority = -1000, trigEngine = te("w")}, {
		t"display -moz-inline-stack"
	}),
	s({trig = "d:b", descr = "(d:b)", priority = -1000, trigEngine = te("w")}, {
		t"display block"
	}),
	s({trig = "d:cp", descr = "(d:cp)", priority = -1000, trigEngine = te("w")}, {
		t"display compact"
	}),
	s({trig = "d:g", descr = "(d:g)", priority = -1000, trigEngine = te("w")}, {
		t"display grid"
	}),
	s({trig = "d:f", descr = "(d:f)", priority = -1000, trigEngine = te("w")}, {
		t"display flex"
	}),
	s({trig = "d:ib", descr = "(d:ib)", priority = -1000, trigEngine = te("w")}, {
		t"display inline-block"
	}),
	s({trig = "d:itb", descr = "(d:itb)", priority = -1000, trigEngine = te("w")}, {
		t"display inline-table"
	}),
	s({trig = "d:i", descr = "(d:i)", priority = -1000, trigEngine = te("w")}, {
		t"display inline"
	}),
	s({trig = "d:li", descr = "(d:li)", priority = -1000, trigEngine = te("w")}, {
		t"display list-item"
	}),
	s({trig = "d:n", descr = "(d:n)", priority = -1000, trigEngine = te("w")}, {
		t"display none"
	}),
	s({trig = "d:ri", descr = "(d:ri)", priority = -1000, trigEngine = te("w")}, {
		t"display run-in"
	}),
	s({trig = "d:tbcp", descr = "(d:tbcp)", priority = -1000, trigEngine = te("w")}, {
		t"display table-caption"
	}),
	s({trig = "d:tbc", descr = "(d:tbc)", priority = -1000, trigEngine = te("w")}, {
		t"display table-cell"
	}),
	s({trig = "d:tbclg", descr = "(d:tbclg)", priority = -1000, trigEngine = te("w")}, {
		t"display table-column-group"
	}),
	s({trig = "d:tbcl", descr = "(d:tbcl)", priority = -1000, trigEngine = te("w")}, {
		t"display table-column"
	}),
	s({trig = "d:tbfg", descr = "(d:tbfg)", priority = -1000, trigEngine = te("w")}, {
		t"display table-footer-group"
	}),
	s({trig = "d:tbhg", descr = "(d:tbhg)", priority = -1000, trigEngine = te("w")}, {
		t"display table-header-group"
	}),
	s({trig = "d:tbrg", descr = "(d:tbrg)", priority = -1000, trigEngine = te("w")}, {
		t"display table-row-group"
	}),
	s({trig = "d:tbr", descr = "(d:tbr)", priority = -1000, trigEngine = te("w")}, {
		t"display table-row"
	}),
	s({trig = "d:tb", descr = "(d:tb)", priority = -1000, trigEngine = te("w")}, {
		t"display table"
	}),
	s({trig = "ec", descr = "(ec)", priority = -1000, trigEngine = te("w")}, {
		t"empty-cells ", i(0, "", {key = "i0"})
	}),
	s({trig = "ec:h", descr = "(ec:h)", priority = -1000, trigEngine = te("w")}, {
		t"empty-cells hide"
	}),
	s({trig = "ec:s", descr = "(ec:s)", priority = -1000, trigEngine = te("w")}, {
		t"empty-cells show"
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"expression()"
	}),
	s({trig = "fl", descr = "(fl)", priority = -1000, trigEngine = te("w")}, {
		t"float ", i(0, "", {key = "i0"})
	}),
	s({trig = "fl:l", descr = "(fl:l)", priority = -1000, trigEngine = te("w")}, {
		t"float left"
	}),
	s({trig = "fl:n", descr = "(fl:n)", priority = -1000, trigEngine = te("w")}, {
		t"float none"
	}),
	s({trig = "fl:r", descr = "(fl:r)", priority = -1000, trigEngine = te("w")}, {
		t"float right"
	}),
	s({trig = "f+", descr = "(f+)", priority = -1000, trigEngine = te("w")}, {
		t"font ", i(1, "1em", {key = "i1"}), t" ", i(2, "Arial", {key = "i2"}), t",", i(0, "sans-serif", {key = "i0"})
	}),
	s({trig = "fef", descr = "(fef)", priority = -1000, trigEngine = te("w")}, {
		t"font-effect ", i(0, "", {key = "i0"})
	}),
	s({trig = "fef:eb", descr = "(fef:eb)", priority = -1000, trigEngine = te("w")}, {
		t"font-effect emboss"
	}),
	s({trig = "fef:eg", descr = "(fef:eg)", priority = -1000, trigEngine = te("w")}, {
		t"font-effect engrave"
	}),
	s({trig = "fef:n", descr = "(fef:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-effect none"
	}),
	s({trig = "fef:o", descr = "(fef:o)", priority = -1000, trigEngine = te("w")}, {
		t"font-effect outline"
	}),
	s({trig = "femp", descr = "(femp)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-position ", i(0, "", {key = "i0"})
	}),
	s({trig = "femp:a", descr = "(femp:a)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-position after"
	}),
	s({trig = "femp:b", descr = "(femp:b)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-position before"
	}),
	s({trig = "fems", descr = "(fems)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "fems:ac", descr = "(fems:ac)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style accent"
	}),
	s({trig = "fems:c", descr = "(fems:c)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style circle"
	}),
	s({trig = "fems:ds", descr = "(fems:ds)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style disc"
	}),
	s({trig = "fems:dt", descr = "(fems:dt)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style dot"
	}),
	s({trig = "fems:n", descr = "(fems:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize-style none"
	}),
	s({trig = "fem", descr = "(fem)", priority = -1000, trigEngine = te("w")}, {
		t"font-emphasize ", i(0, "", {key = "i0"})
	}),
	s({trig = "ff", descr = "(ff)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "", {key = "i0"})
	}),
	s({trig = "ff:c", descr = "(ff:c)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "\'Monotype Corsiva\',\'Comic Sans MS\'", {key = "i0"}), t",cursive"
	}),
	s({trig = "ff:f", descr = "(ff:f)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "Capitals,Impact", {key = "i0"}), t",fantasy"
	}),
	s({trig = "ff:m", descr = "(ff:m)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "Monaco,\'Courier New\'", {key = "i0"}), t",monospace"
	}),
	s({trig = "ff:ss", descr = "(ff:ss)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "Helvetica,Arial", {key = "i0"}), t",sans-serif"
	}),
	s({trig = "ff:s", descr = "(ff:s)", priority = -1000, trigEngine = te("w")}, {
		t"font-family ", i(0, "Georgia,\'Times New Roman\'", {key = "i0"}), t",serif"
	}),
	s({trig = "fza", descr = "(fza)", priority = -1000, trigEngine = te("w")}, {
		t"font-size-adjust ", i(0, "", {key = "i0"})
	}),
	s({trig = "fza:n", descr = "(fza:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-size-adjust none"
	}),
	s({trig = "fz", descr = "(fz)", priority = -1000, trigEngine = te("w")}, {
		t"font-size ", i(0, "", {key = "i0"})
	}),
	s({trig = "fsm", descr = "(fsm)", priority = -1000, trigEngine = te("w")}, {
		t"font-smooth ", i(0, "", {key = "i0"})
	}),
	s({trig = "fsm:aw", descr = "(fsm:aw)", priority = -1000, trigEngine = te("w")}, {
		t"font-smooth always"
	}),
	s({trig = "fsm:a", descr = "(fsm:a)", priority = -1000, trigEngine = te("w")}, {
		t"font-smooth auto"
	}),
	s({trig = "fsm:n", descr = "(fsm:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-smooth never"
	}),
	s({trig = "fst", descr = "(fst)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch ", i(0, "", {key = "i0"})
	}),
	s({trig = "fst:c", descr = "(fst:c)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch condensed"
	}),
	s({trig = "fst:e", descr = "(fst:e)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch expanded"
	}),
	s({trig = "fst:ec", descr = "(fst:ec)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch extra-condensed"
	}),
	s({trig = "fst:ee", descr = "(fst:ee)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch extra-expanded"
	}),
	s({trig = "fst:n", descr = "(fst:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch normal"
	}),
	s({trig = "fst:sc", descr = "(fst:sc)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch semi-condensed"
	}),
	s({trig = "fst:se", descr = "(fst:se)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch semi-expanded"
	}),
	s({trig = "fst:uc", descr = "(fst:uc)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch ultra-condensed"
	}),
	s({trig = "fst:ue", descr = "(fst:ue)", priority = -1000, trigEngine = te("w")}, {
		t"font-stretch ultra-expanded"
	}),
	s({trig = "fs", descr = "(fs)", priority = -1000, trigEngine = te("w")}, {
		t"font-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "fs:i", descr = "(fs:i)", priority = -1000, trigEngine = te("w")}, {
		t"font-style italic"
	}),
	s({trig = "fs:n", descr = "(fs:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-style normal"
	}),
	s({trig = "fs:o", descr = "(fs:o)", priority = -1000, trigEngine = te("w")}, {
		t"font-style oblique"
	}),
	s({trig = "fv", descr = "(fv)", priority = -1000, trigEngine = te("w")}, {
		t"font-variant ", i(0, "", {key = "i0"})
	}),
	s({trig = "fv:n", descr = "(fv:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-variant normal"
	}),
	s({trig = "fv:sc", descr = "(fv:sc)", priority = -1000, trigEngine = te("w")}, {
		t"font-variant small-caps"
	}),
	s({trig = "fw", descr = "(fw)", priority = -1000, trigEngine = te("w")}, {
		t"font-weight ", i(0, "", {key = "i0"})
	}),
	s({trig = "fw:b", descr = "(fw:b)", priority = -1000, trigEngine = te("w")}, {
		t"font-weight bold"
	}),
	s({trig = "fw:br", descr = "(fw:br)", priority = -1000, trigEngine = te("w")}, {
		t"font-weight bolder"
	}),
	s({trig = "fw:lr", descr = "(fw:lr)", priority = -1000, trigEngine = te("w")}, {
		t"font-weight lighter"
	}),
	s({trig = "fw:n", descr = "(fw:n)", priority = -1000, trigEngine = te("w")}, {
		t"font-weight normal"
	}),
	s({trig = "f", descr = "(f)", priority = -1000, trigEngine = te("w")}, {
		t"font ", i(0, "", {key = "i0"})
	}),
	s({trig = "g", descr = "(g)", priority = -1000, trigEngine = te("w")}, {
		t"grid ", i(0, "", {key = "i0"})
	}),
	s({trig = "gaf", descr = "(gaf)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow ", i(0, "", {key = "i0"})
	}),
	s({trig = "gaf+", descr = "(gaf+)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow ", i(1, "row", {key = "i1"}), t" ", i(0, "dense", {key = "i0"})
	}),
	s({trig = "gaf:r", descr = "(gaf:r)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow row"
	}),
	s({trig = "gaf:c", descr = "(gaf:c)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow column"
	}),
	s({trig = "gaf:d", descr = "(gaf:d)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow dense"
	}),
	s({trig = "gaf:rd", descr = "(gaf:rd)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow row dense"
	}),
	s({trig = "gaf:cd", descr = "(gaf:cd)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-flow column dense"
	}),
	s({trig = "gar", descr = "(gar)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-rows ", i(0, "", {key = "i0"})
	}),
	s({trig = "gar:a", descr = "(gar:a)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-rows auto"
	}),
	s({trig = "gar:mac", descr = "(gar:mac)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-rows max-content"
	}),
	s({trig = "gar:mic", descr = "(gar:mic)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-rows min-content"
	}),
	s({trig = "gac", descr = "(gac)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-columns ", i(0, "", {key = "i0"})
	}),
	s({trig = "gac:a", descr = "(gac:a)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-columns auto"
	}),
	s({trig = "gac:mac", descr = "(gac:mac)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-columns max-content"
	}),
	s({trig = "gac:mic", descr = "(gac:mic)", priority = -1000, trigEngine = te("w")}, {
		t"grid-auto-columns min-content"
	}),
	s({trig = "gt", descr = "(gt)", priority = -1000, trigEngine = te("w")}, {
		t"grid-template ", i(0, "", {key = "i0"})
	}),
	s({trig = "gt+", descr = "(gt+)", priority = -1000, trigEngine = te("w")}, {
		t"grid-template ", i(1, "", {key = "i1"}), t" / ", i(0, "", {key = "i0"})
	}),
	s({trig = "gtr", descr = "(gtr)", priority = -1000, trigEngine = te("w")}, {
		t"grid-template-rows ", i(0, "", {key = "i0"})
	}),
	s({trig = "gtc", descr = "(gtc)", priority = -1000, trigEngine = te("w")}, {
		t"grid-template-columns ", i(0, "", {key = "i0"})
	}),
	s({trig = "gta", descr = "(gta)", priority = -1000, trigEngine = te("w")}, {
		t"grid-template-areas ", i(0, "", {key = "i0"})
	}),
	s({trig = "gg", descr = "(gg)", priority = -1000, trigEngine = te("w")}, {
		t"grid-gap ", i(0, "", {key = "i0"})
	}),
	s({trig = "gg+", descr = "(gg+)", priority = -1000, trigEngine = te("w")}, {
		t"grid-gap ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "gg:0", descr = "(gg:0)", priority = -1000, trigEngine = te("w")}, {
		t"grid-gap 0"
	}),
	s({trig = "grg", descr = "(grg)", priority = -1000, trigEngine = te("w")}, {
		t"grid-row-gap ", i(0, "", {key = "i0"})
	}),
	s({trig = "grg:0", descr = "(grg:0)", priority = -1000, trigEngine = te("w")}, {
		t"grid-row-gap 0"
	}),
	s({trig = "gcg", descr = "(gcg)", priority = -1000, trigEngine = te("w")}, {
		t"grid-column-gap ", i(0, "", {key = "i0"})
	}),
	s({trig = "gcg:0", descr = "(gcg:0)", priority = -1000, trigEngine = te("w")}, {
		t"grid-column-gap 0"
	}),
	s({trig = "gr", descr = "(gr)", priority = -1000, trigEngine = te("w")}, {
		t"grid-row ", i(1, "", {key = "i1"}), t" / ", i(0, "", {key = "i0"})
	}),
	s({trig = "grs", descr = "(grs)", priority = -1000, trigEngine = te("w")}, {
		t"grid-row-start ", i(0, "", {key = "i0"})
	}),
	s({trig = "gre", descr = "(gre)", priority = -1000, trigEngine = te("w")}, {
		t"grid-row-end ", i(0, "", {key = "i0"})
	}),
	s({trig = "gc", descr = "(gc)", priority = -1000, trigEngine = te("w")}, {
		t"grid-column ", i(1, "", {key = "i1"}), t" / ", i(0, "", {key = "i0"})
	}),
	s({trig = "gcs", descr = "(gcs)", priority = -1000, trigEngine = te("w")}, {
		t"grid-column-start ", i(0, "", {key = "i0"})
	}),
	s({trig = "gce", descr = "(gce)", priority = -1000, trigEngine = te("w")}, {
		t"grid-column-end ", i(0, "", {key = "i0"})
	}),
	s({trig = "h", descr = "(h)", priority = -1000, trigEngine = te("w")}, {
		t"height ", i(0, "", {key = "i0"})
	}),
	s({trig = "h:a", descr = "(h:a)", priority = -1000, trigEngine = te("w")}, {
		t"height auto"
	}),
	s({trig = "l", descr = "(l)", priority = -1000, trigEngine = te("w")}, {
		t"left ", i(0, "", {key = "i0"})
	}),
	s({trig = "l:a", descr = "(l:a)", priority = -1000, trigEngine = te("w")}, {
		t"left auto"
	}),
	s({trig = "lts", descr = "(lts)", priority = -1000, trigEngine = te("w")}, {
		t"letter-spacing ", i(0, "", {key = "i0"})
	}),
	s({trig = "lh", descr = "(lh)", priority = -1000, trigEngine = te("w")}, {
		t"line-height ", i(0, "", {key = "i0"})
	}),
	s({trig = "lisi", descr = "(lisi)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-image url(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "lisi:n", descr = "(lisi:n)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-image none"
	}),
	s({trig = "lisp", descr = "(lisp)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-position ", i(0, "", {key = "i0"})
	}),
	s({trig = "lisp:i", descr = "(lisp:i)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-position inside"
	}),
	s({trig = "lisp:o", descr = "(lisp:o)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-position outside"
	}),
	s({trig = "list", descr = "(list)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type ", i(0, "", {key = "i0"})
	}),
	s({trig = "list:c", descr = "(list:c)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type circle"
	}),
	s({trig = "list:dclz", descr = "(list:dclz)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type decimal-leading-zero"
	}),
	s({trig = "list:dc", descr = "(list:dc)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type decimal"
	}),
	s({trig = "list:d", descr = "(list:d)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type disc"
	}),
	s({trig = "list:lr", descr = "(list:lr)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type lower-roman"
	}),
	s({trig = "list:n", descr = "(list:n)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type none"
	}),
	s({trig = "list:s", descr = "(list:s)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type square"
	}),
	s({trig = "list:ur", descr = "(list:ur)", priority = -1000, trigEngine = te("w")}, {
		t"list-style-type upper-roman"
	}),
	s({trig = "lis", descr = "(lis)", priority = -1000, trigEngine = te("w")}, {
		t"list-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "lis:n", descr = "(lis:n)", priority = -1000, trigEngine = te("w")}, {
		t"list-style none"
	}),
	s({trig = "mb", descr = "(mb)", priority = -1000, trigEngine = te("w")}, {
		t"margin-bottom ", i(0, "", {key = "i0"})
	}),
	s({trig = "mb:a", descr = "(mb:a)", priority = -1000, trigEngine = te("w")}, {
		t"margin-bottom auto"
	}),
	s({trig = "ml", descr = "(ml)", priority = -1000, trigEngine = te("w")}, {
		t"margin-left ", i(0, "", {key = "i0"})
	}),
	s({trig = "ml:a", descr = "(ml:a)", priority = -1000, trigEngine = te("w")}, {
		t"margin-left auto"
	}),
	s({trig = "mr", descr = "(mr)", priority = -1000, trigEngine = te("w")}, {
		t"margin-right ", i(0, "", {key = "i0"})
	}),
	s({trig = "mr:a", descr = "(mr:a)", priority = -1000, trigEngine = te("w")}, {
		t"margin-right auto"
	}),
	s({trig = "mt", descr = "(mt)", priority = -1000, trigEngine = te("w")}, {
		t"margin-top ", i(0, "", {key = "i0"})
	}),
	s({trig = "mt:a", descr = "(mt:a)", priority = -1000, trigEngine = te("w")}, {
		t"margin-top auto"
	}),
	s({trig = "m", descr = "(m)", priority = -1000, trigEngine = te("w")}, {
		t"margin ", i(0, "", {key = "i0"})
	}),
	s({trig = "m:4", descr = "(m:4)", priority = -1000, trigEngine = te("w")}, {
		t"margin ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "m:3", descr = "(m:3)", priority = -1000, trigEngine = te("w")}, {
		t"margin ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "m:2", descr = "(m:2)", priority = -1000, trigEngine = te("w")}, {
		t"margin ", i(1, "0", {key = "i1"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "m:0", descr = "(m:0)", priority = -1000, trigEngine = te("w")}, {
		t"margin 0"
	}),
	s({trig = "m:a", descr = "(m:a)", priority = -1000, trigEngine = te("w")}, {
		t"margin auto"
	}),
	s({trig = "mah", descr = "(mah)", priority = -1000, trigEngine = te("w")}, {
		t"max-height ", i(0, "", {key = "i0"})
	}),
	s({trig = "mah:n", descr = "(mah:n)", priority = -1000, trigEngine = te("w")}, {
		t"max-height none"
	}),
	s({trig = "maw", descr = "(maw)", priority = -1000, trigEngine = te("w")}, {
		t"max-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "maw:n", descr = "(maw:n)", priority = -1000, trigEngine = te("w")}, {
		t"max-width none"
	}),
	s({trig = "mih", descr = "(mih)", priority = -1000, trigEngine = te("w")}, {
		t"min-height ", i(0, "", {key = "i0"})
	}),
	s({trig = "miw", descr = "(miw)", priority = -1000, trigEngine = te("w")}, {
		t"min-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "op", descr = "(op)", priority = -1000, trigEngine = te("w")}, {
		t"opacity ", i(0, "", {key = "i0"})
	}),
	s({trig = "op:ie", descr = "(op:ie)", priority = -1000, trigEngine = te("w")}, {
		t"filter progid:DXImageTransform.Microsoft.Alpha(Opacity=", i(0, "100", {key = "i0"}), t")"
	}),
	s({trig = "op:ms", descr = "(op:ms)", priority = -1000, trigEngine = te("w")}, {
		t"-ms-filter \'progid:DXImageTransform.Microsoft.Alpha(Opacity=", i(0, "100", {key = "i0"}), t")\'"
	}),
	s({trig = "orp", descr = "(orp)", priority = -1000, trigEngine = te("w")}, {
		t"orphans ", i(0, "", {key = "i0"})
	}),
	s({trig = "o+", descr = "(o+)", priority = -1000, trigEngine = te("w")}, {
		t"outline ", i(1, "1px", {key = "i1"}), t" ", i(2, "solid", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "oc", descr = "(oc)", priority = -1000, trigEngine = te("w")}, {
		t"outline-color ", i(0, "", {key = "i0"})
	}),
	s({trig = "oc:i", descr = "(oc:i)", priority = -1000, trigEngine = te("w")}, {
		t"outline-color invert"
	}),
	s({trig = "oo", descr = "(oo)", priority = -1000, trigEngine = te("w")}, {
		t"outline-offset ", i(0, "", {key = "i0"})
	}),
	s({trig = "os", descr = "(os)", priority = -1000, trigEngine = te("w")}, {
		t"outline-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "ow", descr = "(ow)", priority = -1000, trigEngine = te("w")}, {
		t"outline-width ", i(0, "", {key = "i0"})
	}),
	s({trig = "o", descr = "(o)", priority = -1000, trigEngine = te("w")}, {
		t"outline ", i(0, "", {key = "i0"})
	}),
	s({trig = "o:n", descr = "(o:n)", priority = -1000, trigEngine = te("w")}, {
		t"outline none"
	}),
	s({trig = "ovs", descr = "(ovs)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style ", i(0, "", {key = "i0"})
	}),
	s({trig = "ovs:a", descr = "(ovs:a)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style auto"
	}),
	s({trig = "ovs:mq", descr = "(ovs:mq)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style marquee"
	}),
	s({trig = "ovs:mv", descr = "(ovs:mv)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style move"
	}),
	s({trig = "ovs:p", descr = "(ovs:p)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style panner"
	}),
	s({trig = "ovs:s", descr = "(ovs:s)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-style scrollbar"
	}),
	s({trig = "ovx", descr = "(ovx)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-x ", i(0, "", {key = "i0"})
	}),
	s({trig = "ovx:a", descr = "(ovx:a)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-x auto"
	}),
	s({trig = "ovx:h", descr = "(ovx:h)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-x hidden"
	}),
	s({trig = "ovx:s", descr = "(ovx:s)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-x scroll"
	}),
	s({trig = "ovx:v", descr = "(ovx:v)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-x visible"
	}),
	s({trig = "ovy", descr = "(ovy)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-y ", i(0, "", {key = "i0"})
	}),
	s({trig = "ovy:a", descr = "(ovy:a)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-y auto"
	}),
	s({trig = "ovy:h", descr = "(ovy:h)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-y hidden"
	}),
	s({trig = "ovy:s", descr = "(ovy:s)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-y scroll"
	}),
	s({trig = "ovy:v", descr = "(ovy:v)", priority = -1000, trigEngine = te("w")}, {
		t"overflow-y visible"
	}),
	s({trig = "ov", descr = "(ov)", priority = -1000, trigEngine = te("w")}, {
		t"overflow ", i(0, "", {key = "i0"})
	}),
	s({trig = "ov:a", descr = "(ov:a)", priority = -1000, trigEngine = te("w")}, {
		t"overflow auto"
	}),
	s({trig = "ov:h", descr = "(ov:h)", priority = -1000, trigEngine = te("w")}, {
		t"overflow hidden"
	}),
	s({trig = "ov:s", descr = "(ov:s)", priority = -1000, trigEngine = te("w")}, {
		t"overflow scroll"
	}),
	s({trig = "ov:v", descr = "(ov:v)", priority = -1000, trigEngine = te("w")}, {
		t"overflow visible"
	}),
	s({trig = "pb", descr = "(pb)", priority = -1000, trigEngine = te("w")}, {
		t"padding-bottom ", i(0, "", {key = "i0"})
	}),
	s({trig = "pl", descr = "(pl)", priority = -1000, trigEngine = te("w")}, {
		t"padding-left ", i(0, "", {key = "i0"})
	}),
	s({trig = "pr", descr = "(pr)", priority = -1000, trigEngine = te("w")}, {
		t"padding-right ", i(0, "", {key = "i0"})
	}),
	s({trig = "pt", descr = "(pt)", priority = -1000, trigEngine = te("w")}, {
		t"padding-top ", i(0, "", {key = "i0"})
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"padding ", i(0, "", {key = "i0"})
	}),
	s({trig = "p:4", descr = "(p:4)", priority = -1000, trigEngine = te("w")}, {
		t"padding ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "p:3", descr = "(p:3)", priority = -1000, trigEngine = te("w")}, {
		t"padding ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "p:2", descr = "(p:2)", priority = -1000, trigEngine = te("w")}, {
		t"padding ", i(1, "0", {key = "i1"}), t" ", i(0, "0", {key = "i0"})
	}),
	s({trig = "p:0", descr = "(p:0)", priority = -1000, trigEngine = te("w")}, {
		t"padding 0"
	}),
	s({trig = "pc", descr = "(pc)", priority = -1000, trigEngine = te("w")}, {
		t"place-content ", i(0, "", {key = "i0"})
	}),
	s({trig = "pc+", descr = "(pc+)", priority = -1000, trigEngine = te("w")}, {
		t"place-content ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "pc:s", descr = "(pc:s)", priority = -1000, trigEngine = te("w")}, {
		t"place-content start"
	}),
	s({trig = "pc:e", descr = "(pc:e)", priority = -1000, trigEngine = te("w")}, {
		t"place-content end"
	}),
	s({trig = "pc:c", descr = "(pc:c)", priority = -1000, trigEngine = te("w")}, {
		t"place-content center"
	}),
	s({trig = "pc:fs", descr = "(pc:fs)", priority = -1000, trigEngine = te("w")}, {
		t"place-content flex-start"
	}),
	s({trig = "pc:fe", descr = "(pc:fe)", priority = -1000, trigEngine = te("w")}, {
		t"place-content flex-end"
	}),
	s({trig = "pc:sb", descr = "(pc:sb)", priority = -1000, trigEngine = te("w")}, {
		t"place-content space-between"
	}),
	s({trig = "pc:sa", descr = "(pc:sa)", priority = -1000, trigEngine = te("w")}, {
		t"place-content space-around"
	}),
	s({trig = "pc:se", descr = "(pc:se)", priority = -1000, trigEngine = te("w")}, {
		t"place-content space-evenly"
	}),
	s({trig = "pc:st", descr = "(pc:st)", priority = -1000, trigEngine = te("w")}, {
		t"place-content stretch"
	}),
	s({trig = "pgba", descr = "(pgba)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-after ", i(0, "", {key = "i0"})
	}),
	s({trig = "pgba:aw", descr = "(pgba:aw)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-after always"
	}),
	s({trig = "pgba:a", descr = "(pgba:a)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-after auto"
	}),
	s({trig = "pgba:l", descr = "(pgba:l)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-after left"
	}),
	s({trig = "pgba:r", descr = "(pgba:r)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-after right"
	}),
	s({trig = "pgbb", descr = "(pgbb)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-before ", i(0, "", {key = "i0"})
	}),
	s({trig = "pgbb:aw", descr = "(pgbb:aw)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-before always"
	}),
	s({trig = "pgbb:a", descr = "(pgbb:a)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-before auto"
	}),
	s({trig = "pgbb:l", descr = "(pgbb:l)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-before left"
	}),
	s({trig = "pgbb:r", descr = "(pgbb:r)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-before right"
	}),
	s({trig = "pgbi", descr = "(pgbi)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-inside ", i(0, "", {key = "i0"})
	}),
	s({trig = "pgbi:a", descr = "(pgbi:a)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-inside auto"
	}),
	s({trig = "pgbi:av", descr = "(pgbi:av)", priority = -1000, trigEngine = te("w")}, {
		t"page-break-inside avoid"
	}),
	s({trig = "pi", descr = "(pi)", priority = -1000, trigEngine = te("w")}, {
		t"place-items ", i(0, "", {key = "i0"})
	}),
	s({trig = "pi+", descr = "(pi+)", priority = -1000, trigEngine = te("w")}, {
		t"place-items ", i(1, "stretch", {key = "i1"}), t" ", i(0, "stretch", {key = "i0"})
	}),
	s({trig = "pi:s", descr = "(pi:s)", priority = -1000, trigEngine = te("w")}, {
		t"place-items start"
	}),
	s({trig = "pi:e", descr = "(pi:e)", priority = -1000, trigEngine = te("w")}, {
		t"place-items end"
	}),
	s({trig = "pi:c", descr = "(pi:c)", priority = -1000, trigEngine = te("w")}, {
		t"place-items center"
	}),
	s({trig = "pi:st", descr = "(pi:st)", priority = -1000, trigEngine = te("w")}, {
		t"place-items stretch"
	}),
	s({trig = "pos", descr = "(pos)", priority = -1000, trigEngine = te("w")}, {
		t"position ", i(0, "", {key = "i0"})
	}),
	s({trig = "pos:a", descr = "(pos:a)", priority = -1000, trigEngine = te("w")}, {
		t"position absolute"
	}),
	s({trig = "pos:f", descr = "(pos:f)", priority = -1000, trigEngine = te("w")}, {
		t"position fixed"
	}),
	s({trig = "pos:r", descr = "(pos:r)", priority = -1000, trigEngine = te("w")}, {
		t"position relative"
	}),
	s({trig = "pos:s", descr = "(pos:s)", priority = -1000, trigEngine = te("w")}, {
		t"position static"
	}),
	s({trig = "ps", descr = "(ps)", priority = -1000, trigEngine = te("w")}, {
		t"place-self ", i(0, "", {key = "i0"})
	}),
	s({trig = "ps+", descr = "(ps+)", priority = -1000, trigEngine = te("w")}, {
		t"place-self ", i(1, "stretch", {key = "i1"}), t" ", i(0, "stretch", {key = "i0"})
	}),
	s({trig = "ps:s", descr = "(ps:s)", priority = -1000, trigEngine = te("w")}, {
		t"place-self start"
	}),
	s({trig = "ps:e", descr = "(ps:e)", priority = -1000, trigEngine = te("w")}, {
		t"place-self end"
	}),
	s({trig = "ps:c", descr = "(ps:c)", priority = -1000, trigEngine = te("w")}, {
		t"place-self center"
	}),
	s({trig = "ps:st", descr = "(ps:st)", priority = -1000, trigEngine = te("w")}, {
		t"place-self stretch"
	}),
	s({trig = "q", descr = "(q)", priority = -1000, trigEngine = te("w")}, {
		t"quotes ", i(0, "", {key = "i0"})
	}),
	s({trig = "q:en", descr = "(q:en)", priority = -1000, trigEngine = te("w")}, {
		t"quotes \'\\201C\' \'\\201D\' \'\\2018\' \'\\2019\'"
	}),
	s({trig = "q:n", descr = "(q:n)", priority = -1000, trigEngine = te("w")}, {
		t"quotes none"
	}),
	s({trig = "q:ru", descr = "(q:ru)", priority = -1000, trigEngine = te("w")}, {
		t"quotes \'\\00AB\' \'\\00BB\' \'\\201E\' \'\\201C\'"
	}),
	s({trig = "rz", descr = "(rz)", priority = -1000, trigEngine = te("w")}, {
		t"resize ", i(0, "", {key = "i0"})
	}),
	s({trig = "rz:b", descr = "(rz:b)", priority = -1000, trigEngine = te("w")}, {
		t"resize both"
	}),
	s({trig = "rz:h", descr = "(rz:h)", priority = -1000, trigEngine = te("w")}, {
		t"resize horizontal"
	}),
	s({trig = "rz:n", descr = "(rz:n)", priority = -1000, trigEngine = te("w")}, {
		t"resize none"
	}),
	s({trig = "rz:v", descr = "(rz:v)", priority = -1000, trigEngine = te("w")}, {
		t"resize vertical"
	}),
	s({trig = "r", descr = "(r)", priority = -1000, trigEngine = te("w")}, {
		t"right ", i(0, "", {key = "i0"})
	}),
	s({trig = "r:a", descr = "(r:a)", priority = -1000, trigEngine = te("w")}, {
		t"right auto"
	}),
	s({trig = "tbl", descr = "(tbl)", priority = -1000, trigEngine = te("w")}, {
		t"table-layout ", i(0, "", {key = "i0"})
	}),
	s({trig = "tbl:a", descr = "(tbl:a)", priority = -1000, trigEngine = te("w")}, {
		t"table-layout auto"
	}),
	s({trig = "tbl:f", descr = "(tbl:f)", priority = -1000, trigEngine = te("w")}, {
		t"table-layout fixed"
	}),
	s({trig = "tal", descr = "(tal)", priority = -1000, trigEngine = te("w")}, {
		t"text-align-last ", i(0, "", {key = "i0"})
	}),
	s({trig = "tal:a", descr = "(tal:a)", priority = -1000, trigEngine = te("w")}, {
		t"text-align-last auto"
	}),
	s({trig = "tal:c", descr = "(tal:c)", priority = -1000, trigEngine = te("w")}, {
		t"text-align-last center"
	}),
	s({trig = "tal:l", descr = "(tal:l)", priority = -1000, trigEngine = te("w")}, {
		t"text-align-last left"
	}),
	s({trig = "tal:r", descr = "(tal:r)", priority = -1000, trigEngine = te("w")}, {
		t"text-align-last right"
	}),
	s({trig = "ta", descr = "(ta)", priority = -1000, trigEngine = te("w")}, {
		t"text-align ", i(0, "", {key = "i0"})
	}),
	s({trig = "ta:c", descr = "(ta:c)", priority = -1000, trigEngine = te("w")}, {
		t"text-align center"
	}),
	s({trig = "ta:l", descr = "(ta:l)", priority = -1000, trigEngine = te("w")}, {
		t"text-align left"
	}),
	s({trig = "ta:r", descr = "(ta:r)", priority = -1000, trigEngine = te("w")}, {
		t"text-align right"
	}),
	s({trig = "td", descr = "(td)", priority = -1000, trigEngine = te("w")}, {
		t"text-decoration ", i(0, "", {key = "i0"})
	}),
	s({trig = "td:l", descr = "(td:l)", priority = -1000, trigEngine = te("w")}, {
		t"text-decoration line-through"
	}),
	s({trig = "td:n", descr = "(td:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-decoration none"
	}),
	s({trig = "td:o", descr = "(td:o)", priority = -1000, trigEngine = te("w")}, {
		t"text-decoration overline"
	}),
	s({trig = "td:u", descr = "(td:u)", priority = -1000, trigEngine = te("w")}, {
		t"text-decoration underline"
	}),
	s({trig = "te", descr = "(te)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis ", i(0, "", {key = "i0"})
	}),
	s({trig = "te:ac", descr = "(te:ac)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis accent"
	}),
	s({trig = "te:a", descr = "(te:a)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis after"
	}),
	s({trig = "te:b", descr = "(te:b)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis before"
	}),
	s({trig = "te:c", descr = "(te:c)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis circle"
	}),
	s({trig = "te:ds", descr = "(te:ds)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis disc"
	}),
	s({trig = "te:dt", descr = "(te:dt)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis dot"
	}),
	s({trig = "te:n", descr = "(te:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-emphasis none"
	}),
	s({trig = "th", descr = "(th)", priority = -1000, trigEngine = te("w")}, {
		t"text-height ", i(0, "", {key = "i0"})
	}),
	s({trig = "th:a", descr = "(th:a)", priority = -1000, trigEngine = te("w")}, {
		t"text-height auto"
	}),
	s({trig = "th:f", descr = "(th:f)", priority = -1000, trigEngine = te("w")}, {
		t"text-height font-size"
	}),
	s({trig = "th:m", descr = "(th:m)", priority = -1000, trigEngine = te("w")}, {
		t"text-height max-size"
	}),
	s({trig = "th:t", descr = "(th:t)", priority = -1000, trigEngine = te("w")}, {
		t"text-height text-size"
	}),
	s({trig = "ti", descr = "(ti)", priority = -1000, trigEngine = te("w")}, {
		t"text-indent ", i(0, "", {key = "i0"})
	}),
	s({trig = "ti:-", descr = "(ti:-)", priority = -1000, trigEngine = te("w")}, {
		t"text-indent -9999px"
	}),
	s({trig = "tj", descr = "(tj)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify ", i(0, "", {key = "i0"})
	}),
	s({trig = "tj:a", descr = "(tj:a)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify auto"
	}),
	s({trig = "tj:d", descr = "(tj:d)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify distribute"
	}),
	s({trig = "tj:ic", descr = "(tj:ic)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify inter-cluster"
	}),
	s({trig = "tj:ii", descr = "(tj:ii)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify inter-ideograph"
	}),
	s({trig = "tj:iw", descr = "(tj:iw)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify inter-word"
	}),
	s({trig = "tj:k", descr = "(tj:k)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify kashida"
	}),
	s({trig = "tj:t", descr = "(tj:t)", priority = -1000, trigEngine = te("w")}, {
		t"text-justify tibetan"
	}),
	s({trig = "to+", descr = "(to+)", priority = -1000, trigEngine = te("w")}, {
		t"text-outline ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "to", descr = "(to)", priority = -1000, trigEngine = te("w")}, {
		t"text-outline ", i(0, "", {key = "i0"})
	}),
	s({trig = "to:n", descr = "(to:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-outline none"
	}),
	s({trig = "tr", descr = "(tr)", priority = -1000, trigEngine = te("w")}, {
		t"text-replace ", i(0, "", {key = "i0"})
	}),
	s({trig = "tr:n", descr = "(tr:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-replace none"
	}),
	s({trig = "tsh+", descr = "(tsh+)", priority = -1000, trigEngine = te("w")}, {
		t"text-shadow ", i(1, "0", {key = "i1"}), t" ", i(2, "0", {key = "i2"}), t" ", i(3, "0", {key = "i3"}), t" ", i(0, "", {key = "i0"})
	}),
	s({trig = "tsh", descr = "(tsh)", priority = -1000, trigEngine = te("w")}, {
		t"text-shadow ", i(0, "", {key = "i0"})
	}),
	s({trig = "tsh:n", descr = "(tsh:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-shadow none"
	}),
	s({trig = "tt", descr = "(tt)", priority = -1000, trigEngine = te("w")}, {
		t"text-transform ", i(0, "", {key = "i0"})
	}),
	s({trig = "tt:c", descr = "(tt:c)", priority = -1000, trigEngine = te("w")}, {
		t"text-transform capitalize"
	}),
	s({trig = "tt:l", descr = "(tt:l)", priority = -1000, trigEngine = te("w")}, {
		t"text-transform lowercase"
	}),
	s({trig = "tt:n", descr = "(tt:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-transform none"
	}),
	s({trig = "tt:u", descr = "(tt:u)", priority = -1000, trigEngine = te("w")}, {
		t"text-transform uppercase"
	}),
	s({trig = "tw", descr = "(tw)", priority = -1000, trigEngine = te("w")}, {
		t"text-wrap ", i(0, "", {key = "i0"})
	}),
	s({trig = "tw:no", descr = "(tw:no)", priority = -1000, trigEngine = te("w")}, {
		t"text-wrap none"
	}),
	s({trig = "tw:n", descr = "(tw:n)", priority = -1000, trigEngine = te("w")}, {
		t"text-wrap normal"
	}),
	s({trig = "tw:s", descr = "(tw:s)", priority = -1000, trigEngine = te("w")}, {
		t"text-wrap suppress"
	}),
	s({trig = "tw:u", descr = "(tw:u)", priority = -1000, trigEngine = te("w")}, {
		t"text-wrap unrestricted"
	}),
	s({trig = "t", descr = "(t)", priority = -1000, trigEngine = te("w")}, {
		t"top ", i(0, "", {key = "i0"})
	}),
	s({trig = "t:a", descr = "(t:a)", priority = -1000, trigEngine = te("w")}, {
		t"top auto"
	}),
	s({trig = "va", descr = "(va)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align ", i(0, "", {key = "i0"})
	}),
	s({trig = "va:bl", descr = "(va:bl)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align baseline"
	}),
	s({trig = "va:b", descr = "(va:b)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align bottom"
	}),
	s({trig = "va:m", descr = "(va:m)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align middle"
	}),
	s({trig = "va:sub", descr = "(va:sub)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align sub"
	}),
	s({trig = "va:sup", descr = "(va:sup)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align super"
	}),
	s({trig = "va:tb", descr = "(va:tb)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align text-bottom"
	}),
	s({trig = "va:tt", descr = "(va:tt)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align text-top"
	}),
	s({trig = "va:t", descr = "(va:t)", priority = -1000, trigEngine = te("w")}, {
		t"vertical-align top"
	}),
	s({trig = "v", descr = "(v)", priority = -1000, trigEngine = te("w")}, {
		t"visibility ", i(0, "", {key = "i0"})
	}),
	s({trig = "v:c", descr = "(v:c)", priority = -1000, trigEngine = te("w")}, {
		t"visibility collapse"
	}),
	s({trig = "v:h", descr = "(v:h)", priority = -1000, trigEngine = te("w")}, {
		t"visibility hidden"
	}),
	s({trig = "v:v", descr = "(v:v)", priority = -1000, trigEngine = te("w")}, {
		t"visibility visible"
	}),
	s({trig = "whsc", descr = "(whsc)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse ", i(0, "", {key = "i0"})
	}),
	s({trig = "whsc:ba", descr = "(whsc:ba)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse break-all"
	}),
	s({trig = "whsc:bs", descr = "(whsc:bs)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse break-strict"
	}),
	s({trig = "whsc:k", descr = "(whsc:k)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse keep-all"
	}),
	s({trig = "whsc:l", descr = "(whsc:l)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse loose"
	}),
	s({trig = "whsc:n", descr = "(whsc:n)", priority = -1000, trigEngine = te("w")}, {
		t"white-space-collapse normal"
	}),
	s({trig = "whs", descr = "(whs)", priority = -1000, trigEngine = te("w")}, {
		t"white-space ", i(0, "", {key = "i0"})
	}),
	s({trig = "whs:n", descr = "(whs:n)", priority = -1000, trigEngine = te("w")}, {
		t"white-space normal"
	}),
	s({trig = "whs:nw", descr = "(whs:nw)", priority = -1000, trigEngine = te("w")}, {
		t"white-space nowrap"
	}),
	s({trig = "whs:pl", descr = "(whs:pl)", priority = -1000, trigEngine = te("w")}, {
		t"white-space pre-line"
	}),
	s({trig = "whs:pw", descr = "(whs:pw)", priority = -1000, trigEngine = te("w")}, {
		t"white-space pre-wrap"
	}),
	s({trig = "whs:p", descr = "(whs:p)", priority = -1000, trigEngine = te("w")}, {
		t"white-space pre"
	}),
	s({trig = "wid", descr = "(wid)", priority = -1000, trigEngine = te("w")}, {
		t"widows ", i(0, "", {key = "i0"})
	}),
	s({trig = "w", descr = "(w)", priority = -1000, trigEngine = te("w")}, {
		t"width ", i(0, "", {key = "i0"})
	}),
	s({trig = "w:a", descr = "(w:a)", priority = -1000, trigEngine = te("w")}, {
		t"width auto"
	}),
	s({trig = "wob", descr = "(wob)", priority = -1000, trigEngine = te("w")}, {
		t"word-break ", i(0, "", {key = "i0"})
	}),
	s({trig = "wob:ba", descr = "(wob:ba)", priority = -1000, trigEngine = te("w")}, {
		t"word-break break-all"
	}),
	s({trig = "wob:bs", descr = "(wob:bs)", priority = -1000, trigEngine = te("w")}, {
		t"word-break break-strict"
	}),
	s({trig = "wob:k", descr = "(wob:k)", priority = -1000, trigEngine = te("w")}, {
		t"word-break keep-all"
	}),
	s({trig = "wob:l", descr = "(wob:l)", priority = -1000, trigEngine = te("w")}, {
		t"word-break loose"
	}),
	s({trig = "wob:n", descr = "(wob:n)", priority = -1000, trigEngine = te("w")}, {
		t"word-break normal"
	}),
	s({trig = "wos", descr = "(wos)", priority = -1000, trigEngine = te("w")}, {
		t"word-spacing ", i(0, "", {key = "i0"})
	}),
	s({trig = "wow", descr = "(wow)", priority = -1000, trigEngine = te("w")}, {
		t"word-wrap ", i(0, "", {key = "i0"})
	}),
	s({trig = "wow:no", descr = "(wow:no)", priority = -1000, trigEngine = te("w")}, {
		t"word-wrap none"
	}),
	s({trig = "wow:n", descr = "(wow:n)", priority = -1000, trigEngine = te("w")}, {
		t"word-wrap normal"
	}),
	s({trig = "wow:s", descr = "(wow:s)", priority = -1000, trigEngine = te("w")}, {
		t"word-wrap suppress"
	}),
	s({trig = "wow:u", descr = "(wow:u)", priority = -1000, trigEngine = te("w")}, {
		t"word-wrap unrestricted"
	}),
	s({trig = "z", descr = "(z)", priority = -1000, trigEngine = te("w")}, {
		t"z-index ", i(0, "", {key = "i0"})
	}),
	s({trig = "z:a", descr = "(z:a)", priority = -1000, trigEngine = te("w")}, {
		t"z-index auto"
	}),
	s({trig = "zoo", descr = "(zoo)", priority = -1000, trigEngine = te("w")}, {
		t"zoom 1"
	}),
	s({trig = ":h", descr = "(:h)", priority = -1000, trigEngine = te("w")}, {
		t":hover"
	}),
	s({trig = ":fc", descr = "(:fc)", priority = -1000, trigEngine = te("w")}, {
		t":first-child"
	}),
	s({trig = ":lc", descr = "(:lc)", priority = -1000, trigEngine = te("w")}, {
		t":last-child"
	}),
	s({trig = ":nc", descr = "(:nc)", priority = -1000, trigEngine = te("w")}, {
		t":nth-child(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = ":nlc", descr = "(:nlc)", priority = -1000, trigEngine = te("w")}, {
		t":nth-last-child(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = ":oc", descr = "(:oc)", priority = -1000, trigEngine = te("w")}, {
		t":only-child"
	}),
	s({trig = ":a", descr = "(:a)", priority = -1000, trigEngine = te("w")}, {
		t":after"
	}),
	s({trig = ":b", descr = "(:b)", priority = -1000, trigEngine = te("w")}, {
		t":before"
	}),
	s({trig = "::a", descr = "(::a)", priority = -1000, trigEngine = te("w")}, {
		t"::after"
	}),
	s({trig = "::b", descr = "(::b)", priority = -1000, trigEngine = te("w")}, {
		t"::before"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(0, "", {key = "i0"})
	}),
	s({trig = "mix", descr = "(mix)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t"(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "for", descr = "(for)", priority = -1000, trigEngine = te("w")}, {
		t"for ", i(1, "i", {key = "i1"}), t" in ", i(0, "", {key = "i0"})
	}),
	s({trig = "keyf", descr = "(keyf)", priority = -1000, trigEngine = te("w")}, {
		t"@keyframes ", i(0, "", {key = "i0"})
	}),
	s({trig = "jc", descr = "(jc)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content ", i(0, "", {key = "i0"})
	}),
	s({trig = "jc:s", descr = "(jc:s)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content start"
	}),
	s({trig = "jc:e", descr = "(jc:e)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content end"
	}),
	s({trig = "jc:c", descr = "(jc:c)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content center"
	}),
	s({trig = "jc:fs", descr = "(jc:fs)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content flex-start"
	}),
	s({trig = "jc:fe", descr = "(jc:fe)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content flex-end"
	}),
	s({trig = "jc:sb", descr = "(jc:sb)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content space-between"
	}),
	s({trig = "jc:sa", descr = "(jc:sa)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content space-around"
	}),
	s({trig = "jc:se", descr = "(jc:se)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content space-evenly"
	}),
	s({trig = "jc:st", descr = "(jc:st)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content space-evenly"
	}),
	s({trig = "jc:l", descr = "(jc:l)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content left"
	}),
	s({trig = "jc:r", descr = "(jc:r)", priority = -1000, trigEngine = te("w")}, {
		t"justify-content right"
	}),
	s({trig = "ji", descr = "(ji)", priority = -1000, trigEngine = te("w")}, {
		t"justify-items ", i(0, "", {key = "i0"})
	}),
	s({trig = "ji:s", descr = "(ji:s)", priority = -1000, trigEngine = te("w")}, {
		t"justify-items start"
	}),
	s({trig = "ji:e", descr = "(ji:e)", priority = -1000, trigEngine = te("w")}, {
		t"justify-items end"
	}),
	s({trig = "ji:c", descr = "(ji:c)", priority = -1000, trigEngine = te("w")}, {
		t"justify-items center"
	}),
	s({trig = "ji:st", descr = "(ji:st)", priority = -1000, trigEngine = te("w")}, {
		t"justify-items stretch"
	}),
	s({trig = "js", descr = "(js)", priority = -1000, trigEngine = te("w")}, {
		t"justify-self ", i(0, "", {key = "i0"})
	}),
	s({trig = "js:s", descr = "(js:s)", priority = -1000, trigEngine = te("w")}, {
		t"justify-self start"
	}),
	s({trig = "js:e", descr = "(js:e)", priority = -1000, trigEngine = te("w")}, {
		t"justify-self end"
	}),
	s({trig = "js:c", descr = "(js:c)", priority = -1000, trigEngine = te("w")}, {
		t"justify-self center"
	}),
	s({trig = "js:st", descr = "(js:st)", priority = -1000, trigEngine = te("w")}, {
		t"justify-self stretch"
	}),
})
