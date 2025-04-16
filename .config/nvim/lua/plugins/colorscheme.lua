-- return {
-- 	{
-- 		"scottmckendry/cyberdream.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			-- vim.cmd("highlight Normal guibg=none")
-- 			-- vim.cmd("highlight NonText guibg=none")
-- 			-- vim.cmd("highlight LineNr ctermbg=white")
-- 			-- vim.cmd("highlight Normal ctermbg=none")
-- 			-- vim.cmd("highlight NonText ctermbg=none")
-- 		end,
-- 	},
-- }

return {
	"EdenEast/nightfox.nvim",
	config = function ()
		require('nightfox').setup({
			options = { transparent = true }
		})
		
	end
}
