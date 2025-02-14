return {
    "Vigemus/iron.nvim",
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        local common = require("iron.fts.common")

        iron.setup {
            config = {
                scratch_repl = true,
                repl_definition = {
                    sh = {
                        command = { "bash" }
                    },
                    python = {
                        command = { "python3" },
                        format = common.bracketed_paste_python,
                        block_deviders = { "# %%", "#%%" },
                    }
                },
                repl_filetype = function(bufnr, ft)
                    return "iron"
                end,
                repl_open_cmd = view.split.below("%25"),
            },
            keymaps = {
                toggle_repl = "<space>rr",
                restart_repl = "<space>rR",
                visual_send = "<space>rs",
                send_file = "<space>rf",
                cr = "<space>r<cr>",
                interrupt = "<space>r<space>",
                exit = "<space>rq",
                clear = "<space>rc",
            },
            ignore_blank_lines = true,
        }
    end
}
