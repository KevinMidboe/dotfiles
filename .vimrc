syntax on
set nocompatible              " be iMproved, required
filetype plugin on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:ajh17/VimCompletesMe.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'git@github.com:moll/vim-node.git'
" Vue syntax highlighting - https://github.com/posva/vim-vue
Plugin 'posva/vim-vue'

" autocmd FileType markdown let b:dispatch = 'octodown --live-reload %'

" Plugin 'JamshedVesuna/vim-markdown-preview'
" let vim_markdown_preview_github=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" Set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Set line number
set number

