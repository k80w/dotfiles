set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'
"
call vundle#end()
filetype plugin indent on

let base16colorspace=256
set background=dark
colorscheme base16-google-dark

set number
set cursorline
set tabstop=4
syntax enable

