" To start vim without using this .vimrc file, use:
"     vim -u NORC
" To start vim without loading any .vimrc or plugins, use:
"     vim -u NONE

" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible


" plugins managed via vim-plug
"###############################################################################
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'enricobacis/paste.vim'
call plug#end()

" leader key
"###############################################################################
:let mapleader = ","		" remap leader key from \ to ,

" scheme
"###############################################################################
colorscheme molokai

