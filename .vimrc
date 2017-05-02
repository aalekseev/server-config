" We want Vim, not vi
set nocompatible

" Set encoding
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99
set showcmd

" NNOREMAPS
" twice a leader to switch buffer
nnoremap <leader><leader> <c-^>
" Enable folding with a spacebar
nnoremap <space> za

" Make python pretty
let python_hightlight_all=1
" Switch between buffers without having to save first.
set hidden
" Show as much as possible of the last line.
set display=lastline
" Faster redrawing.
set ttyfast
" Only redraw when necessary.
set lazyredraw
" Open new windows below the current window.
set splitbelow
" Open new windows right of the current window.
set splitright
" Find the current line quickly.
set cursorline
" Searches wrap around end-of-file.
set wrapscan
" Always report changed lines.
set report=0
" Only highlight the first 200 columns.
set synmaxcol=200

" Proper indentation for python files
au BufNewFile, BufRead *.py
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79
  \ set colorcolumn=79

au BufNewFile, BufRead *.js
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2
  \ set textwidth=79
  \ set colorcolumn=79

au BufNewFile, BufRead *.yml
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2

" Proper indentation for other files
" Indent according to previous line.
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" Mark trailing whitespaces as bad
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

syntax enable
" Line numbering
set nu
" No wrapping to lines!
set nowrap
" Show matching bracket
set showmatch
" show suggestions on vim commands in command menu
set wildmenu
" auto reload file if file was changed elsewere
set autoread
" Backspace throught everything!
set backspace=indent,eol,start
" Make clipboard normal
set clipboard=unnamed
set formatoptions+=t
" Autocomplition settings
set complete=.,w,b,u,t,i,kspell
" Searching
set hlsearch  " hightlight matches
set incsearch  " incremental search
set ignorecase  " search with ignorecase
set smartcase  " If any word has Big letter search with case
" Mouse support
if has('mouse')
  set mouse=a
endif

" 256 colors
set t_Co=256

" Netrw settings
let g:netrw_list_hide = '.*\.swp$,'
let g:netrw_list_hide .= '\.pyc$,'
