vim.cmd 'colorscheme onedark'

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl("ColorColumn", {
  ctermbg = 0,
  bg = "lightgrey",
})
