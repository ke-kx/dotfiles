" line numbers
set number
set relativenumber

" Indent config
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set nu
set autoindent

" searching options
set smartcase
set ignorecase

" syntax highlighting
syntax on

" spell check
set spell

" latexsuite options
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" Enabling mouse scrolling
set mouse=a

" folding
set foldmethod=syntax
set foldlevelstart=1
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML