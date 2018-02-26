
" ------------------------------------------------------------------------------
" ---------------------------------- Plugins -----------------------------------
" ------------------------------------------------------------------------------
"
" --------------------------------- Vim-Plug -----------------------------------
" Specify plugin directory
call plug#begin('~/.vim/plugins')

" fuzzy finding
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" Git dots
Plug 'airblade/vim-gitgutter'

" NERDTree - File Explorer
Plug 'scrooloose/nerdtree'

" ALE Linter
Plug 'w0rp/ale'

" Airline - Status line
Plug 'vim-airline/vim-airline'
" Airline themes
Plug 'vim-airline/vim-airline-themes'

" EasyMotion - better vim navigations (f, t,...)
Plug 'easymotion/vim-easymotion'

" Unimpaired - useful keybindings
Plug 'tpope/vim-unimpaired'

" Better repeat with . e.g. for maps or other plugins
Plug 'tpope/vim-repeat'

" Change surroundings of text elements
Plug 'tpope/vim-surround'

" Comment and uncomment lines
Plug 'tpope/vim-commentary'

" Edit at multiple places
Plug 'terryma/vim-multiple-cursors'

" Molokai color scheme
Plug 'tomasr/molokai'

" Autoformat files
Plug 'Chiel92/vim-autoformat'

" " ---------------- Filetype plugins ---------------------
" Latex suite
Plug 'vim-latex/vim-latex', {'for': 'tex'}

" Better XML editing (tag completions, jumps, ...)
Plug 'sukima/xmledit', {'for': 'xml'}

" Better Python syntax highlighting
Plug 'hdima/python-syntax', {'for': 'python'}

" Python syntax annotations according to pep8
Plug 'nvie/vim-flake8', {'for': 'python'}

" Python folding
Plug 'tmhedberg/SimpylFold', {'for': 'python'}

" Python indentation
Plug 'vim-scripts/indentpython.vim', {'for': 'python'}

" Init plugin system
call plug#end()

" ------------------------------------------------------------------------------
" --------------------------------- Key bindings -------------------------------
" ------------------------------------------------------------------------------

" switch y and z keys to accustom for German keyboard...
noremap y z
noremap z y
noremap! y z
noremap! z y

set timeoutlen=500
let mapleader=" "

" New line without insert
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<ESC>j

" Moving between splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

" Keybinding for yanking and pasting from system keyboard
noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>z "+y
noremap <leader>d "+d

" resize horizontal splits
nnoremap <leader>hr :resize
"resize vertical splits
nnoremap <leader>vr :vertical resize

" Forward and backward movement in command mode
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

" ------------------------------------------------------------------------------
" ------------------------------ Plugin Settings -------------------------------
" ------------------------------------------------------------------------------

" Ack/Ag -----------------------------------------------------------------------
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif
nnoremap <leader>/ :Ack!<space>

" --------------------------------- Airline ------------------------------------
set laststatus=2 " show always
let g:airline_powerline_fonts = 1 " powerline font

" ---------------------------- autoformat --------------------------------------
nnoremap <leader>af :Autoformat<CR>

" fzf --------------------------------------------------------------------------
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-g> :Buffers<CR>
nnoremap <C-p> :Files<CR>

" gitgutter --------------------------------------------------------------------
set updatetime=100

" -------------------------------- NERDTree ------------------------------------
let g:NERDTreeIgnore = ['bin', 'node_modules']
nmap <leader>nt :NERDTreeToggle<CR>

" ------------------------------ SimpylFold ------------------------------------
let g:SimpylFold_docstring_preview=1

" ------------------------------ Vim-Latex -------------------------------------
let g:tex_flavor = 'latex'
set grepprg=grep\ -nH\ $*
let g:tex_indent_items = 0
set iskeyword+=:
nmap <C-Space> <Plug>Tex_FastEnvironmentInsert
imap <C-j> <Plug>IMAP_JumpForward
imap <S-CR> <Plug>IMAP_JumpForward
nmap <S-CR> <Plug>IMAP_JumpForward
vmap <S-CR> <Plug>IMAP_JumpForward
"not necessary? set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" ------------------------------------------------------------------------------
" --------------------------------- General ------------------------------------
" ------------------------------------------------------------------------------
" turn off compat mode for vi
set nocompatible

" syntax highlighting
syntax on

" spell check
set spell
set spelllang=en,de

" (relative) line numbers
set number
set relativenumber

" Indent configuration
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set breakindent

" Show trailing whitespaces
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
set invlist

" Search
set ignorecase
set smartcase

" folding
set foldmethod=syntax
set foldlevelstart=100
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" Scrolling
set scrolloff=3 " Keep 3 lines below and above the cursor

" Open splits on the right of existing ones
set splitright
" Open splits below existing ones
set splitbelow

" Enabling mouse scrolling
set mouse=a

" Show as much as possible of a wrapped last line, not just "@".
set display=lastline

" ------------------------------------------------------------------------------
" ---------------------------------- Appearance --------------------------------
" ------------------------------------------------------------------------------
set termguicolors
" Good color alts: monokai (sublime default), one (atom default), OceanicNext
colo molokai
let g:airline_theme='badwolf' " reset nice airline theme
" Brighter number column
hi LineNr guifg=#aaaaaa
hi SpellBad guibg=#6d0000

