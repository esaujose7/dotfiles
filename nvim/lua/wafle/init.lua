require("wafle.set")

vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<leader>j', ":wincmd j<CR>", { noremap = true })
vim.keymap.set('n', '<leader>k', ":wincmd k<CR>", { noremap = true })
vim.keymap.set('n', '<leader>l', ":wincmd l<CR>", { noremap = true })

vim.keymap.set('n', "<C-d>", '<C-d>zz', { noremap = true })
vim.keymap.set('n', "<C-u>", '<C-u>zz', { noremap = true })

vim.keymap.set('n', 'n', "nzz", { noremap = true })
vim.keymap.set('n', 'N', "Nzz", { noremap = true })

-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup("wafle.plugins")
