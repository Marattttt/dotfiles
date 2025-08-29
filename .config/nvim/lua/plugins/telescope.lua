return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-media-files.nvim' },

	extensions = {
		media_files = {
			-- filetypes whitelist
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg" },
			-- find command (defaults to `fd`)
			-- find_cmd = "rg"
		}
	},

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
		    },
		    require("telescope").setup(opts)
	end
}
