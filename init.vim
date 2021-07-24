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

"" Git related
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" THEMES 
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'

"" NERDTree boi
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"" THEMING "
colorscheme onehalfdark

let g:lightline = {
  \ 'colorscheme': 'onehalfdark',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead',
  \   'filename': 'LightlineFilename'
  \ },
\ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

if executable('rg')
    let g:rg_derive_root='true'
endif

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
nmap <leader>gs :G<CR>
