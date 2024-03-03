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


ls.add_snippets("clojure", {
	s({trig = "comm", descr = "(comm)", priority = -1000, trigEngine = te("w")}, {
		t"(comment", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "condp", descr = "(condp)", priority = -1000, trigEngine = te("w")}, {
		t"(condp ", i(1, "pred", {key = "i1"}), t" ", i(2, "expr", {key = "i2"}), nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"(def ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "defm", descr = "(defm)", priority = -1000, trigEngine = te("w")}, {
		t"(defmethod ", i(1, "multifn", {key = "i1"}), t" \"", i(2, "doc-string", {key = "i2"}), t"\" ", i(3, "dispatch-val", {key = "i3"}), t" [", i(4, "args", {key = "i4"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "defmm", descr = "(defmm)", priority = -1000, trigEngine = te("w")}, {
		t"(defmulti ", i(1, "name", {key = "i1"}), t" \"", i(2, "doc-string", {key = "i2"}), t"\" ", i(0, "dispatch-fn", {key = "i0"}), t")"
	}),
	s({trig = "defma", descr = "(defma)", priority = -1000, trigEngine = te("w")}, {
		t"(defmacro ", i(1, "name", {key = "i1"}), t" \"", i(2, "doc-string", {key = "i2"}), t"\" ", i(0, "dispatch-fn", {key = "i0"}), t")"
	}),
	s({trig = "defn", descr = "(defn)", priority = -1000, trigEngine = te("w")}, {
		t"(defn ", i(1, "name", {key = "i1"}), t" \"", i(2, "doc-string", {key = "i2"}), t"\" [", i(3, "arg-list", {key = "i3"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "defp", descr = "(defp)", priority = -1000, trigEngine = te("w")}, {
		t"(defprotocol ", i(1, "name", {key = "i1"}), nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "defr", descr = "(defr)", priority = -1000, trigEngine = te("w")}, {
		t"(defrecord ", i(1, "name", {key = "i1"}), t" [", i(2, "fields", {key = "i2"}), t"]", nl(),
		t"\t", i(3, "protocol", {key = "i3"}), nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "deft", descr = "(deft)", priority = -1000, trigEngine = te("w")}, {
		t"(deftest ", i(1, "name", {key = "i1"}), nl(),
		t"\t(is (= ", i(0, "assertion", {key = "i0"}), t")))"
	}),
	s({trig = "is", descr = "(is)", priority = -1000, trigEngine = te("w")}, {
		t"(is (= ", i(1, "", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t"))"
	}),
	s({trig = "defty", descr = "(defty)", priority = -1000, trigEngine = te("w")}, {
		t"(deftype ", i(1, "Name", {key = "i1"}), t" [", i(2, "fields", {key = "i2"}), t"]", nl(),
		t"\t", i(3, "Protocol", {key = "i3"}), nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "doseq", descr = "(doseq)", priority = -1000, trigEngine = te("w")}, {
		t"(doseq [", i(1, "elem", {key = "i1"}), t" ", i(2, "coll", {key = "i2"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "fn", descr = "(fn)", priority = -1000, trigEngine = te("w")}, {
		t"(fn [", i(1, "arg-list", {key = "i1"}), t"] ", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"(if ", i(1, "test-expr", {key = "i1"}), nl(),
		t"\t", i(2, "then-expr", {key = "i2"}), nl(),
		t"\t", i(0, "else-expr", {key = "i0"}), t")"
	}),
	s({trig = "if-let", descr = "(if-let)", priority = -1000, trigEngine = te("w")}, {
		t"(if-let [", i(1, "result", {key = "i1"}), t" ", i(2, "test-expr", {key = "i2"}), t"]", nl(),
		t"\t(", i(3, "then-expr", {key = "i3"}), t" ", cp(1), t")", nl(),
		t"\t(", i(0, "else-expr", {key = "i0"}), t"))"
	}),
	s({trig = "imp", descr = "(imp)", priority = -1000, trigEngine = te("w")}, {
		t"(:import [", i(1, "package", {key = "i1"}), t"])", nl(),
		t"\t& {:keys [", i(1, "keys", {key = "i1"}), t"] :or {", i(0, "defaults", {key = "i0"}), t"}}"
	}),
	s({trig = "let", descr = "(let)", priority = -1000, trigEngine = te("w")}, {
		t"(let [", i(1, "name", {key = "i1"}), t" ", i(2, "expr", {key = "i2"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "letfn", descr = "(letfn)", priority = -1000, trigEngine = te("w")}, {
		t"(letfn [(", i(1, "name", {key = "i1"}), t") [", i(2, "args", {key = "i2"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")])"
	}),
	s({trig = "map", descr = "(map)", priority = -1000, trigEngine = te("w")}, {
		t"(map ", i(1, "func", {key = "i1"}), t" ", i(0, "coll", {key = "i0"}), t")"
	}),
	s({trig = "mapl", descr = "(mapl)", priority = -1000, trigEngine = te("w")}, {
		t"(map #(", i(1, "lambda", {key = "i1"}), t") ", i(0, "coll", {key = "i0"}), t")"
	}),
	s({trig = "met", descr = "(met)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "name", {key = "i1"}), t" [", i(2, "this", {key = "i2"}), t" ", i(3, "args", {key = "i3"}), t"]", nl(),
		t"\t", i(0, "code", {key = "i0"}), t")"
	}),
	s({trig = "ns", descr = "(ns)", priority = -1000, trigEngine = te("w")}, {
		t"(ns ", i(0, "name", {key = "i0"}), t")"
	}),
	s({trig = "dotimes", descr = "(dotimes)", priority = -1000, trigEngine = te("w")}, {
		t"(dotimes [_ 10]", nl(),
		t"\t(time", nl(),
		t"\t\t(dotimes [_ ", i(1, "times", {key = "i1"}), t"]", nl(),
		t"\t\t\t", i(0, "code", {key = "i0"}), t")))"
	}),
	s({trig = "pmethod", descr = "(pmethod)", priority = -1000, trigEngine = te("w")}, {
		t"(", i(1, "name", {key = "i1"}), t" [", i(2, "this", {key = "i2"}), t" ", i(0, "args", {key = "i0"}), t"])"
	}),
	s({trig = "refer", descr = "(refer)", priority = -1000, trigEngine = te("w")}, {
		t"(:refer-clojure :exclude [", i(0, "", {key = "i0"}), t"])"
	}),
	s({trig = "require", descr = "(require)", priority = -1000, trigEngine = te("w")}, {
		t"(:require [", i(1, "namespace", {key = "i1"}), t" :as [", i(0, "", {key = "i0"}), t"]])"
	}),
	s({trig = "use", descr = "(use)", priority = -1000, trigEngine = te("w")}, {
		t"(:use [", i(1, "namespace", {key = "i1"}), t" :only [", i(0, "", {key = "i0"}), t"]])"
	}),
	s({trig = "print", descr = "(print)", priority = -1000, trigEngine = te("w")}, {
		t"(println ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "reduce", descr = "(reduce)", priority = -1000, trigEngine = te("w")}, {
		t"(reduce ", i(1, "(fn [p n] ${3})", {key = "i1"}), t" ", i(2, "", {key = "i2"}), t")"
	}),
	s({trig = "when", descr = "(when)", priority = -1000, trigEngine = te("w")}, {
		t"(when ", i(1, "test", {key = "i1"}), t" ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "when-let", descr = "(when-let)", priority = -1000, trigEngine = te("w")}, {
		t"(when-let [", i(1, "result", {key = "i1"}), t" ", i(2, "test", {key = "i2"}), t"]", nl(),
		t"\t", i(0, "", {key = "i0"}), t")"
	}),
})
