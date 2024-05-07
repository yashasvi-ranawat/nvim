return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    config = function()
        require('lualine').setup({
            options = {
                -- ... your lualine config
                theme = 'solarized'
                -- ... your lualine config
            },
            sections = {
                lualine_b = {},
                lualine_c = { 'branch', 'diff', 'diagnostics' },
                lualine_x = { { "filename", path = 1 } },
                lualine_y = {},
            }
        })
    end
}
