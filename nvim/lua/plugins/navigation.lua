return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    tag = '0.1.8',
    opts = {
      defaults = {
        sorting_strategy = "ascending",
        mappings = {
          n = {
            ["q"] = require('telescope.actions').close,
          },
        },
      }
    },
    keys = {
      {"<C-p>", "<Cmd>Telescope find_files<CR>", desc = "Find files (Telescope)"},
      {"<leader>ps", "<Cmd>Telescope live_grep<CR>", desc = "Live grep (Telescope)"},
      {
        "<leader>pd",
        function()
          local function escape(keys)
            return vim.api.nvim_replace_termcodes(keys, true, false, true)
          end

          vim.api.nvim_feedkeys(
            ":lua require('telescope.builtin').live_grep({ cwd = '" .. require('telescope.utils').buffer_dir() .. "' })" .. escape '<C-f>',
            "n",
            false
          )
        end,
        desc = "Live grep in buffer directory (Telescope)",
      },
      {"<leader>pb", "<Cmd>Telescope buffers<CR>", desc = "List buffers (Telescope)"},
      {"<leader>ph", "<Cmd>Telescope help_tags<CR>", desc = "Help tags (Telescope)"}
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    opts = {
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
    },
    keys = {
      { "<leader>pv", ':NvimTreeToggle<CR>', desc = "Toggle file tree (NvimTree)", noremap = true },
      { "<leader>pf", ':NvimTreeFindFile<CR>', desc = "Find file in tree (NvimTree)", noremap = true },
      { "<leader>r", ':NvimTreeRefresh<CR>', desc = "Refresh file tree (NvimTree)", noremap = true }
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
  },
  {
    "folke/trouble.nvim",
    opts = {
      auto_preview = false,
      open_no_results = true,
      focus = true,
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
    },
  },
}
