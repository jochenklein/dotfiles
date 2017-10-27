set nocompatible              " be iMproved, required
filetype off                  " required

set backspace=2 " make backspace work like most other apps

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" File Browsing, Path, and Finder
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'

" Auto-completion
" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

" Colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"---------------General---------------
set nu " Line numbers
set noswapfile
set encoding=utf-8
set cursorline
set colorcolumn=80

" Code Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za " Enable folding with the spacebar

"------------NerdTree----------------------
map <C-n> :NERDTreeToggle<CR>

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

" Spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

let python_highlight_all=1
syntax on
"------------Stop python PEP 8 stuff-----------------

"------------Colors------------
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
