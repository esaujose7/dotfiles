local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {
  on_attach = require 'wafle.util'.on_attach,
  capabilities = capabilities,
})

vim.lsp.enable({
  'ts', 'cssls', 'cssmodules_ls', 'dockerls',
  'graphql', 'html', 'jsonls', 'lua_ls', 'php'
})
