return {
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      vim.cmd.colorscheme "catppuccin-macchiato" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

      local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
      end

      hl("ColorColumn", {
        ctermbg = 0,
        bg = "#2d3149",
      })
    end,
    priority = 1000
  },
}
