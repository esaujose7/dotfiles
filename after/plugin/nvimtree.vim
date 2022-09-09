lua << EOF
require'nvim-tree'.setup({
  open_on_tab = true,
  sync_root_with_cwd = true,
  renderer = {
    add_trailing = true,
    highlight_git = true,
    group_empty = true,
  },
  diagnostics = {
    enable = true
  },
  git = {
    ignore = false,
    timeout = 500,
  }
})
EOF

nnoremap <leader>pv :NvimTreeToggle<CR>
nnoremap <leader>pf :NvimTreeFindFile<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
