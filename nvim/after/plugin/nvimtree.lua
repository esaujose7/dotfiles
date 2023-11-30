require'nvim-tree'.setup({
  open_on_tab = true,
  sync_root_with_cwd = true,
  renderer = {
    add_trailing = true,
    highlight_git = true,
    group_empty = true,
  },
  view = {
    relativenumber = true,
    adaptive_size = true,
  },
  diagnostics = {
    enable = true,
  },
  git = {
    ignore = false,
    timeout = 500,
  },
})

vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<leader>pf', ':NvimTreeFindFile<CR>', { noremap = true })
vim.keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true })
