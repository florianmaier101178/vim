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
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
call plug#end()

" leader key
"###############################################################################
:let mapleader = ","		" remap leader key from \ to ,

" scheme
"###############################################################################
colorscheme molokai

" General settings
"###############################################################################
" syntax highlighting
if !exists("g:syntax_on")
        syntax enable
endif

" spaces and tabs
set tabstop=4
set softtabstop=4
set expandtab
" number of spaces to use for autoindenting
set shiftwidth=4
"use multiple of shiftwidth when indenting with '<' and '>' 
set shiftround

" Editor layout
set termencoding=utf-8
set encoding=utf-8
" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" hide buffers instead of closing them. this means that the current buffer can be put to background without being written; and that marks and undo history are preserved
set hidden
" reveal already opened files from the quickfix window instead of opening new buffers
set switchbuf=useopen
" remember more commands and search history
set history=1000
" use many levels of undo
set undolevels=1000
if v:version >= 730
    " keep a persistent backup file
    set undofile
    set undodir=~/.vim/.undo,~/tmp,/tmp
endif
" store swap files in one of these directories
set directory=~/.vim/.tmp,~/tmp,/tmp
" don't beep
set visualbell
set noerrorbells

set number
set cursorline
"This both turns on filetype detection and allows loading of language specific indentation files based on that detection.
filetype indent on
"This is a pretty cool feature I didn't know Vim had. You know how Vim automatically autocompletes things like filenames when you,
"for instance, run :e ~/.vim<TAB>? Well it will provide a graphical menu of all the matches you can cycle through if you turn on wildmenu.
set wildmenu
"Vim loves to redraw the screen during things it probably doesn't need to—like in the middle of macros.
"This tells Vim not to bother redrawing during these scenarios, leading to faster macros.
set lazyredraw
"With showmatch, when your cursor moves over a parenthesis-like character, the matching one will be highlighted as well.
set showmatch
"always show what mode we're currently editing in
set showmode
"always set autoindenting on
set autoindent
"copy the previous indentation on autoindenting
set copyindent
" when in insert mode, press <F2> to go to paste mode, where you can paste mass data that won't be autoindented
set pastetoggle=<F2>
" don't wrap lines
set nowrap
set fileformats="unix,dos,mac"
" normal OS clipboard interaction
set clipboard=unnamed
" automatically reload files changed outside of Vim
set autoread

" searching
" show search matches as you type
set incsearch
set hlsearch
" ignore case when searching
set ignorecase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.exe,*.class,*.jar

" netrw
"###############################################################################
nnoremap <leader>e :e .<CR>
nnoremap <leader>ev :Vexplore<CR>
nnoremap <leader>eh :Sexplore<CR>
"disable banner
let g:netrw_banner = 0
"open new file in vertical split
"let g:netrw_browse_split = 2

" CtrlP
"###############################################################################
" uses the wildignore setting
map <leader>b :CtrlPBuffer<cr>
let g:ctrlp_use_caching = 1
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
