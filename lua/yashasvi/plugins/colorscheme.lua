return {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('gruvbox').setup({
            contrast = 'soft',
        })
        vim.o.termguicolors = true
        vim.o.background = 'light'
        vim.cmd.colorscheme('gruvbox')
    end,
}
