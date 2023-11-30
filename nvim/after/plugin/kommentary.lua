vim.g.kommentary_create_default_mappings = 0

vim.keymap.set('n', '<leader>cc', "<Plug>kommentary_line_default", { noremap = false })
vim.keymap.set('n', '<leader>c', "<Plug>kommentary_motion_default", { noremap = false })
vim.keymap.set('x', '<leader>c', "<Plug>kommentary_visual_default", { noremap = false })
