syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
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
set termguicolors

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim_man'
Plug 'tpope/vim-commentary'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'junefunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root = 'true'
endif

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :NERDTreeClose<CR>
nnoremap <leader>pv :NERDTree<CR> 
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <silent> <leader> gd :YcmCopleter GoTo<CR>
nnoremap <silent> <leader> gf :YcmCopleter Fixit<CR>

set termguicolors
