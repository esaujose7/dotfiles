return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      {
        "mason-org/mason.nvim",
        opts = {}
      },
    },
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
      automatic_enable = {
        exclude = {
          "lua_ls", "jdtls"
        }
      }
    },
  },
  {
    "mfussenegger/nvim-jdtls"
  }
}
