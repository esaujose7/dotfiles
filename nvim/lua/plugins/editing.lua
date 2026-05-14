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
}
