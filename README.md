Native luasnip snippets
=======================

This repository contains luasnip snippets ported from [vim-snippets](https://github.com/honza/vim-snippets) repository

Screenshots
-----------

![Screenshot](https://raw.github.com/wiki/mireq/luasnip-snippets/snippets.gif)

Installation
------------

Use following code to configure snippets using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
require("lazy").setup({
	{
		'mireq/luasnip-snippets',
		dependencies = {'L3MON4D3/LuaSnip'},
		init = function() require('luasnip_snippets.snip_utils').setup() end
	},
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
		build = "make install_jsregexp",
		init = function()
			local ls = require('luasnip')
			ls.setup({
				load_ft_func = require('luasnip_snippets.snip_utils').load_ft_func,
				ft_func = require('luasnip_snippets.snip_utils').ft_func,
			})
			// Other settings …
		end
	},
})
```
