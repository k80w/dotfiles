set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
"
call vundle#end()
filetype plugin indent on

" Makes airline work
set laststatus=2

let base16colorspace=256
colorscheme base16-google-dark

set number
set cursorline
set tabstop=4
syntax enable

