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
      { "<leader>cc", "<Plug>kommentary_line_default", desc = "Comment/uncomment current line" },
      { "<leader>c", "<Plug>kommentary_motion_default", desc = "Comment/uncomment with motion" },
      { "<leader>c", "<Plug>kommentary_visual_default", mode = "x", desc = "Comment/uncomment selection" }
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
}
