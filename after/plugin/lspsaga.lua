local nnoremap = require("wafle.keymap").nnoremap

local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
} 

nnoremap("<leader>cd", ":Lspsaga show_line_diagnostics<CR>")
nnoremap("]e", ":Lspsaga diagnostic_jump_next<CR>")
nnoremap("[e", ":Lspsaga diagnostic_jump_prev<CR>")
nnoremap("K", ":Lspsaga hover_doc<CR>")
nnoremap("<leader>rr", ":Lspsaga rename<CR>")
nnoremap("<leader>cd", ":Lspsaga show_line_diagnostics<CR>")
