set nocompatible              " be iMproved, required
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Let vundle manage vundle (required)
Bundle 'gmarik/vundle'
"github.com/vim-scripts/* repos
Bundle 'pep8'
Bundle 'Wombat'
Bundle 'wombat256.vim'
Bundle 'vcscommand.vim'
"github repos
Bundle 'nanotech/jellybeans.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'fs111/pydoc.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jakar/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
inoremap jj <Esc>” remap <esc> to <jj>

set shortmess+=I

set number

set relativenumber

set laststatus=2
set sw=4
set cindent

set backspace=indent,eol,start

set hidden

set ignorecase
set smartcase

set incsearch

" colorscheme molokai
" colorscheme peachpuff

"Colors
if has('gui')
    colorscheme wombat256mod
elseif &t_Co >= 256
    colorscheme wombat256mod
else
    set background=light
endif

"Status line
if has('statusline')
    set laststatus=2                          "Always show status line
    set statusline=%<%f\                      "Filename
    set statusline+=%w%h%m%r                  "Options
    set statusline+=\ [%{&ff}/%Y]             "filetype
    set statusline+=\ [%{getcwd()}]           "current dir
    "set statusline+=\ [A=\%03.3b/H=\%02.2B]  "ASCII / Hexadecimal value of char
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%   "Right aligned file nav info
endif
