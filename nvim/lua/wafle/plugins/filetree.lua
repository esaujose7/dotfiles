return {
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-tree/nvim-tree.lua',
    init = function() 
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    config = function()
      require'nvim-tree'.setup({
        open_on_tab = true,
        sync_root_with_cwd = true,
        renderer = {
          add_trailing = true,
          highlight_git = true,
          group_empty = true,
        },
        view = {
          relativenumber = true,
          adaptive_size = true,
        },
        diagnostics = {
          enable = true,
        },
        git = {
          ignore = false,
          timeout = 500,
        },
      })
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>pv", ':NvimTreeToggle<CR>', { noremap = true } },
      { "<leader>pf", ':NvimTreeFindFile<CR>', { noremap = true } },
      { "<leader>r", ':NvimTreeRefresh<CR>', { noremap = true } }
    }
  }
}
