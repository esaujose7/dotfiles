syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=140
set hidden
set shortmess+=c
set cmdheight=2
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set relativenumber

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

"" web dev related
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'

" CoC / autocompleter
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-eslint',
      \'coc-prettier',
      \'coc-json',
      \'coc-html',
      \'coc-css'
      \]

"" Navigation
Plug 'jremmen/vim-ripgrep'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

"" Commenter
Plug 'scrooloose/nerdcommenter'

"" Git related
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" good stuff for vim 
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

set updatetime=300

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

let g:javascript_plugin_jsdoc = 1
let g:vim_jsx_pretty_colorful_config = 1

let mapleader = " "

let g:gitgutter_map_keys = 0

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pf :NERDTreeFind<CR>
nnoremap <Leader>ps :Rg<SPACE>
nmap <leader>gs :G<CR>

"" CoC stuff
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" tab for trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

nmap <silent><leader>gd <Plug>(coc-definition)
nmap <leader>rr <Plug>(coc-rename)
