return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup {
        ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
        }
      }

      require("mason-lspconfig").setup {
        ensure_installed = {
          "cssls",
          "cssmodules_ls",
          "html",
          "graphql",
          "dockerls",
          "ts_ls",
          "jsonls",
          "pyright",
          "emmet_ls",
          "lua_ls",
          "phpactor",
          "jdtls"
        }
      }
    end
  },
  {
    "mfussenegger/nvim-jdtls"
  }
}
