filetype on
syntax on
colorscheme Tomorrow-Night

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ddollar/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

call plug#end()

set backspace=indent,eol,start
set guifont=Menlo\ Regular:h18
set lines=35 columns=150
set colorcolumn=150
set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

set nowrap
set tabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

nnoremap <Leader><Leader> :e#<CR>

set showmatch

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

