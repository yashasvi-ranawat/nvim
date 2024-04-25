return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config =function ()
    require("oil").setup({
        keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
        },
        view_options = {
            show_hidden = true,
        }
    })
  end
}
