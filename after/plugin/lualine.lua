require('lualine').setup({
  options = {
    -- ... your lualine config
    theme = 'solarized'
    -- ... your lualine config
  },
  sections = {lualine_c = {{"filename", path=1 }}}
})
