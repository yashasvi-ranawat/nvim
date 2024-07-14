return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    -- or branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local builtin = require('telescope.builtin')

        -- file pickers
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

        -- vim pickers
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

        -- lsp pickers
        vim.keymap.set("n", "<leader>pd", builtin.lsp_definitions, {})
        vim.keymap.set("n", "<leader>pr", builtin.lsp_references, {})
        vim.keymap.set("n", "<leader>pp", builtin.diagnostics, {})

        -- treesitter
        vim.keymap.set("n", "<leader>pt", builtin.treesitter, {})

        -- git pickers
        vim.keymap.set('n', '<leader>pb', builtin.git_branches, {})
    end
}
