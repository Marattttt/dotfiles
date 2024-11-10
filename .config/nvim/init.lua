vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true

vim.wo.number = true

vim.opt.undofile = true
vim.opt.undolevels = 2000

require("config.lazy")
require("config.lazydev")

require("oil").setup({
	view_options = {
		show_hidden = true
	}
})

require("cyberdream").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require('mini.surround').setup()

require("scripts.setuplsp")
require("scripts.keymaps")

