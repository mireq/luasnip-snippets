Native luasnip snippets
=======================

This repository contains luasnip snippets ported from [vim-snippets](https://github.com/honza/vim-snippets) repository

Screenshots
-----------

![Screenshot](https://raw.github.com/wiki/mireq/luasnip-snippets/snippets.gif)

Installation
------------

Note: requires [pynvim](https://github.com/neovim/pynvim) (see `:help pynvim`).

This is complete configuration using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
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
			-- Mandatory setup function
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
			    -- Required to automatically include base snippets, like "c" snippets for "cpp"
				load_ft_func = require('luasnip_snippets.common.snip_utils').load_ft_func,
				ft_func = require('luasnip_snippets.common.snip_utils').ft_func,
				-- To enable auto expansion
				enable_autosnippets = true,
				-- Uncomment to enable visual snippets triggered using <c-x>
				-- store_selection_keys = '<c-x>',
			})
			-- LuaSnip key bindings
			vim.keymap.set({"i", "s"}, "<Tab>", function() if ls.expand_or_jumpable() then ls.expand_or_jump() else vim.api.nvim_input('<C-V><Tab>') end end, {silent = true})
			vim.keymap.set({"i", "s"}, "<S-Tab>", function() ls.jump(-1) end, {silent = true})
			vim.keymap.set({"i", "s"}, "<C-E>", function() if ls.choice_active() then ls.change_choice(1) end end, {silent = true})
		end
	},
})
```

Troubleshooting
---------------

Some snippets really needs jsregexp to be installed. If snippets are not working
correctly, try`:checkhealth` to check if jsregexp is installed.

For more informations check
[LuaSnip](https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#transformations)
documentation.
