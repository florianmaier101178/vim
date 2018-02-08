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
Plug 'kien/ctrlp.vim'
call plug#end()

" leader key
"###############################################################################
:let mapleader = ","		" remap leader key from \ to ,

" scheme
"###############################################################################
colorscheme molokai

" General settings
"###############################################################################
set wildignore+=*/tmp/*,*.so,*.swp,*.zip, *.exe, *.class

" CtrlP
"###############################################################################
" uses the wildignore setting
map <leader>b :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
