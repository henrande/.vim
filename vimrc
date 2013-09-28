set nocompatible

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'

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
" Character encoding in vim
set encoding=utf-8
" Allow buffer switching without saving
set hidden
" Show matching brackets/parenthesis
set showmatch

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
" Config for vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No default mode indicator (use airline instead)
set noshowmode

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇ '

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local vimrc, if available
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
