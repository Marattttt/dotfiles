return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
		local opts = {
			pickers = {
				find_files = {
					ignore_hidden = false,
					find_command = {
						"/usr/bin/rg",
						"--no-heading",
						"--with-filename",
						"--files",
						"--hidden",
						"--no-ignore",
						"--ignore-file=/home/marat/.config/nvim/.ignore",
					}
				}
			}
		}
		require("telescope").setup(opts)
	end
}
