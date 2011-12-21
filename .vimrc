"
" This .vimrc is automatically sourced on save. For most changes, you won't need
" to restart vim.
" 

" Vundle bundles
" https://github.com/gmarik/vundle
"
" Some bundles depend on ctags: `brew install ctags`
"
" Brief Vundle Help
"   :BundleList          - list configured bundles
"   :BundleInstall(!)    - install(update) bundles
"   :BundleSearch(!) foo - search(or refresh cache first) for foo
"   :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" See :h vundle for more details
" Comments after Bundle command are not allowed

" Required
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on

" Let Vundle manage Vundle
" Required!
Bundle 'gmarik/vundle'

" Github Bundles
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'emcmanus/snipmate.vim'
Bundle 'msanders/cocoa.vim'
Bundle 'tpope/vim-rails'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'xolox/vim-session'
Bundle 'duff/vim-scratch'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'mileszs/ack.vim'
Bundle 'emcmanus/vim-checkbox'
Bundle 'tomtom/tcomment_vim'
Bundle 'pangloss/vim-javascript'

" Vim-scripts.org
" To find the proper name, search https://github.com/vim-scripts/repositories
Bundle 'DrawIt'
Bundle 'cecutil'
Bundle 'matchit.zip'
Bundle 'YankRing.vim'
Bundle 'Rainbow-Parenthesis'
Bundle 'cmdalias.vim'

" RagTag
let g:ragtag_global_maps=1

" EasyMotion
let g:EasyMotion_leader_key=''

" Tagbar - hotkey `
nnoremap <silent> ` :TagbarToggle<CR>
let g:tagbar_autofocus=1 " Only set after opening
let g:tagbar_autoclose=1 " Close after jumping

" Vim-Ruby Complete
let g:rubycomplete_rails=1

let ruby_space_errors=1
let c_space_errors=1

" Source vimrc on save
au! BufWritePost .vimrc source %


"
" Great defaults: http://stevelosh.com/blog/2010/09/coming-home-to-vim/#making-vim-more-useful
"

let mapleader = ","

set nocompatible

set modelines=0

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

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
set relativenumber
set undofile
set colorcolumn=85

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

" Awesome, fast recursive text search of current directory
nnoremap <leader>a :Ack -i 

" JJ brings you back to normal mode
inoremap jj <ESC>

" Create vertical split and give it focus
nnoremap <leader>w <C-w>v<C-w>l

" http://blog.infinitered.com/entries/show/8
set background=dark
colorscheme xcode_black

" Expand split width
nnoremap <leader>m 15<C-w>>

let filetype_m='objc'

" The following are from http://items.sjbach.com/319/configuring-vim-right
set hidden
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


" Create vertical split, give it focus, fire PeepOpen (cmd+t)
nnoremap <leader>t <C-w>v<C-w>l:PeepOpen<cr>

" Buffer cycle
nnoremap <C-j> :bnext<cr>
nnoremap <C-k> :bprevious<cr>

" Exit insert mode and save current buffer, great for tight edit/test loops
inoremap jh <ESC>:w<cr>

" Quick scratch buffer
nnoremap <leader><tab> :Scratch<cr>
