set nocompatible

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'

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
" Working dir always the same as the file you are editing
set autochdir

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
" GUI settings - theme and appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
  set background=light
  colorscheme solarized

  " Hide toolbar (T) and scrollbars (r, L)
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>"

" Map <Leader>t to <C-]> (jump to tag) in normal mode
nnoremap <Leader>t <C-]>
nnoremap <Leader>c :noh<CR>
nnoremap <Leader>w :w<CR>
inoremap jj <ESC>

" Move up and down display lines (when lines wrap)
nnoremap j gj
nnoremap k gk

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
" Config for ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config for supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigate the completion menu from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local vimrc, if available
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
