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
"   :PluginList          - list configured bundles
"   :PluginInstall(!)    - install(update) bundles
"   :PluginSearch(!) foo - search(or refresh cache first) for foo
"   :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" See :h vundle for more details
" Comments after Bundle command are not allowed

" Both required by Vundle:
" (Not strictly necessary, since this appears in a user .vimrc where
" nocompatible is set by default, unlike the system-wide .vimrc.)
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
" Required!
Plugin 'gmarik/Vundle.vim'

" Github Bundles
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'emcmanus/snipmate.vim'
Plugin 'msanders/cocoa.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-session'
Plugin 'duff/vim-scratch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mileszs/ack.vim'
Plugin 'emcmanus/vim-checkbox'
Plugin 'tomtom/tcomment_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
Plugin 'leafgarland/typescript-vim'
Plugin 'xolox/vim-misc'
Plugin 'groenewege/vim-less'
Plugin 'andreimaxim/vim-io'
Plugin 'fatih/vim-go'

" tpope the man!
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'

" To get YCM to build had to first uninstall brew's Python (I later reinstalled).
" See https://github.com/Valloric/YouCompleteMe/issues/18
"Bundle 'Valloric/YouCompleteMe'

" Transparently make gui color schemes compatible with terminal vim
Plugin 'godlygeek/csapprox'

" Vim-scripts.org
" To find the proper name, search https://github.com/vim-scripts/repositories
Plugin 'DrawIt'
Plugin 'cecutil'
Plugin 'matchit.zip'
Plugin 'php.vim'
Plugin 'YankRing.vim'
Plugin 'Rainbow-Parenthesis'
Plugin 'cmdalias.vim'
Plugin 'dbext.vim'
Plugin 'psql.vim'
Plugin 'R.vim--Nijs'
Plugin 'csv.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of vundle config

" *.ts extension
au BufNewFile,BufRead *.ts set filetype=typescript

" *.io extension
au BufNewFile,BufRead *.io set filetype=io

" Disable session autosave
let g:session_autosave = 'no'

" Most plugins expect bash, not Fish
set shell=bash

" CtrlP
let g:ctrlp_map = '<c-i>'
" Allow ctrlp to replace netrw window
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_max_files = 5000
" Root directory markers and ignore patterns from peepopen
let g:ctrlp_root_markers = ['.git', '.hg', 'Rakefile', 'Makefile', 'README\.?.*', 'build\.xml', '.*\.xcodeproj', '.*\.bbprojectd']
unlet! g:ctrlp_custom_ignore
" Note pipes need to be escaped per https://github.com/kien/ctrlp.vim/issues/58
let g:ctrlp_custom_ignore = {
      \ 'file': '\v(\.git|\.hg|.*\.xcodeproj|.*\.bbprojectd)$',
      \ 'dir': 'node_modules\|bower_components\|dist\|\.git\|\.hg\|\.svn\|\.sass-cache\|build\|tmp\|log\|vendor\/(rails\|gems\|plugins)\/\|proxy_cache',
      \ }

" Note fold settings are specified in ftplugin/text

" Change insert mode cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" HTML Syntax highlighting in erb files
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

" YankRing
let g:yankring_warn_on_truncate=0

" RagTag
let g:ragtag_global_maps=1

" EasyMotion
let g:EasyMotion_leader_key='`'

" DBExt Profiles
let g:dbext_default_profile_yardsale_development = 'type=PGSQL:user=:passwd=:dbname=yardsale_development'
let g:dbext_default_profile = 'yardsale_development'

" Tagbar - hotkey `
"nnoremap <silent> ` :TagbarToggle<CR>
"let g:tagbar_autofocus=1 " Only set after opening
"let g:tagbar_autoclose=1 " Close after jumping

" Vim-Ruby Complete
"let g:rubycomplete_rails=1

let ruby_space_errors=1
let c_space_errors=1

" Use pbcopy/pbpaste for shared clipboard
set clipboard=unnamed

" Cleanup trailing whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Source vimrc on save
au! BufWritePost .vimrc source %

" Disable error and visual bells
set noerrorbells visualbell t_vb=

" Remove toolbar in MacVim
if has("gui_running")
  set guioptions=-t
endif

"
" Great defaults: http://stevelosh.com/blog/2010/09/coming-home-to-vim/#making-vim-more-useful
"

let mapleader = ","

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
" Git commit message width:
set colorcolumn=72

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

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Awesome, fast recursive text search of current directory
nnoremap <leader>a :Ack -i --type=nohtml 

" JJ brings you back to normal mode
inoremap jj <ESC>

" Reduce timeout after <ESC> is recvd, helpful in terminal mode
set ttimeout
set ttimeoutlen=20
set notimeout

" Don't update screen when executing macros
set lazyredraw

" Create vertical split and give it focus
nnoremap <leader>w <C-w>v<C-w>l

" http://blog.infinitered.com/entries/show/8
set background=dark
colorscheme vivid_black_terminal

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

" Create vertical split, give it focus, fire CtrlP
nnoremap <C-t> <C-w>v<C-w>l<cr>

" Buffer cycle
nnoremap <C-j> :bnext<cr>
nnoremap <C-k> :bprevious<cr>

" Exit insert mode and save current buffer, great for tight edit/test loops
inoremap kj <ESC>:w<cr>
inoremap jh <ESC>:w<cr>

" Quick scratch buffer
nnoremap <leader><tab> :Scratch<cr>
