local M = { }

function M.on_attach()
  local opts = { noremap = true, silent = true }

  -- LSP actions
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, opts)

  vim.keymap.set('n', 'K', function()
    local api = vim.api
    local hover_win = vim.b.hover_preview
    if hover_win and api.nvim_win_is_valid(hover_win) then
      api.nvim_set_current_win(hover_win)
    else
      require("hover").hover()
    end
  end,
  { desc = "hover.nvim" })
  vim.keymap.set("n", "<C-n>", function() require("hover").hover_switch("next") end, {desc = "hover.nvim (next source)"})

  -- Diagnostics
  vim.keymap.set('n', '[e', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
  vim.keymap.set('n', ']e', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end

return M
