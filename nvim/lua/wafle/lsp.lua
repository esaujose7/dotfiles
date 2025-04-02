local on_attach = function()
  local opts = { noremap = true, silent = true }

  -- LSP actions
  vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  -- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  vim.keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set('n', 'K', require('hover').hover, {desc = 'hover.nvim'})

  -- Diagnostics
  vim.keymap.set('n', '<leader>cd', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
  vim.keymap.set('n', '[e', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
  vim.keymap.set('n', ']e', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.lsp.enable({
  'ts', 'cssls', 'cssmodules_ls', 'dockerls',
  'graphql', 'html', 'jsonls', 'lua_ls'
})
