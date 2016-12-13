" Franz Felscher dotfiles
" 
" ~/.vimrc

" 
filetype off
execute pathogen#infect() 
filetype plugin indent on
" syntax highlighting
syntax enable
colorscheme solarized
" airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

" ----------------------------------------------------------------------------
" gui settings 
set guioptions-=m   "remove menubar"
set guioptions-=T   "remove toolbar"
set guioptions-=r   "remove scrollbar"
set guioptions-=L   "remove scrollbar"
set linespace=3			"linespacing
let g:solarized_italic=0

if has('gui_running')
	set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
	set bg=light
else
	" dark bg in terminal mode
	set bg=dark
endif

" ranger file chooser
let g:ranger_map_keys=1 " map to ,r
"map <leader>f :Ranger<CR>

set nocompatible

" disable bell
set vb
set t_vb=

set modelines=0
" tabs / indent
setglobal tabstop=2       " tab width 
setglobal shiftwidth=2
setglobal softtabstop=2

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" line numbering
set relativenumber
set number
set cursorline "highlight current line with backgrund

" code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"nnoremap <leader>l :setl rnu!<cr>

" ranger file chooser
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
" case insensitve unless search contains upper case
set ignorecase
set smartcase

set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set linebreak
set textwidth=79
set wrapmargin=2
set formatoptions=qrnt1
set colorcolumn=80

" unmap arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
