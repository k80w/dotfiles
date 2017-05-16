set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"

call vundle#end()
filetype plugin indent on

" Makes airline work
set laststatus=2

" Makes airline use the terminal theme
let g:airline_theme='term'

" Base16 stuff
let base16colorspace=256
colorscheme base16-default-dark " Doesn't matter which base16 theme we choose unless we're in gvim

set number
set cursorline
set tabstop=4
syntax enable

" Save w/ sudo
cmap w!! w !sudo tee > /dev/null %
