syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=100
set hidden
set shortmess+=c
set shortmess-=F
set cmdheight=2
set relativenumber
set nu
set updatetime=300
set cursorline
set termguicolors
set noshowmode
set nohlsearch
set scrolloff=8
set signcolumn=yes
set completeopt=menu,menuone,noselect

highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:kommentary_create_default_mappings = 0

call plug#begin('~/.config/nvim/plugged')

"" LSP related
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'branch': '0.5-compat', 'do': ':TSUpdate' }
Plug 'scalameta/nvim-metals'

"" Auto completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'

"" telescope bro
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"" status line
Plug 'hoob3rt/lualine.nvim'

"" Editing related
Plug 'b3nj5m1n/kommentary'
Plug 'windwp/nvim-autopairs'
Plug 'mhartington/formatter.nvim'

"" Git related
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

"" THEMES 
Plug 'navarasu/onedark.nvim'

"" NERDTree boi
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" THEMING
colorscheme onedark

"" MAPPINGS "
let mapleader = " "

nmap <leader>cc <Plug>kommentary_line_default
nmap <leader>c <Plug>kommentary_motion_default
xmap <leader>c <Plug>kommentary_visual_default

" Navigation mappings
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" Git fugitive mappings
nmap <leader>gs :Git<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gb :Git blame<CR>
