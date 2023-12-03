local io = require("io")

local ls = require("luasnip")
local util = require("luasnip.util.util")
local f = ls.function_node
local t = ls.text_node
local k = require("luasnip.nodes.key_indexer").new_key
local rundir = debug.getinfo(1).source:match("@?(.*/)")

local python_helper_loaded = false


local filetype_includes = {}
local filetype_mapping_fp = io.open(rundir .. 'filetype_includes.txt')
if filetype_mapping_fp ~= nil then
	while true do
		local line = filetype_mapping_fp:read('*line')
		if line == nil then
			break
		end
		filetype = nil
		aliases = {}
		for word in line:gmatch("[^%s]+") do
			if filetype == nil then
				filetype = word
			else
				table.insert(aliases, word)
			end
		end
		if filetype ~= nil then
			filetype_includes[filetype] = aliases
		end
	end
	filetype_mapping_fp:close()
end

local function script_path()
	local str = debug.getinfo(2, "S").source:sub(2)
	return str:match("(.*/)")
end

local function copy_helper(args)
	return args[1]
end

-- Copy node
local function copy(num)
	return f(copy_helper, k('i' .. num))
end

-- Join text
local function join_text(args, indent)
	local parts = {}
	for i, part in ipairs(args) do
		if type(part) == 'table' then
			part = table.concat(part, '\n')
		end
		table.insert(parts, part)
	end

	local text = table.concat(parts)
	local lines = {}

	local line_num = 1
	for line in text:gmatch("[^\r\n]+") do
		if line_num == 1 then
			table.insert(lines, line)
		else
			table.insert(lines, indent .. line)
		end
		line_num = line_num + 1
	end

	return lines
end

-- New line
local new_line = function() return t{"", ""} end

local function ft_func(num)
	return vim.split(vim.bo.filetype, ".", true)
end

local function vis()
	return f(function(_, snip)
		return snip.env.TM_SELECTED_TEXT[1] or {}
	end, {})
end

local function split_at_whitespace(text)
	local words = {}
	local position = 1
	for space in string.gmatch(text, '()%s') do
		table.insert(words, string.sub(text, position, space - 1))
		position = space + 1
	end
	table.insert(words, string.sub(text, position))

	return words
end

function arrays_equal(a, b)
	if #a ~= #b then
		return false
	end

	for i = 1, #a do
		if a[i] ~= b[i] then
			return false
		end
	end

	return true
end

function str_strip(s, chars)
	return string.gsub(s, '^[%s]*(.-)[%s]*$', '%1')
end


local function words_for_line(trigger, before, num_words)
	-- Gets the final 'num_words' words from 'before'.
	-- If num_words is nil, then use the number of words in 'trigger'.
	if num_words == nil then
		num_words = #split_at_whitespace(trigger)
	end

	word_list = split_at_whitespace(before)
	if #word_list <= num_words then
		return str_strip(before)
	else
		local before_words = before:reverse()
		for i = 1, num_words do
			local left = before_words:find(word_list[#word_list - i + 1]:reverse(), 1, true)
			if left then
				before_words = before_words:sub(#word_list[#word_list - i + 1] + left)
			end
		end
		return str_strip(before:sub(#before_words + 1))
	end
end


local function is_keyword_char(char)
	local is_keyword = vim.fn.search("\\<" .. char .. "\\>", "nw")
	return is_keyword ~= 0
end


local function trig_engine(opts)
	local function engine(trigger)
		local function matcher(line_to_cursor, trigger)
			--local trigger_words = split_at_whitespace(trigger)
			local words = words_for_line(trigger, line_to_cursor)
			local matched = nil
			local first_char = 0
			local last_char = 0

			if opts:find('w') ~= nil then
				local words_len = #trigger
				local words_prefix = string.sub(words, 1, -words_len - 1)
				local words_suffix = string.sub(words, -words_len)
				local match = words_suffix == trigger
				if match and #words_prefix > 0 then
					match = vim.fn.match(string.sub(words_prefix, -1), '\\k') == -1
				end

				if match then
					matched = trigger
					first_char = #line_to_cursor - line_to_cursor:reverse():find(trigger:reverse(), 1, true) - #trigger
					last_char = first_char + #trigger
				end
			elseif opts:find("i") ~= nil then
				local match = words:sub(-#trigger) == trigger
				if match then
					matched = trigger
					last_char = #line_to_cursor
					first_char = last_char - #trigger
				end
			else
				local match = words == trigger
				if match then
					matched = trigger
					last_char = #line_to_cursor - line_to_cursor:reverse():find(trigger:reverse(), 1, true) + 1
					first_char = last_char - #trigger
				end
			end

			-- only on beginning of line or only whitespace before trigger
			if matched ~= nil and opts:find('b') ~= nil then
				local content_before_trigger = line_to_cursor:sub(1, first_char)
				if content_before_trigger:gsub("[%s\t]+", "") ~= '' then
					return nil
				end
			end

			if matched ~= nil then
				return matched, {first_char, last_char}
			end
		end
		return matcher
	end
	return engine
end

local load_ft_func_base = require("luasnip.extras.filetype_functions").extend_load_ft(filetype_includes)
local function load_ft_func(bufnr)
	local res = load_ft_func_base(bufnr)
	vim.list_extend(res, filetype_includes['all'])
	return res
end

local function load_python_helper()
	if not python_helper_loaded then
		python_helper_loaded = true
		vim.cmd('python3 import luasnip_snippets_python_helper')
	end
end

local function call_python(python_function_name, opts)
	load_python_helper()
	vim.g.snip_utils_kwargs = opts
	local result = vim.fn.py3eval('luasnip_snippets_python_helper.' .. python_function_name .. '(**(__import__("vim").vars.get("snip_utils_kwargs", {})))')
	vim.g.snip_utils_kwargs = nil
	return result
end

local function code_python(id, node_code, global_code, args, snip, indent)
	return call_python("execute_code", {node_id=id, node_code=node_code, global_code=global_code, tabstops=args, env=snip.env, indent=indent})
end

local function code_viml(code)
	return join_text({vim.api.nvim_eval(code), ''})
end

-- Remove new line at end of the string
local function chomp(string)
	if string:sub(-1) == "\n" then
		string = string:sub(1, -2)
	end
	if string:sub(-1) == "\r" then
		string = string:sub(1, -2)
	end
	return string
end


local function run_shell_command(cmd)
	local handle = io.popen(cmd, 'r')
	local output = handle:read("*a")
	handle:close()
	return chomp(output)
end


local function code_shell(code)
	return join_text({run_shell_command(code)})
end


local function setup()
	local ls = require('luasnip')
	local module_path = script_path()
	require("luasnip.loaders.from_lua").lazy_load({
		paths = { module_path }
	})

	for filetype, extends in pairs(filetype_includes) do
		ls.filetype_extend(filetype, extends)
	end
end

return {
	copy = copy,
	join_text = join_text,
	new_line = new_line,
	trig_engine = trig_engine,
	vis = vis,
	ft_func = ft_func,
	load_ft_func = load_ft_func,
	setup = setup,
	code_python = code_python,
	code_viml = code_viml,
	code_shell = code_shell,
}
