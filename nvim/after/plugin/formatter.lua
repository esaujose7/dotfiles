local eslint = function()
  return {
    exe = "eslint_d",
    args = {"--stdin", "--stdin-filename", vim.api.nvim_buf_get_name(0), "--fix-to-stdout"},
    stdin = true
  }
end

require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {eslint},
    javascriptreact = {eslint},
    typescript = {eslint},
    typescriptreact = {eslint},
  }
})

vim.keymap.set('n', '<leader>f', ":Format<CR>", { noremap = true })
