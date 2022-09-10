vim.cmd[[colorscheme tokyonight-storm]]
-- vim.cmd[[colorscheme tokyonight-night]]

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl("ColorColumn", {
  ctermbg = 0,
  bg = "lightgrey",
})
