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
set cmdheight=2
set noshowmode

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

"" web dev related
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'

"" Autocompleter
Plug 'https://github.com/ycm-core/YouCompleteMe.git'

"" Navigation
Plug 'jremmen/vim-ripgrep'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

"" Status bar
Plug 'vim-airline/vim-airline'

"" Commenter
Plug 'scrooloose/nerdcommenter'

"" Git related
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" NerdTree and related plugins
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"" ColorScheme :D
Plug 'https://github.com/morhetz/gruvbox.git'

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
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>gs :G<CR>
nnoremap <Leader>ps :Rg<SPACE>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR> 

"" temporary hack since jsx not working for the autocompleter
autocmd BufNewFile,BufRead *.jsx set filetype=javascript
