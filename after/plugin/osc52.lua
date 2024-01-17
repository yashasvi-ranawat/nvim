local osc = require('osc52')

vim.keymap.set('n', '<leader>c', osc.copy_operator, {expr = true})
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>c', osc.copy_visual)
