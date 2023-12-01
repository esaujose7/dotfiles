return {
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
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  {
    'mhartington/formatter.nvim',
    config = function()
      local eslint = function()
        return {
          exe = "eslint_d",
          args = {"--stdin", "--stdin-filename", vim.api.nvim_buf_get_name(0), "--fix-to-stdout"},
          stdin = true
        }
      end

      require('formatter').setup({
        logging = false,
        filetype = {
          javascript = {eslint},
          javascriptreact = {eslint},
          typescript = {eslint},
          typescriptreact = {eslint},
        }
      })
    end,
    keys = {
      {"<leader>f", ":Format<CR>", { noremap = true }}
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.eslint_d,
        },
      })
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  }
}
