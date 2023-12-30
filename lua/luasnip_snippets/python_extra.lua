local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")
local su = require("luasnip_snippets.common.snip_utils")
local te = su.trig_engine
local ts_utils = require("nvim-treesitter.ts_utils")
local tsq = vim.treesitter.query


local function copy(args)
	return args[1]
end


local function get_call_super(snip)
	local linenr = snip.env.TM_LINE_NUMBER
	local bufnr = vim.api.nvim_get_current_buf()
	local node = ts_utils.get_node_at_cursor()
	local function_definition_node = nil
	local class_definition_node = nil
	local class_name = nil
	local function_name = nil
	local function_parameters = {}
	while node ~= nil do
		if node:type() == 'function_definition' then
			function_definition_node = node
		end
		if node:type() == 'class_definition' then
			class_definition_node = node
			break
		end
		node = node:parent()
	end

	if class_definition_node ~= nil then
		local class_name_node = class_definition_node:field('name')[1]
		class_name = vim.treesitter.get_node_text(class_name_node, bufnr)
	end

	if function_definition_node ~= nil then
		local function_name_node = function_definition_node:field('name')[1]
		function_name = vim.treesitter.get_node_text(function_name_node, bufnr)
		local function_parameters_node = function_definition_node:field('parameters')[1]
		for parameter in function_parameters_node:iter_children() do
			local name = nil
			local parameter_type = parameter:type()
			if parameter_type == 'identifier' then
				table.insert(function_parameters, vim.treesitter.get_node_text(parameter, bufnr))
			elseif parameter_type == 'default_parameter' then
				table.insert(function_parameters, vim.treesitter.get_node_text(parameter:field('name')[1], bufnr))
			elseif parameter_type == 'typed_parameter' then
				table.insert(function_parameters, vim.treesitter.get_node_text(parameter:named_child(0), bufnr))
			elseif parameter_type == 'typed_default_parameter' then
				table.insert(function_parameters, vim.treesitter.get_node_text(parameter:field('name')[1], bufnr))
			elseif parameter_type == 'list_splat_pattern' then
				table.insert(function_parameters, '*' .. vim.treesitter.get_node_text(parameter:named_child(0), bufnr))
			elseif parameter_type == 'dictionary_splat_pattern' then
				table.insert(function_parameters, '**' .. vim.treesitter.get_node_text(parameter:named_child(0), bufnr))
			end
		end
	end

	if function_parameters[1] == 'self' then
		table.remove(function_parameters, 1)
	end

	if function_name == nil then
		return sn(nil, {})
	end

	return sn(nil, {
		t(function_name .. '('),
		i(1, table.concat(function_parameters, ', ')),
		t(')')
	})
end


ls.add_snippets("python", {
	s({trig = "(cs|callsuper)", descr = "((cs|callsuper)) \"Call super method\"", priority = 0, trigEngine = te("ir")}, {
		t('super().'),
		d(1, function(_, snip) return get_call_super(snip) end, {}),
	}),
})
