return {
    "Pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup {
            -- your config goes here
            -- or just leave it empty :)
            condition = function(buf)
                local fn = vim.fn
                local utils = require("auto-save.utils.data")

                if
                    fn.getbufvar(buf, "&modifiable") == 1 and
                    utils.not_in(fn.getbufvar(buf, "&filetype"), {"oil", "fugitive", "TelescopePrompt", "gitcommit"}) then
                    return true -- met condition(s), can save
                end
                return false -- can't save
            end,
        }
    end,
}
