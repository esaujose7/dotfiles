
local nnoremap = require("wafle.keymap").nnoremap

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

nnoremap("<C-p>", "<Cmd>Telescope find_files<CR>")
nnoremap("<leader>ps", "<Cmd>Telescope live_grep<CR>")
