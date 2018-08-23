filetype on
syntax on
set t_Co=256
colorscheme stellarized
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/bash-support.vim'
Plug 'derekwyatt/vim-scala'
Plug 'jiangmiao/auto-pairs'
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
Plug 'nightsense/stellarized'

call plug#end()
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set backspace=indent,eol,start
set guifont=Menlo\ Regular:h16
set lines=35 columns=150
set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
map <leader>f :Files<CR>
map <leader>tn :tabe<CR>
map <leader>t :tabn<CR>
inoremap <c-z> <esc>:stop<cr>

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
