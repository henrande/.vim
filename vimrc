set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always use space instead of tab
set expandtab
" Indent will have width 2
set shiftwidth=2
" Number of spaces that tab counts for
set tabstop=2
" Enable file type based indentation
filetype plugin indent on

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
