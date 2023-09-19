-- vim.cmd[[colorscheme tokyonight-storm]]
-- vim.cmd[[colorscheme tokyonight-night]]
vim.cmd.colorscheme "catppuccin" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl("ColorColumn", {
  ctermbg = 0,
  bg = "#2d3149",
})
