return {
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
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
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
  },
  {
    "cbochs/grapple.nvim",
    opts = {
        scope = "git_branch",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
        { "<leader>m", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
        { "<leader>M", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
        { "<leader>n", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
        { "<leader>N", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
    },
  }
}
