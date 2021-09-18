nnoremap <silent> <C-p> <Cmd>Telescope find_files<CR>
nnoremap <silent> <leader>ps <Cmd>Telescope live_grep<CR>

lua <<EOF
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
EOF
