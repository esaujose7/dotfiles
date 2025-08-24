require("wafle.set")

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<leader>j', ":wincmd j<CR>", { noremap = true })
vim.keymap.set('n', '<leader>k', ":wincmd k<CR>", { noremap = true })
vim.keymap.set('n', '<leader>l', ":wincmd l<CR>", { noremap = true })

vim.keymap.set('n', "<C-d>", '<C-d>zz', { noremap = true })
vim.keymap.set('n', "<C-u>", '<C-u>zz', { noremap = true })

vim.keymap.set('n', 'n', "nzz", { noremap = true })
vim.keymap.set('n', 'N', "Nzz", { noremap = true })

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {
  on_attach = require 'wafle.util'.on_attach,
  capabilities = capabilities,
})

require("wafle.lazy")
