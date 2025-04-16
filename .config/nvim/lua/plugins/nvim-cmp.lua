local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
}


M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<tab>"] = cmp.mapping.select_next_item(), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			["<Down>"] = cmp.mapping.select_next_item(), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			["<S-tab>"] = cmp.mapping.select_prev_item(),
			["<Up>"] = cmp.mapping.select_prev_item(),

			["<C-y>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = "jupynium", priority = 1000 }, -- consider higher priority than LSP
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" }, -- For luasnip users.
			-- { name = "orgmode" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),

		sorting = {
			priority_weight = 1.0,
			comparators = {
				cmp.config.compare.score, -- Jupyter kernel completion shows prior to LSP
				cmp.config.compare.recently_used,
				cmp.config.compare.locality,
			},
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M
