local builtin = require('telescope.builtin')

-- file/vim pickers
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

-- lsp pickers
vim.keymap.set("n", "<leader>pd", builtin.lsp_definitions, {})
vim.keymap.set("n", "<leader>pr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>pp", builtin.diagnostics, {})

-- treesitter
vim.keymap.set("n", "<leader>pt", builtin.treesitter, {})
