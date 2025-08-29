vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true
vim.g.magma_image_provider = "kitty"
-- vim.api.nvim_set_var('prettier#autoformat_require_pragma', 1)
-- vim.api.nvim_set_var('prettier#autoformat', 1)

vim.wo.number = true

vim.opt.undofile = true
vim.opt.undolevels = 2000
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.diagnostic.config({ virtual_text = false })

require("config.lazy")
require("config.lazydev")

require("oil").setup({
	view_options = {
		show_hidden = true
	},
	columns = {
		'icon',
		-- 'permissions',
		'size',
		'mtime',
	}
})

-- require("cyberdream").setup()
-- vim.cmd("colorscheme cyberdream")
vim.cmd("colorscheme duskfox")

require("gitsigns").setup({})

require("trouble").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require('mini.surround').setup()
require("nvim-ts-autotag").setup()
require("image").setup()
require("ibl").setup()

-- require('indent-o-matic').setup {
-- 	-- The values indicated here are the defaults
--
-- 	-- Number of lines without indentation before giving up (use -1 for infinite)
-- 	max_lines = 2048,
--
-- 	-- Space indentations that should be detected
-- 	standard_widths = { 2, 4 },
--
-- 	-- Skip multi-line comments and strings (more accurate detection but less performant)
-- 	skip_multiline = true,
-- }
--
-- local godot_path_handle = io.popen('flatpak info --show-location org.godotengine.Godot')
-- local godot_path = godot_path_handle:read('*a')
-- godot_path_handle:close()
--
-- require('godot').setup({
-- 	bin = godot_path,
-- 	-- gui = {
-- 	-- 	console_config =
-- 	--}
-- })
-- require('scripts.setupgodot')

require("scripts.setuplsp")
require("scripts.keymaps")
require("scripts.autocommands")
