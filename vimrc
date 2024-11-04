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
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'neoclide/coc-nvim'
"Plugin 'junegunn/vim-plug'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"source /home/ali/.vim-ide/vimrc
