set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS
Plugin 'chriskempson/base16-vim'
Plugin 'uarun/vim-protobuf'
Plugin 'fatih/vim-go'
"Plugin 'scrooloose/syntastic'
Plugin 'ledger/vim-ledger'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/nginx.vim'
"

call vundle#end()
filetype plugin indent on

" Base16 stuff
let base16colorspace=256
colorscheme base16-default-dark " Doesn't matter which base16 theme we choose unless we're in gvim

set number
set cursorline
set tabstop=4
set shiftwidth=4
syntax enable

" Enable italics
set t_ZH=[3m
set t_ZR=[23m

" Woo colors
hi LineNr ctermbg=0 ctermfg=19
hi CursorLineNr ctermbg=18 ctermfg=15
hi StatusLine ctermbg=18 ctermfg=20

hi Comment cterm=italic ctermfg=8
hi Search ctermfg=0 ctermbg=11
hi WildMenu ctermfg=0 ctermbg=11

" Cursor
" n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set guicursor=n-v-c-sm:block
set guicursor+=i-ci-ve:ver25-blinkon10
set guicursor+=r-cr-o:hor20-blinkon10

" JSDoc
let g:javascript_plugin_jsdoc = 1

" syntastic stuff
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ["go", "gofmt", "golint", "govet"]

" Save w/ sudo
cmap w!! w !sudo tee > /dev/null %
