return {
  --[[ {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

      local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
      end

      hl("ColorColumn", {
        ctermbg = 0,
        bg = "#2d3149",
      })
    end,
    priority = 1000
  }, ]]
  {
    "fnune/standard",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("standard").setup({})
      vim.cmd.colorscheme "standard"
      vim.api.nvim_set_hl(0, "ColorColumn", {
        ctermbg = 0,
        bg = "#2d3149",
      })
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    opts = {}
  }
}

