return {
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		opts = {},

		init = function()
			vim.cmd.colorscheme("ayu")
		end,

		-- lhkeflkej
		config = function()
			require("ayu").setup({
				mirage = true,
				overrides = {
					Normal = { bg = "None" },
					Comment = { fg = "#aaaaaa" },
					ColorColumn = { bg = "None" },
					SignColumn = { bg = "None" },
					Folded = { bg = "None" },
					FoldColumn = { bg = "None" },
					CursorColumn = { bg = "None" },
					WhichKeyFloat = { bg = "None" },
					VertSplit = { bg = "None" },
				},
			})
		end,
	},
}
