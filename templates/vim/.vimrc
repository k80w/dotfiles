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
Plugin 'scrooloose/syntastic'
"

call vundle#end()
filetype plugin indent on

" Makes airline work
set laststatus=2
" Makes airline use the terminal theme
let g:airline_theme='term'
" Makes airline cool
set ttimeoutlen=50

" Characters stuff
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒 '
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '$'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = 'x'
let g:airline_symbols.whitespace = '-'

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
hi CursorLine ctermbg=18
hi CursorLineNr ctermbg=18 ctermfg=15
hi Comment cterm=italic

" syntastic stuff
let g:airline#extensions#syntastic#enabled = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ["go", "gofmt", "golint", "govet"]

" Save w/ sudo
cmap w!! w !sudo tee > /dev/null %
