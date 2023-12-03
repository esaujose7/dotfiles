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
          "tsserver",
          "jsonls",
          "pyright",
          "emmet_ls",
          "lua_ls"
        }
      }
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      local nvim_lsp = require('lspconfig')

      local on_attach = function()
        local opts = { noremap = true, silent = true }

        -- LSP actions
        vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        vim.keymap.set('x', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<cr>', opts)

        -- Diagnostics
        vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
        vim.keymap.set('n', '[e', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
        vim.keymap.set('n', ']e', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
      end

      local servers = {
        { server = "tsserver" },
        { server = "cssmodules_ls" },
        { server = "html", capabilities = true },
        { server = "cssls", capabilities = true },
        { server = "jsonls", capabilities = true },
        { server = "emmet_ls", capabilities = true },
        { server = "dockerls" },
        { server = "graphql" },
        { server = "pyright" },
        { server = "lua_ls" },
      }

      for _, lsp in ipairs(servers) do
        local lsp_setup = { on_attach = on_attach }
        local capabilities = vim.lsp.protocol.make_client_capabilities()

        if lsp.capabilities then
          capabilities.textDocument.completion.completionItem.snippetSupport = true
        end

        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
        lsp_setup["capabilities"] = capabilities

        nvim_lsp[lsp.server].setup(lsp_setup)
      end

      vim.cmd([[hi! link LspReferenceText CursorColumn]])
      vim.cmd([[hi! link LspReferenceRead CursorColumn]])
      vim.cmd([[hi! link LspReferenceWrite CursorColumn]])
    end
  }
}
