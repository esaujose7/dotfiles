return {
  {
    'mhartington/formatter.nvim',
    config = function()
      local util = require "formatter.util"

      local eslint = function()
        return {
          exe = "eslint_d",
          args = {
            "--stdin",
            "--stdin-filename",
            util.escape_path(util.get_current_buffer_file_path()),
            "--fix-to-stdout"
          },
          stdin = true
        }
      end

      local stylelint = function()
        return {
          exe = "stylelint",
          args = {
            "--fix",
            "--stdin",
            "--stdin-filename",
            util.escape_path(util.get_current_buffer_file_path())
          },
          stdin = true,
          try_node_modules = true
        }
      end

      require('formatter').setup({
        logging = false,
        filetype = {
          javascript = {eslint},
          javascriptreact = {eslint},
          typescript = {eslint},
          typescriptreact = {eslint},
          css = {stylelint}
        }
      })
    end,
    keys = {
      {"<leader>f", ":Format<CR>", desc = "Format buffer"}
    }
  }
}
