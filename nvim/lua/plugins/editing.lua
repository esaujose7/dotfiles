return {
  {
    'echasnovski/mini.comment',
    version = '*',
    opts = {
      mappings = {
        comment = '<leader>c',
        comment_line = '<leader>cc',
        comment_visual = '<leader>c',
        textobject = '<leader>c',
      },
    }
  },
  {
    'echasnovski/mini.pairs',
    version = '*',
    opts = {}
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
