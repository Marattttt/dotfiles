local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search files' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help' })
vim.keymap.set('n', '<leader>s/', builtin.live_grep, { desc = 'Search in all files' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search in diagnostics' })

vim.keymap.set('n', '<leader>gr', builtin.lsp_references, { desc = 'Go to references' })
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, { desc = 'Go to definition' })

vim.keymap.set('n', '<leader>Gs', builtin.git_status, { desc = 'Git status' })



