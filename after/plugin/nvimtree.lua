local nnoremap = require("wafle.keymap").nnoremap

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

nnoremap("<leader>pv", ":NvimTreeToggle<CR>")
nnoremap("<leader>pf", ":NvimTreeFindFile<CR>")
nnoremap("<leader>r", ":NvimTreeRefresh<CR>")
