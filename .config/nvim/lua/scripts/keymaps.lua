local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search files' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help' })
vim.keymap.set('n', '<leader>s/', builtin.live_grep, { desc = 'Search in all files' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search in diagnostics' })
vim.keymap.set('n', '<leader>ss', builtin.lsp_workspace_symbols, { desc = 'Search in diagnostics' })

vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Go to references' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Go to definition' })

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'ReName' })

-- local godot_path_handle = io.popen('flatpak info --show-location org.godotengine.Godot')
-- local godot_path = godot_path_handle:read('*a')
-- godot_path_handle:close()
--
-- local ok, godot = pcall(require, godot_path)
-- if not ok then
-- 	return
-- end
--

-- local godot = require('godot')
--
-- vim.keymap.set('n', "<leader>dr", godot.debugger.debug)
-- vim.keymap.set('n', "<leader>dd", godot.debugger.debug_at_cursor)
-- vim.keymap.set('n', "<leader>dq", godot.debugger.quit)
-- vim.keymap.set('n', "<leader>dc", godot.debugger.continue)
-- vim.keymap.set('n', "<leader>ds", godot.debugger.step)
