-- Define a function to format the buffer
local format_on_save = function()
	vim.lsp.buf.format({
		async = false, -- Set to false if you want synchronous formatting
	})
end

-- Set up an autocmd for formatting on save
vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = '*', -- Use a specific filetype if you want, e.g., "*.lua"
	callback = function()
		format_on_save()
	end,
})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
	pattern = { "*.ts", "*.js", "*.tsx", "*jsx", "*css", "*.scss" },
	command = "Prettier"
})
