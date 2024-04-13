-- return {
-- 	{
-- 		"Shatur/neovim-ayu",
-- 		priority = 1000,
-- 		opts = {},
--
-- 		init = function()
-- 			vim.cmd.colorscheme("ayu")
-- 		end,
--
-- 		-- lhkeflkej
-- 		config = function()
-- 			require("ayu").setup({
-- 				mirage = true,
-- 				overrides = {
-- 					Normal = { bg = "None" },
-- 					Comment = { fg = "#aaaaaa" },
-- 					ColorColumn = { bg = "None" },
-- 					SignColumn = { bg = "None" },
-- 					Folded = { bg = "None" },
-- 					FoldColumn = { bg = "None" },
-- 					CursorColumn = { bg = "None" },
-- 					WhichKeyFloat = { bg = "None" },
-- 					VertSplit = { bg = "None" },
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
return {
	{
		"marko-cerovac/material.nvim",
		priority = 1000,
		opts = {},

		config = function()
			require("material").setup({
				plugins = {
					"dap",
					"nvim-cmp",
					"nvim-web-devicons",
					"telescope",
					"which-key",
					"nvim-notify",
				},
				lualine_style = "Default",
			})

			vim.g.material_style = ""
			vim.cmd("colorscheme material")
			-- print("ehehehehheeh")
			vim.cmd("highlight Normal guibg=none")
			vim.cmd("highlight NonText guibg=none")
			vim.cmd("highlight LineNr ctermbg=white")
			vim.cmd("highlight Normal ctermbg=none")
			vim.cmd("highlight NonText ctermbg=none")
		end,
	},
}
