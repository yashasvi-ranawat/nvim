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
            sections = {lualine_c = {{"filename", path=1 }}}
        })
    end
}
