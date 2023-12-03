return {
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  {
    'b3nj5m1n/kommentary',
    init = function()
      vim.g.kommentary_create_default_mappings = 0
    end,
    keys = {
      { "<leader>cc", "<Plug>kommentary_line_default" },
      { "<leader>c", "<Plug>kommentary_motion_default" },
      { "<leader>c", "<Plug>kommentary_visual_default", mode = "x" }
    }
  },
}
