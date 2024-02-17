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
	{1},
	{0, 1},
	{0},
	{0, 1},
	{1, 2},
	{0, 1},
	{1},
	{1, 2},
	{1},
	{0, 1},
	{0, 1},
	{1},
	{0, 1},
	{0, 1, 2},
	{1, 2},
	{0, 1, 2},
	{},
	{1, 2, 3},
	{0},
	{0},
	{},
	{0},
	{},
	{0, 1},
	{0, 1, 2},
	{0},
	{0},
	{0},
	{0, 1},
	{0},
	{0, 1},
	{0, 1},
	{0},
	{0},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1},
	{0, 1, 2},
	{0},
	{1, 2, 3, 4},
	{1, 2, 3, 4},
	{1, 2, 3},
}
ls.add_snippets("erlang", {
	s({trig = "mod", descr = "(mod) \"Module Directive\"", priority = -50, trigEngine = te("b")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_py({"erlang", 1}, "snip.rv = snip.basename or \"module\"", python_globals, args, snip, "", am[1])}, ""), {key = "i1"}) }) end), t")."
	}),
	s({trig = "modall", descr = "(modall)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t").", nl(),
		t"-compile([export_all]).", nl(),
		nl(),
		t"start() ->", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"stop() ->", nl(),
		t"\tok."
	}),
	s({trig = "d", descr = "(d)", priority = -1000, trigEngine = te("w")}, {
		t"erlang:display(", i(0, "", {key = "i0"}), t"),"
	}),
	s({trig = "dt", descr = "(dt)", priority = -1000, trigEngine = te("w")}, {
		t"erlang:display({", i(1, "", {key = "i1"}), t", ", i(0, "", {key = "i0"}), t"}),"
	}),
	s({trig = "def", descr = "(def)", priority = -1000, trigEngine = te("w")}, {
		t"-define(", i(1, "macro", {key = "i1"}), t", ", i(2, "", {key = "i2"}), t")."
	}),
	s({trig = "exp", descr = "(exp)", priority = -1000, trigEngine = te("w")}, {
		t"-export([", i(1, "function", {key = "i1"}), t"/", i(0, "arity", {key = "i0"}), t"])."
	}),
	s({trig = "inc", descr = "(inc)", priority = -1000, trigEngine = te("w")}, {
		t"-include(\"", i(1, "file", {key = "i1"}), t"\")."
	}),
	s({trig = "incl", descr = "(incl)", priority = -1000, trigEngine = te("w")}, {
		t"-include_lib(\"", i(1, "lib", {key = "i1"}), t"/include/", cp(1), t".hrl\").", i(2, "", {key = "i2"})
	}),
	s({trig = "beh", descr = "(beh)", priority = -1000, trigEngine = te("w")}, {
		t"-behaviour(", i(1, "behaviour", {key = "i1"}), t")."
	}),
	s({trig = "ifd", descr = "(ifd)", priority = -1000, trigEngine = te("w")}, {
		t"-ifdef(", i(1, "TEST", {key = "i1"}), t").", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"-endif."
	}),
	s({trig = "ifnd", descr = "(ifnd)", priority = -1000, trigEngine = te("w")}, {
		t"-ifndef(", i(1, "TEST", {key = "i1"}), t").", nl(),
		i(0, "", {key = "i0"}), nl(),
		t"-endif."
	}),
	s({trig = "undef", descr = "(undef)", priority = -1000, trigEngine = te("w")}, {
		t"-undef(", i(1, "macro", {key = "i1"}), t")."
	}),
	s({trig = "if", descr = "(if)", priority = -1000, trigEngine = te("w")}, {
		t"if", nl(),
		t"\t", i(1, "guard", {key = "i1"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "case", descr = "(case)", priority = -1000, trigEngine = te("w")}, {
		t"case ", i(1, "expression", {key = "i1"}), t" of", nl(),
		t"\t", i(2, "pattern", {key = "i2"}), t" ->", nl(),
		t"\t\t", i(0, "", {key = "i0"}), t";", nl(),
		t"end"
	}),
	s({trig = "fun", descr = "(fun)", priority = -1000, trigEngine = te("w")}, {
		t"fun (", i(1, "Parameters", {key = "i1"}), t") -> ", i(2, "", {key = "i2"}), t" end"
	}),
	s({trig = "try", descr = "(try)", priority = -1000, trigEngine = te("w")}, {
		t"try", nl(),
		t"\t", d(1, function(args, snip) return sn(nil, { i(1, jt({snip.env.LS_SELECT_DEDENT or {}}, "\t"), {key = "i1"}) }) end), nl(),
		t"catch", nl(),
		t"\t", i(2, "_:_", {key = "i2"}), t" -> ", i(0, "got_some_exception", {key = "i0"}), nl(),
		t"end"
	}),
	s({trig = "rcv", descr = "(rcv) \"Receive Expression\"", priority = -1000, trigEngine = te("w")}, {
		t"receive", nl(),
		t"${1:\t${2:pattern}${3: when ${4:guard}} ->", nl(),
		t"\t\t$5", nl(),
		t"${6:after", nl(),
		t"\t${7:expression} ->", nl(),
		t"\t\t$8", nl(),
		t"end"
	}),
	s({trig = "rec", descr = "(rec)", priority = -1000, trigEngine = te("w")}, {
		t"-record(", i(1, "record", {key = "i1"}), t", {", i(2, "field", {key = "i2"}), t"=", i(3, "value", {key = "i3"}), t"})."
	}),
	s({trig = "todo", descr = "(todo)", priority = -1000, trigEngine = te("w")}, {
		t"%% TODO: ", i(0, "", {key = "i0"})
	}),
	s({trig = "%d", descr = "(%d)", priority = -1000, trigEngine = te("w")}, {
		t"%% @doc ", i(0, "", {key = "i0"})
	}),
	s({trig = "%e", descr = "(%e)", priority = -1000, trigEngine = te("w")}, {
		t"%% @end"
	}),
	s({trig = "%s", descr = "(%s)", priority = -1000, trigEngine = te("w")}, {
		t"%% @spec ", i(0, "", {key = "i0"})
	}),
	s({trig = "%p", descr = "(%p)", priority = -1000, trigEngine = te("w")}, {
		t"%% @private"
	}),
	s({trig = "application", descr = "(application)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t").", nl(),
		nl(),
		t"-behaviour(application).", nl(),
		nl(),
		t"-export([start/2, stop/1]).", nl(),
		nl(),
		t"start(_Type, _StartArgs) ->", nl(),
		t"\tcase ", i(0, "root_supervisor", {key = "i0"}), t":start_link() of", nl(),
		t"\t\t{ok, Pid} ->", nl(),
		t"\t\t\t{ok, Pid};", nl(),
		t"\t\tOther ->", nl(),
		t"\t\t\t{error, Other}", nl(),
		t"\tend.", nl(),
		nl(),
		t"stop(_State) ->", nl(),
		t"\tok."
	}),
	s({trig = "supervisor", descr = "(supervisor)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t").", nl(),
		nl(),
		t"-behaviour(supervisor).", nl(),
		nl(),
		t"%% API", nl(),
		t"-export([start_link/0]).", nl(),
		nl(),
		t"%% Supervisor callbacks", nl(),
		t"-export([init/1]).", nl(),
		nl(),
		t"-define(SERVER, ?MODULE).", nl(),
		nl(),
		t"start_link() ->", nl(),
		t"\t\tsupervisor:start_link({local, ?SERVER}, ?MODULE, []).", nl(),
		nl(),
		t"init([]) ->", nl(),
		t"\tServer = {", i(0, "my_server", {key = "i0"}), t", {", i(2, "", {key = "i2"}), t", start_link, []},", nl(),
		t"\t\tpermanent, 2000, worker, [", cp(2), t"]},", nl(),
		t"\tChildren = [Server],", nl(),
		t"\tRestartStrategy = {one_for_one, 0, 1},", nl(),
		t"\t{ok, {RestartStrategy, Children}}."
	}),
	s({trig = "gen_server", descr = "(gen_server)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i0"}) }) end), t").", nl(),
		nl(),
		t"-behaviour(gen_server).", nl(),
		nl(),
		t"%% API", nl(),
		t"-export([start_link/0]).", nl(),
		nl(),
		t"%% gen_server callbacks", nl(),
		t"-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).", nl(),
		nl(),
		t"-define(SERVER, ?MODULE).", nl(),
		nl(),
		t"-record(state, {}).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% API", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"start_link() ->", nl(),
		t"\tgen_server:start_link({local, ?SERVER}, ?MODULE, [], []).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% gen_server callbacks", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"init([]) ->", nl(),
		t"\t{ok, #state{}}.", nl(),
		nl(),
		t"handle_call(_Request, _From, State) ->", nl(),
		t"\tReply = ok,", nl(),
		t"\t{reply, Reply, State}.", nl(),
		nl(),
		t"handle_cast(_Msg, State) ->", nl(),
		t"\t{noreply, State}.", nl(),
		nl(),
		t"handle_info(_Info, State) ->", nl(),
		t"\t{noreply, State}.", nl(),
		nl(),
		t"terminate(_Reason, _State) ->", nl(),
		t"\tok.", nl(),
		nl(),
		t"code_change(_OldVsn, State, _Extra) ->", nl(),
		t"\t{ok, State}.", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% Internal functions", nl(),
		t"%%%==================================================================="
	}),
	s({trig = "gen_fsm", descr = "(gen_fsm)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i0"}) }) end), t").", nl(),
		nl(),
		t"-behaviour(gen_fsm).", nl(),
		nl(),
		t"%% API", nl(),
		t"-export([start_link/0]).", nl(),
		nl(),
		t"%% gen_fsm callbacks", nl(),
		t"-export([init/1, state_name/2, state_name/3, handle_event/3, handle_sync_event/4,", nl(),
		t"\thandle_info/3, terminate/3, code_change/4]).", nl(),
		nl(),
		t"-record(state, {}).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% API", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @doc", nl(),
		t"%% Creates a gen_fsm process which calls Module:init/1 to", nl(),
		t"%% initialize. To ensure a synchronized start-up procedure, this", nl(),
		t"%% function does not return until Module:init/1 has returned.", nl(),
		t"%%", nl(),
		t"%% @spec start_link() -> {ok, Pid} | ignore | {error, Error}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"start_link() ->", nl(),
		t"\tgen_fsm:start_link({local, ?MODULE}, ?MODULE, [], []).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% gen_fsm callbacks", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever a gen_fsm is started using gen_fsm:start/[3,4] or", nl(),
		t"%% gen_fsm:start_link/[3,4], this function is called by the new", nl(),
		t"%% process to initialize.", nl(),
		t"%%", nl(),
		t"%% @spec init(Args) -> {ok, StateName, State} |", nl(),
		t"%%                     {ok, StateName, State, Timeout} |", nl(),
		t"%%                     ignore |", nl(),
		t"%%                     {stop, StopReason}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"init([]) ->", nl(),
		t"\t{ok, state_name, #state{}}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% There should be one instance of this function for each possible", nl(),
		t"%% state name. Whenever a gen_fsm receives an event sent using", nl(),
		t"%% gen_fsm:send_event/2, the instance of this function with the same", nl(),
		t"%% name as the current state name StateName is called to handle", nl(),
		t"%% the event. It is also called if a timeout occurs.", nl(),
		t"%%", nl(),
		t"%% @spec state_name(Event, State) ->", nl(),
		t"%%                   {next_state, NextStateName, NextState} |", nl(),
		t"%%                   {next_state, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {stop, Reason, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"state_name(_Event, State) ->", nl(),
		t"\t{next_state, state_name, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% There should be one instance of this function for each possible", nl(),
		t"%% state name. Whenever a gen_fsm receives an event sent using", nl(),
		t"%% gen_fsm:sync_send_event/[2,3], the instance of this function with", nl(),
		t"%% the same name as the current state name StateName is called to", nl(),
		t"%% handle the event.", nl(),
		t"%%", nl(),
		t"%% @spec state_name(Event, From, State) ->", nl(),
		t"%%                   {next_state, NextStateName, NextState} |", nl(),
		t"%%                   {next_state, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {reply, Reply, NextStateName, NextState} |", nl(),
		t"%%                   {reply, Reply, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {stop, Reason, NewState} |", nl(),
		t"%%                   {stop, Reason, Reply, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"state_name(_Event, _From, State) ->", nl(),
		t"\tReply = ok,", nl(),
		t"\t{reply, Reply, state_name, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever a gen_fsm receives an event sent using", nl(),
		t"%% gen_fsm:send_all_state_event/2, this function is called to handle", nl(),
		t"%% the event.", nl(),
		t"%%", nl(),
		t"%% @spec handle_event(Event, StateName, State) ->", nl(),
		t"%%                   {next_state, NextStateName, NextState} |", nl(),
		t"%%                   {next_state, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {stop, Reason, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_event(_Event, StateName, State) ->", nl(),
		t"\t{next_state, StateName, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever a gen_fsm receives an event sent using", nl(),
		t"%% gen_fsm:sync_send_all_state_event/[2,3], this function is called", nl(),
		t"%% to handle the event.", nl(),
		t"%%", nl(),
		t"%% @spec handle_sync_event(Event, From, StateName, State) ->", nl(),
		t"%%                   {next_state, NextStateName, NextState} |", nl(),
		t"%%                   {next_state, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {reply, Reply, NextStateName, NextState} |", nl(),
		t"%%                   {reply, Reply, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {stop, Reason, NewState} |", nl(),
		t"%%                   {stop, Reason, Reply, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_sync_event(_Event, _From, StateName, State) ->", nl(),
		t"\tReply = ok,", nl(),
		t"\t{reply, Reply, StateName, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% This function is called by a gen_fsm when it receives any", nl(),
		t"%% message other than a synchronous or asynchronous event", nl(),
		t"%% (or a system message).", nl(),
		t"%%", nl(),
		t"%% @spec handle_info(Info,StateName,State)->", nl(),
		t"%%                   {next_state, NextStateName, NextState} |", nl(),
		t"%%                   {next_state, NextStateName, NextState, Timeout} |", nl(),
		t"%%                   {stop, Reason, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_info(_Info, StateName, State) ->", nl(),
		t"\t{next_state, StateName, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% This function is called by a gen_fsm when it is about to", nl(),
		t"%% terminate. It should be the opposite of Module:init/1 and do any", nl(),
		t"%% necessary cleaning up. When it returns, the gen_fsm terminates with", nl(),
		t"%% Reason. The return value is ignored.", nl(),
		t"%%", nl(),
		t"%% @spec terminate(Reason, StateName, State) -> void()", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"terminate(_Reason, _StateName, _State) ->", nl(),
		t"\tok.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Convert process state when code is changed", nl(),
		t"%%", nl(),
		t"%% @spec code_change(OldVsn, StateName, State, Extra) ->", nl(),
		t"%%                   {ok, StateName, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"code_change(_OldVsn, StateName, State, _Extra) ->", nl(),
		t"\t{ok, StateName, State}.", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% Internal functions", nl(),
		t"%%%==================================================================="
	}),
	s({trig = "gen_event", descr = "(gen_event)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i0"}) }) end), t").", nl(),
		nl(),
		t"-behaviour(gen_event).", nl(),
		nl(),
		t"%% API", nl(),
		t"-export([start_link/0,", nl(),
		t"\tadd_handler/2]).", nl(),
		nl(),
		t"%% gen_event callbacks", nl(),
		t"-export([init/1,", nl(),
		t"\thandle_event/2,", nl(),
		t"\thandle_call/2,", nl(),
		t"\thandle_info/2,", nl(),
		t"\tterminate/2,", nl(),
		t"\tcode_change/3]).", nl(),
		nl(),
		t"-record(state, {}).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% gen_event callbacks", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @doc", nl(),
		t"%% Creates an event manager", nl(),
		t"%%", nl(),
		t"%% @spec start_link() -> {ok, Pid} | {error, Error}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"start_link() ->", nl(),
		t"\tgen_event:start_link({local, ?MODULE}).", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @doc", nl(),
		t"%% Adds an event handler", nl(),
		t"%%", nl(),
		t"%% @spec add_handler(Handler, Args) -> ok | {\'EXIT\', Reason} | term()", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"add_handler(Handler, Args) ->", nl(),
		t"\tgen_event:add_handler(?MODULE, Handler, Args).", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% gen_event callbacks", nl(),
		t"%%%===================================================================", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever a new event handler is added to an event manager,", nl(),
		t"%% this function is called to initialize the event handler.", nl(),
		t"%%", nl(),
		t"%% @spec init(Args) -> {ok, State}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"init([]) ->", nl(),
		t"\t{ok, #state{}}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever an event manager receives an event sent using", nl(),
		t"%% gen_event:notify/2 or gen_event:sync_notify/2, this function is", nl(),
		t"%% called for each installed event handler to handle the event.", nl(),
		t"%%", nl(),
		t"%% @spec handle_event(Event, State) ->", nl(),
		t"%%                          {ok, State} |", nl(),
		t"%%                          {swap_handler, Args1, State1, Mod2, Args2} |", nl(),
		t"%%                          remove_handler", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_event(_Event, State) ->", nl(),
		t"\t{ok, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever an event manager receives a request sent using", nl(),
		t"%% gen_event:call/3,4, this function is called for the specified", nl(),
		t"%% event handler to handle the request.", nl(),
		t"%%", nl(),
		t"%% @spec handle_call(Request, State) ->", nl(),
		t"%%                   {ok, Reply, State} |", nl(),
		t"%%                   {swap_handler, Reply, Args1, State1, Mod2, Args2} |", nl(),
		t"%%                   {remove_handler, Reply}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_call(_Request, State) ->", nl(),
		t"\tReply = ok,", nl(),
		t"\t{ok, Reply, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% This function is called for each installed event handler when", nl(),
		t"%% an event manager receives any other message than an event or a", nl(),
		t"%% synchronous request (or a system message).", nl(),
		t"%%", nl(),
		t"%% @spec handle_info(Info, State) ->", nl(),
		t"%%                         {ok, State} |", nl(),
		t"%%                         {swap_handler, Args1, State1, Mod2, Args2} |", nl(),
		t"%%                         remove_handler", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"handle_info(_Info, State) ->", nl(),
		t"\t{ok, State}.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Whenever an event handler is deleted from an event manager, this", nl(),
		t"%% function is called. It should be the opposite of Module:init/1 and", nl(),
		t"%% do any necessary cleaning up.", nl(),
		t"%%", nl(),
		t"%% @spec terminate(Reason, State) -> void()", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"terminate(_Reason, _State) ->", nl(),
		t"\tok.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% @private", nl(),
		t"%% @doc", nl(),
		t"%% Convert process state when code is changed", nl(),
		t"%%", nl(),
		t"%% @spec code_change(OldVsn, State, Extra) -> {ok, NewState}", nl(),
		t"%% @end", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"code_change(_OldVsn, State, _Extra) ->", nl(),
		t"\t{ok, State}.", nl(),
		nl(),
		t"%%%===================================================================", nl(),
		t"%%% Internal functions", nl(),
		t"%%%==================================================================="
	}),
	s({trig = "eunit", descr = "(eunit)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i1"}) }) end), t").", nl(),
		t"-include_lib(\"eunit/include/eunit.hrl\").", nl(),
		nl(),
		i(0, "", {key = "i0"})
	}),
	s({trig = "ieunit", descr = "(ieunit)", priority = -1000, trigEngine = te("w")}, {
		t"-ifdef(TEST).", nl(),
		t"-include_lib(\"eunit/include/eunit.hrl\").", nl(),
		nl(),
		i(0, "", {key = "i0"}), nl(),
		nl(),
		t"-endif."
	}),
	s({trig = "itest", descr = "(itest)", priority = -1000, trigEngine = te("w")}, {
		t"-ifdef(TEST).", nl(),
		nl(),
		i(1, "", {key = "i1"}), t"_test() ->", nl(),
		t"\t", i(0, "", {key = "i0"}), nl(),
		nl(),
		t"-endif."
	}),
	s({trig = "test", descr = "(test)", priority = -1000, trigEngine = te("w")}, {
		i(1, "", {key = "i1"}), t"_test() ->", nl(),
		t"\t", i(0, "", {key = "i0"})
	}),
	s({trig = "as", descr = "(as)", priority = -1000, trigEngine = te("w")}, {
		t"?assert(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "asn", descr = "(asn)", priority = -1000, trigEngine = te("w")}, {
		t"?assertNot(", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "aseq", descr = "(aseq)", priority = -1000, trigEngine = te("w")}, {
		t"?assertEqual(", i(1, "", {key = "i1"}), t", ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "asneq", descr = "(asneq)", priority = -1000, trigEngine = te("w")}, {
		t"?assertNotEqual(", i(1, "", {key = "i1"}), t", ", i(0, "", {key = "i0"}), t")"
	}),
	s({trig = "asmat", descr = "(asmat)", priority = -1000, trigEngine = te("w")}, {
		t"?assertMatch(", i(1, "Pattern", {key = "i1"}), t", ", i(0, "Expression", {key = "i0"}), t")"
	}),
	s({trig = "asnmat", descr = "(asnmat)", priority = -1000, trigEngine = te("w")}, {
		t"?assertNotMatch(", i(1, "Pattern", {key = "i1"}), t", ", i(0, "Expression", {key = "i0"}), t")"
	}),
	s({trig = "aserr", descr = "(aserr)", priority = -1000, trigEngine = te("w")}, {
		t"?assertError(", i(1, "Pattern", {key = "i1"}), t", ", i(0, "Expression", {key = "i0"}), t")"
	}),
	s({trig = "asex", descr = "(asex)", priority = -1000, trigEngine = te("w")}, {
		t"?assertExit(", i(1, "Pattern", {key = "i1"}), t", ", i(0, "Expression", {key = "i0"}), t")"
	}),
	s({trig = "asexc", descr = "(asexc)", priority = -1000, trigEngine = te("w")}, {
		t"?assertException(", i(1, "Class", {key = "i1"}), t", ", i(2, "Pattern", {key = "i2"}), t", ", i(0, "Expression", {key = "i0"}), t")"
	}),
	s({trig = "testsuite", descr = "(testsuite)", priority = -1000, trigEngine = te("w")}, {
		t"-module(", d(1, function(args, snip) return sn(nil, { i(1, jt({c_viml("vim_snippets#Filename()")}, ""), {key = "i0"}) }) end), t").", nl(),
		nl(),
		t"-include_lib(\"common_test/include/ct.hrl\").", nl(),
		nl(),
		t"%% Test server callbacks", nl(),
		t"-export([suite/0, all/0, groups/0,", nl(),
		t"\tinit_per_suite/1, end_per_suite/1,", nl(),
		t"\tinit_per_group/2, end_per_group/2,", nl(),
		t"\tinit_per_testcase/2, end_per_testcase/2]).", nl(),
		nl(),
		t"%% Test cases", nl(),
		t"-export([", nl(),
		t"\t]).", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% COMMON TEST CALLBACK FUNCTIONS", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: suite() -> Info", nl(),
		t"%%", nl(),
		t"%% Info = [tuple()]", nl(),
		t"%%   List of key/value pairs.", nl(),
		t"%%", nl(),
		t"%% Description: Returns list of tuples to set default properties", nl(),
		t"%%              for the suite.", nl(),
		t"%%", nl(),
		t"%% Note: The suite/0 function is only meant to be used to return", nl(),
		t"%% default data values, not perform any other operations.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"suite() ->", nl(),
		t"    [{timetrap,{minutes,10}}].", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: init_per_suite(Config0) ->", nl(),
		t"%%               Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}", nl(),
		t"%%", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding the test case configuration.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for skipping the suite.", nl(),
		t"%%", nl(),
		t"%% Description: Initialization before the suite.", nl(),
		t"%%", nl(),
		t"%% Note: This function is free to add any key/value pairs to the Config", nl(),
		t"%% variable, but should NOT alter/remove any existing entries.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"init_per_suite(Config) ->", nl(),
		t"    Config.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: end_per_suite(Config0) -> void() | {save_config,Config1}", nl(),
		t"%%", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding the test case configuration.", nl(),
		t"%%", nl(),
		t"%% Description: Cleanup after the suite.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"end_per_suite(_Config) ->", nl(),
		t"    ok.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: init_per_group(GroupName, Config0) ->", nl(),
		t"%%               Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}", nl(),
		t"%%", nl(),
		t"%% GroupName = atom()", nl(),
		t"%%   Name of the test case group that is about to run.", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding configuration data for the group.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for skipping all test cases and subgroups in the group.", nl(),
		t"%%", nl(),
		t"%% Description: Initialization before each test case group.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"init_per_group(_GroupName, Config) ->", nl(),
		t"    Config.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: end_per_group(GroupName, Config0) ->", nl(),
		t"%%               void() | {save_config,Config1}", nl(),
		t"%%", nl(),
		t"%% GroupName = atom()", nl(),
		t"%%   Name of the test case group that is finished.", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding configuration data for the group.", nl(),
		t"%%", nl(),
		t"%% Description: Cleanup after each test case group.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"end_per_group(_GroupName, _Config) ->", nl(),
		t"    ok.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: init_per_testcase(TestCase, Config0) ->", nl(),
		t"%%               Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}", nl(),
		t"%%", nl(),
		t"%% TestCase = atom()", nl(),
		t"%%   Name of the test case that is about to run.", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding the test case configuration.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for skipping the test case.", nl(),
		t"%%", nl(),
		t"%% Description: Initialization before each test case.", nl(),
		t"%%", nl(),
		t"%% Note: This function is free to add any key/value pairs to the Config", nl(),
		t"%% variable, but should NOT alter/remove any existing entries.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"init_per_testcase(_TestCase, Config) ->", nl(),
		t"    Config.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: end_per_testcase(TestCase, Config0) ->", nl(),
		t"%%               void() | {save_config,Config1} | {fail,Reason}", nl(),
		t"%%", nl(),
		t"%% TestCase = atom()", nl(),
		t"%%   Name of the test case that is finished.", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding the test case configuration.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for failing the test case.", nl(),
		t"%%", nl(),
		t"%% Description: Cleanup after each test case.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"end_per_testcase(_TestCase, _Config) ->", nl(),
		t"    ok.", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: groups() -> [Group]", nl(),
		t"%%", nl(),
		t"%% Group = {GroupName,Properties,GroupsAndTestCases}", nl(),
		t"%% GroupName = atom()", nl(),
		t"%%   The name of the group.", nl(),
		t"%% Properties = [parallel | sequence | Shuffle | {RepeatType,N}]", nl(),
		t"%%   Group properties that may be combined.", nl(),
		t"%% GroupsAndTestCases = [Group | {group,GroupName} | TestCase]", nl(),
		t"%% TestCase = atom()", nl(),
		t"%%   The name of a test case.", nl(),
		t"%% Shuffle = shuffle | {shuffle,Seed}", nl(),
		t"%%   To get cases executed in random order.", nl(),
		t"%% Seed = {integer(),integer(),integer()}", nl(),
		t"%% RepeatType = repeat | repeat_until_all_ok | repeat_until_all_fail |", nl(),
		t"%%              repeat_until_any_ok | repeat_until_any_fail", nl(),
		t"%%   To get execution of cases repeated.", nl(),
		t"%% N = integer() | forever", nl(),
		t"%%", nl(),
		t"%% Description: Returns a list of test case group definitions.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"groups() ->", nl(),
		t"    [].", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: all() -> GroupsAndTestCases | {skip,Reason}", nl(),
		t"%%", nl(),
		t"%% GroupsAndTestCases = [{group,GroupName} | TestCase]", nl(),
		t"%% GroupName = atom()", nl(),
		t"%%   Name of a test case group.", nl(),
		t"%% TestCase = atom()", nl(),
		t"%%   Name of a test case.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for skipping all groups and test cases.", nl(),
		t"%%", nl(),
		t"%% Description: Returns the list of groups and test cases that", nl(),
		t"%%              are to be executed.", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"all() ->", nl(),
		t"    [].", nl(),
		nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% TEST CASES", nl(),
		t"%%--------------------------------------------------------------------", nl(),
		nl(),
		t"%%--------------------------------------------------------------------", nl(),
		t"%% Function: TestCase(Config0) ->", nl(),
		t"%%               ok | exit() | {skip,Reason} | {comment,Comment} |", nl(),
		t"%%               {save_config,Config1} | {skip_and_save,Reason,Config1}", nl(),
		t"%%", nl(),
		t"%% Config0 = Config1 = [tuple()]", nl(),
		t"%%   A list of key/value pairs, holding the test case configuration.", nl(),
		t"%% Reason = term()", nl(),
		t"%%   The reason for skipping the test case.", nl(),
		t"%% Comment = term()", nl(),
		t"%%   A comment about the test case that will be printed in the html log.", nl(),
		t"%%", nl(),
		t"%% Description: Test case function. (The name of it must be specified in", nl(),
		t"%%              the all/0 list or in a test case group for the test case", nl(),
		t"%%              to be executed).", nl(),
		t"%%--------------------------------------------------------------------", nl()
	}),
	s({trig = "pat", descr = "(pat) \"Case:Receive:Try Clause\"", priority = -50, trigEngine = te("")}, {
		i(1, "pattern", {key = "i1"}), c(2, {{t" when ", i(1, "guard", {key = "i3"})}, {i(1, jt({" when ", "guard"}))}}, {key = "i2"}), t" ->", nl(),
		t"\t", i(3, "body", {key = "i4"})
	}),
	s({trig = "||", descr = "(||) \"List Comprehension\"", priority = -50, trigEngine = te("")}, {
		t"[", i(1, "X", {key = "i1"}), t" || ", i(2, "X", {key = "i2"}), t" <- ", i(3, "List", {key = "i3"}), i(4, ", gen", {key = "i4"}), t"]"
	}),
	s({trig = "gen", descr = "(gen) \"Generator Expression\"", priority = -50, trigEngine = te("")}, {
		i(1, "X", {key = "i1"}), t" <- ", i(2, "List", {key = "i2"}), i(3, ", gen", {key = "i3"})
	}),
})
