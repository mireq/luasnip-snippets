local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{
		'mireq/luasnip-snippets',
		dependencies = {'L3MON4D3/LuaSnip'},
		init = function()
			require('luasnip_snippets.common.snip_utils').setup()
		end
	},
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
		build = "make install_jsregexp",
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
		},
		init = function()
			local ls = require('luasnip')
			ls.setup({
				load_ft_func = require('luasnip_snippets.common.snip_utils').load_ft_func,
				ft_func = require('luasnip_snippets.common.snip_utils').ft_func,
				enable_autosnippets = true,
				store_selection_keys = '<c-x>',
			})
			-- LuaSnip key bindings
			vim.keymap.set({"i", "s"}, "<Tab>", function() if ls.expand_or_jumpable() then ls.expand_or_jump() else vim.api.nvim_input('<C-V><Tab>') end end, {silent = true})
			vim.keymap.set({"i", "s"}, "<S-Tab>", function() ls.jump(-1) end, {silent = true})
			vim.keymap.set({"i", "s"}, "<C-E>", function() if ls.choice_active() then ls.change_choice(1) end end, {silent = true})
		end
	},
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		},
		config = function()
			local cmp = require('cmp')

			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'luasnip' },
				})
			})
		end,
	},
})
