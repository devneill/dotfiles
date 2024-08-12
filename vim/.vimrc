" ----------------------------------------------------------GENERAL CONFIG
" Disable VI
set nocompatible
"Enable syntax processing
syntax enable
" Enable Plugins
filetype plugin on
" Use system clipboard by default
set clipboard=unnamed

" ----------------------------------------------------------CUSTOM CONFIG
" TABS

" Set tabs as spaces
set expandtab

" Number of visual spaces per TAB
set tabstop=2

" Number of spaces in tab when editing
set softtabstop=2

" Number of spaces for indent
set shiftwidth=2


" LOOK AND FEEL

" Show line numbers
set number

" Highlight the line your cursor is in
set cursorline

" Faster scrolling
set ttyfast

" Distance from top/bottom before scrolling starts
set scrolloff=20

" Turn on auto indenting
set autoindent

" Use a visual bell instead of an audible one
set visualbell

" Don't show mode
set noshowmode

" Ensure syntax highlighting doesnt break for larger files
set lazyredraw
set redrawtime=10000

" --------------------------------------------------------keyboard shortcuts
" Escape is jk
inoremap jk <esc>

" Set leader key ,
let mapleader = ","

" ------------------------------------------------------------------PLUGINS
" Plug initialiser
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins list
call plug#begin('~/.vim/plugs')
  Plug 'w0rp/ale' " Linting and Fixing
  Plug 'itchyny/lightline.vim' " Status bar
  Plug 'scrooloose/nerdtree' " Nerdtree file browser
call plug#end()

" ------------------------------------------------------------------PLUGIN CONFIG
" ----------------------------------------------------------Lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'percent' ],
      \              [ 'gitbranch', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ }

set laststatus=2
