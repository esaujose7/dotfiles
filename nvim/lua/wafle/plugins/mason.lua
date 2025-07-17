return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        version = "v1.32.0"
      },
    },
    tag = "v1.11.0",
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
          "jdtls",
          "pyright"
        }
      }
    end
  },
  {
    "mfussenegger/nvim-jdtls"
  }
}
