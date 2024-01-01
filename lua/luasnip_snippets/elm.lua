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
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}},
	{{0, 0}, {1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}, {6, 6}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}, {2, 2}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}, {1, 1}},
	{{0, 0}},
	{{0, 0}},
	{},
	{},
	{{0, 0}, {1, 1}},
}
ls.add_snippets("elm", {
	s({trig = "mod", descr = "(mod)", priority = -1000, trigEngine = te("w")}, {
		t"module ", f(function(args, snip) return c_viml("substitute(substitute(expand(\'%:r\'), \'[/\\\\]\',\'.\',\'g\'),\'^\\%(\\l*\\.\\)\\?\',\'\',\'\')") end, {}), t" exposing (", i(1, "", {key = "i1"}), t")", nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(0, "Http", {key = "i0"})
	}),
	s({trig = "impe", descr = "(impe)", priority = -1000, trigEngine = te("w")}, {
		t"import ", i(1, "Html", {key = "i1"}), t" exposing (", i(0, "..", {key = "i0"}), t")"
	}),
	s({trig = "impae", descr = "(impae) \"Qualified import with exposing\"", priority = -50, trigEngine = te("")}, {
		t"import ", i(1, "Json.Encode", {key = "i1"}), t" as ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"elm", 4}, "snip.rv = t[1].split(\".\")[-1]", python_globals, args, snip, "", am[4])}, ""), {key = "i2"}) }) end), t" exposing (", i(0, "Value", {key = "i0"}), t")"
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" : ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fn1", descr = "(fn1)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" : ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), nl(),
		cp(1), t" ", i(4, "", {key = "i4"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fn2", descr = "(fn2)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" : ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), nl(),
		cp(1), t" ", i(5, "", {key = "i5"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fn3", descr = "(fn3)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" : ", i(2, "a", {key = "i2"}), t" -> ", i(3, "a", {key = "i3"}), t" -> ", i(4, "a", {key = "i4"}), t" -> ", i(5, "a", {key = "i5"}), nl(),
		cp(1), t" ", i(6, "", {key = "i6"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "fn0", descr = "(fn0)", priority = -1000, trigEngine = te("w")}, {
		i(1, "fn", {key = "i1"}), t" : ", i(2, "a", {key = "i2"}), nl(),
		cp(1), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "", {key = "i1"}), t" of", nl(),
		t"\t", i(2, "", {key = "i2"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"})
	}),
	s({trig = "-", descr = "(-)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t" ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"let", nl(),
		t"\t", i(1, "", {key = "i1"}), t" =", nl(),
		t"\t\t", i(2, "", {key = "i2"}), nl(),
		t"in", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if ", i(1, "", {key = "i1"}), t" then", nl(),
		t"\t", d(2, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i2"}) }) end), nl(),
		t"else", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "ty", descr = "(ty)", priority = -1000, trigEngine = te("w")}, {
		t"type ", i(1, "Msg", {key = "i1"}), nl(),
		t"\t= ", i(0, "", {key = "i0"})
	}),
	s({trig = "tya", descr = "(tya)", priority = -1000, trigEngine = te("w")}, {
		t"type alias ", i(1, "Model", {key = "i1"}), t" =", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		t"test \"", i(1, "", {key = "i1"}), t"\" <| \\_ -> ", i(0, "", {key = "i0"})
	}),
	s({trig = "desc", descr = "(desc)", priority = -1000, trigEngine = te("w")}, {
		t"describe \"", i(1, "", {key = "i1"}), t"\" [ ", i(0, "", {key = "i0"}), t" ]"
	}),
	s({trig = "doc", descr = "(doc)", priority = -1000, trigEngine = te("w")}, {
		t"{-| ", i(0, "", {key = "i0"}), nl(),
		t"-}"
	}),
	s({trig = "p", descr = "(p)", priority = -1000, trigEngine = te("w")}, {
		t"|> ", i(0, "", {key = "i0"})
	}),
	s({trig = "program", descr = "(program) Elm 0.18 program", priority = -1000, trigEngine = te("w")}, {
		t"import Html exposing (Html)", nl(),
		nl(),
		nl(),
		t"type alias Model =", nl(),
		t"\t{}", nl(),
		nl(),
		nl(),
		t"type Msg", nl(),
		t"\t= Noop", nl(),
		nl(),
		nl(),
		t"main : Program Never Model Msg", nl(),
		t"main =", nl(),
		t"\tHtml.program", nl(),
		t"\t\t{ init = init", nl(),
		t"\t\t, view = view", nl(),
		t"\t\t, update = update", nl(),
		t"\t\t, subscriptions = subscriptions", nl(),
		t"\t\t}", nl(),
		nl(),
		nl(),
		t"init : ( Model, Cmd Msg )", nl(),
		t"init =", nl(),
		t"\t{} ! []", nl(),
		nl(),
		nl(),
		t"update : Msg -> Model -> ( Model, Cmd Msg )", nl(),
		t"update msg model =", nl(),
		t"\tcase msg of", nl(),
		t"\t\tNoop ->", nl(),
		t"\t\t\tmodel ! []", nl(),
		nl(),
		nl(),
		t"subscriptions : Model -> Sub Msg", nl(),
		t"subscriptions model =", nl(),
		t"\tSub.none", nl(),
		nl(),
		nl(),
		t"view : Model -> Html Msg", nl(),
		t"view model =", nl(),
		t"\tHtml.text \"Hello, sailor!\""
	}),
	s({trig = "element", descr = "(element)", priority = -1000, trigEngine = te("w")}, {
		t"module Main exposing (Model, Msg(..), init, main, subscriptions, update, view)", nl(),
		nl(),
		t"import Browser", nl(),
		t"import Html exposing (..)", nl(),
		t"import Json.Encode", nl(),
		nl(),
		nl(),
		t"main : Program Flags Model Msg", nl(),
		t"main =", nl(),
		t"\tBrowser.element", nl(),
		t"\t\t{ init = init", nl(),
		t"\t\t, update = update", nl(),
		t"\t\t, subscriptions = subscriptions", nl(),
		t"\t\t, view = view", nl(),
		t"\t\t}", nl(),
		nl(),
		nl(),
		t"type alias Model =", nl(),
		t"\t{}", nl(),
		nl(),
		nl(),
		t"type alias Flags =", nl(),
		t"\tJson.Encode.Value", nl(),
		nl(),
		nl(),
		t"init : Flags -> ( Model, Cmd Msg )", nl(),
		t"init flags_ =", nl(),
		t"\t( {}", nl(),
		t"\t, Cmd.none", nl(),
		t"\t)", nl(),
		nl(),
		nl(),
		t"type Msg", nl(),
		t"\t= Noop", nl(),
		nl(),
		nl(),
		t"update : Msg -> Model -> ( Model, Cmd Msg )", nl(),
		t"update msg model =", nl(),
		t"\tcase msg of", nl(),
		t"\t\tNoop ->", nl(),
		t"\t\t\t( model", nl(),
		t"\t\t\t, Cmd.none", nl(),
		t"\t\t\t)", nl(),
		nl(),
		nl(),
		t"subscriptions : Model -> Sub Msg", nl(),
		t"subscriptions model =", nl(),
		t"\tSub.none", nl(),
		nl(),
		nl(),
		t"view : Model -> Html Msg", nl(),
		t"view model =", nl(),
		t"\th1 [] [ text \"Hello, world!\" ]"
	}),
	s({trig = "impa", descr = "(impa) \"Qualified import\"", priority = -50, trigEngine = te("")}, {
		t"import ", i(1, "Json.Encode", {key = "i1"}), t" as ", d(2, function(args, snip) return sn(nil, { i(1, jt({c_py({"elm", 22}, "snip.rv = t[1].split(\".\")[-1]", python_globals, args, snip, "", am[22])}, ""), {key = "i0"}) }) end)
	}),
})
