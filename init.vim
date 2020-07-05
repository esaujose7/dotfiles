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
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=140

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'https://github.com/ycm-core/YouCompleteMe.git'

Plug 'https://github.com/morhetz/gruvbox.git'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

set updatetime=100

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:javascript_plugin_jsdoc = 1
let g:vim_jsx_pretty_colorful_config = 1

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <Leader>ps :Rg<SPACE>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR> 

"" temporary hack since jsx not working
autocmd BufNewFile,BufRead *.jsx set filetype=javascript
