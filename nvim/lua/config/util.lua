local M = { }

function M.on_attach()
  local opts = { noremap = true, silent = true }

  -- LSP actions
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, opts)

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover" })

  -- Diagnostics
  vim.keymap.set('n', '[e', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
  vim.keymap.set('n', ']e', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end

return M
