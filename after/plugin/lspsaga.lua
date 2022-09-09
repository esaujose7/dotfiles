local nnoremap = require("wafle.keymap").nnoremap

local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
} 

nnoremap("<silent><leader>cd", ":Lspsaga show_line_diagnostics<CR>")
nnoremap("<silent> ]e", ":Lspsaga diagnostic_jump_next<CR>")
nnoremap("<silent> [e", ":Lspsaga diagnostic_jump_prev<CR>")
nnoremap("<silent>K", ":Lspsaga hover_doc<CR>")
nnoremap("<silent><leader>rr", ":Lspsaga rename<CR>")
nnoremap("<silent><leader>cd", ":Lspsaga show_line_diagnostics<CR>")
