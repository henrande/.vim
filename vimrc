set nocompatible

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Enable file type based indentation (required)
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always use space instead of tab
set expandtab
" Indent will have width 2
set shiftwidth=2
" Number of spaces that tab counts for
set tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting and searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax hightlighting on
syntax on
" Highlight all search matches
set hlsearch
" Start searching after entering first character
set incsearch
" Only lowercase search => case insensitive etc.
set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
  set background=light
  colorscheme solarized
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map jj to <ESC> in insert mode
inoremap jj <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line numbers
set number
" Always show cursor position
set ruler
" Show (partial) command in last line of screen
set showcmd
" Completion mode
set wildmode=longest,list,full
" Command line completion shown above command line
set wildmenu
" Make backspace work like expected
set backspace=indent,eol,start
" Always display the status line
set laststatus=2
