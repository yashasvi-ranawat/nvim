return {
  'maxmx03/solarized.nvim',
  config = function()
    vim.o.termguicolors = true
    vim.o.background = 'light'
    require('solarized').setup()
    vim.cmd.colorscheme('solarized')
  end,
}
