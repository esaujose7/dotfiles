return require('lazy').setup({
  -- LSP related
  'neovim/nvim-lspconfig',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
          sources = {
              null_ls.builtins.diagnostics.eslint_d,
          },
      })
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Auto completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'petertriho/cmp-git',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'lukas-reineke/cmp-rg',
  'onsails/lspkind-nvim',

  -- telescope bro
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',

  -- status line
  'hoob3rt/lualine.nvim',

  -- Editing related
  'b3nj5m1n/kommentary',
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  'mhartington/formatter.nvim',

  -- Git related
   'tpope/vim-fugitive',
   'lewis6991/gitsigns.nvim',

  -- File tree
   'kyazdani42/nvim-web-devicons',
   'kyazdani42/nvim-tree.lua',

  -- THEMES 
   'navarasu/onedark.nvim',
   { "catppuccin/nvim", name = "catppuccin" },
   'folke/tokyonight.nvim',
})
