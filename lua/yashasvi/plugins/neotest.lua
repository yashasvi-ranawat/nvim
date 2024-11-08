return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-neotest/neotest-python"
    },

    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-python")({
                }),
            },
        })

        vim.keymap.set("n", "<leader>t", function() require("neotest").run.run() end)
        vim.keymap.set("n", "<leader>ta", function() require("neotest").run.attach() end)
        vim.keymap.set("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end)
        vim.keymap.set("n", "<leader>tt", function()
            require("neotest").run.run(vim.fn.expand("%"))
        end)
    end
}
