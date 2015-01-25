set tabstop=4 shiftwidth=4 expandtab
filetype plugin indent on 
"Basic configuration
syntax on "syntax highlight
"filetype indent plugin on "indent by filetype
"set ruler "show the current line number
"set showcmd "show the input command on status bar
""DoMatchParen "open the parentheses highlight
set number "show line number
"use F2 to open/close showing line number
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR> 
""coordinate the colors using for dark background
set background=dark

set hls
set autoindent
autocmd FileType python setlocal et sta sw=4 sts=4

"Python Indentation PEP 8 
"filetype plugin indent on
"autocmd FileType python setlocal et sta sw=4 sts=4
"
""Python Code folding
autocmd FileType python setlocal foldmethod=indent
set foldlevel=99


