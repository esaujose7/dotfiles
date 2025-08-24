return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
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
      },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {
          ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
          }
        }},
        "neovim/nvim-lspconfig",
    },
  },
  {
    "mfussenegger/nvim-jdtls"
  }
}
