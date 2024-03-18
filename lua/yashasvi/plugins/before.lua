return {
  'bloznelis/before.nvim',
  config = function()
    local before = require('before')
    before.setup()

    -- Jump to previous entry in the edit history
    vim.keymap.set('n', '<C-b>', before.jump_to_last_edit, {})

    -- Jump to next entry in the edit history
    vim.keymap.set('n', '<C-n>', before.jump_to_next_edit, {})
  end
}
