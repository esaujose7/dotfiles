return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  {
    'b3nj5m1n/kommentary',
    init = function()
      vim.g.kommentary_create_default_mappings = 0
    end,
    keys = {
      { "<leader>cc", "<Plug>kommentary_line_default" },
      { "<leader>c", "<Plug>kommentary_motion_default" },
      { "<leader>c", "<Plug>kommentary_visual_default", mode = "x" }
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = {
        show_start = false
      }
    }
  },
  {
    "lewis6991/hover.nvim",
    opts = {
      init = function()
        -- Require providers
        require('hover.providers.lsp')
        require('hover.providers.fold_preview')
        require('hover.providers.diagnostic')
        require('hover.providers.man')
      end,
      preview_opts = {
        border = 'single'
      },
      -- Whether the contents of a currently open hover window should be moved
      -- to a :h preview-window when pressing the hover keymap.
      preview_window = false,
    }
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
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 700,
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
