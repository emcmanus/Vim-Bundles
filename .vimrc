" The following are from http://stevelosh.com/blog/2010/09/coming-home-to-vim/#making-vim-more-useful
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

let mapleader = ","

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" Requires v7.3
"if version >= 730
    set relativenumber
    set undofile
    set colorcolumn=85
"endif

" Center line on search
map N Nzz
map n nzz

nnoremap / /\v
vnoremap / /\v
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>a :Ack -i 

" JJ brings you back to normal mode
inoremap jj <ESC>

" Open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" http://blog.infinitered.com/entries/show/8
set background=dark
colorscheme xcode_black

" The following are my macros
nnoremap <leader>m 40<C-w>>

let filetype_m='objc'

" The following are from http://items.sjbach.com/319/configuring-vim-right
set hidden
nnoremap ' `
nnoremap ` '
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase
set title
set scrolloff=3
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set ruler

syntax on
filetype on
filetype plugin on
filetype indent on

set hlsearch	" highlight search
set incsearch	" search dynamically while typing

set shortmess=atI


" Open vertical split, display PeepOpen
nnoremap <leader>t <C-w>v<C-w>l:PeepOpen<cr>

" Buffer cycle
nnoremap <C-j> :bnext<cr>
nnoremap <C-k> :bprevious<cr>

" Quick save
inoremap jh <ESC>:w<cr>

" Scratch
nnoremap <leader><tab> :Scratch<cr>
