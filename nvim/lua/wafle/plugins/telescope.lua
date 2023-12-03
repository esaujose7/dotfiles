return {
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope.nvim',
    config = function()
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
    end,
    keys = {
      {"<C-p>", "<Cmd>Telescope find_files<CR>"},
      {"<leader>ps", "<Cmd>Telescope live_grep<CR>"}
    },
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
}
