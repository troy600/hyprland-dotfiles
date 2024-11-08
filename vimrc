source /home/ali/.cache/wal/colors-wal.vim

highlight link javaIdentifier NONE
highlight link javaDelimiter NONE



" Set Coc's autocomplete menu background to black
" Set the background color of the Coc autocomplete menu to black
"highlight Pmenu      guibg=#000000
"highlight PmenuSel   guibg=#444444
"highlight PmenuSbar  guibg=#222222
"highlight PmenuThumb guibg=#555555


highlight Pmenu  ctermfg=blue ctermbg=0
highlight PmenuSel ctermbg=7
highlight CocPumMenu ctermbg=0
highlight CocMenuSel ctermfg=white ctermbg=2


"highlight CocPumSearch ctermfg=NONE ctermbg=NONE cterm=underline

syntax on
set nocompatible              " be iMproved, required
filetype on                  " required
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

call plug#begin('~/.vim/plugged')
" Plug in any plugins you want here, for example:
Plug 'tpope/vim-sensible'           " A sensible plugin
Plug 'junegunn/fzf', { 'do': './install --all' } " Fuzzy finder
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'slim-template/vim-slim'
call plug#end()

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
