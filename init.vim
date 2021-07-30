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

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'branch': '0.5-compat', 'do': ':TSUpdate' }
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'mhartington/formatter.nvim'

Plug 'preservim/nerdcommenter' " kommenter ?
Plug 'jiangmiao/auto-pairs' " nvim-pairs

"" Git related
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " GitSigns

"" THEMES 
Plug 'navarasu/onedark.nvim'
Plug 'projekt0n/github-nvim-theme'

"" NERDTree boi
Plug 'preservim/nerdtree' " NvimTree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"" THEMING "
lua require('github-theme').setup({ themeStyle = "dimmed" })

"" MAPPINGS "
let mapleader = " "

"" GIT GUTTER MAPPINGS"
let g:gitgutter_map_keys = 0

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" Navigation mappings
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" NERDTree mapings
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pf :NERDTreeFind<CR>

" Git fugitive mappings
nmap <leader>gs :Git<CR>
nmap <leader>gc :Git commit<CR>
