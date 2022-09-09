-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP related
  use 'neovim/nvim-lspconfig'
  use 'tami5/lspsaga.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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
  use 'windwp/nvim-autopairs'
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
