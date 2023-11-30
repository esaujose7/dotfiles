local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
   sorting_strategy = "ascending", 
   mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

vim.keymap.set('n', '<C-p>', "<Cmd>Telescope find_files<CR>", { noremap = true })
vim.keymap.set('n', '<leader>ps', "<Cmd>Telescope live_grep<CR>", { noremap = true })
