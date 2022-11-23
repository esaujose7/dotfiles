vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP related
  use 'neovim/nvim-lspconfig'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga {}

      local nnoremap = require("wafle.keymap").nnoremap

      nnoremap("<leader>cd", ":Lspsaga show_line_diagnostics<CR>")
      nnoremap("]e", ":Lspsaga diagnostic_jump_next<CR>")
      nnoremap("[e", ":Lspsaga diagnostic_jump_prev<CR>")
      nnoremap("K", ":Lspsaga hover_doc<CR>")
      nnoremap("<leader>rr", ":Lspsaga rename<CR>")
      nnoremap("<leader>cd", ":Lspsaga show_line_diagnostics<CR>")
    end,
  })
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- Auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lua'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'lukas-reineke/cmp-rg'
  use 'onsails/lspkind-nvim'
  use 'rafamadriz/friendly-snippets'

  -- telescope bro
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- status line
  use 'hoob3rt/lualine.nvim'

  -- Editing related
  use 'b3nj5m1n/kommentary'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'mhartington/formatter.nvim'

  -- Git related
  -- use 'TimUntersberger/neogit'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- File tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- THEMES 
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
end)
