set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" PLUGINS
	Plugin 'chriskempson/base16-vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'Chiel92/vim-autoformat'
	Plugin 'junegunn/goyo.vim'
	Plugin 'Shougo/deoplete.nvim'

	" Languages/syntax
	Plugin 'uarun/vim-protobuf'
	Plugin 'tikhomirov/vim-glsl'
	Plugin 'fatih/vim-go'
	Plugin 'ledger/vim-ledger'
	Plugin 'elixir-lang/vim-elixir'
	Plugin 'slashmili/alchemist.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'rust-lang/rust.vim'
	Plugin 'vim-scripts/nginx.vim'
	Plugin 'alunny/pegjs-vim'
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
set linebreak
syntax enable

" Relative numbers
set number relativenumber

" Enable italics
set t_ZH=[3m
set t_ZR=[23m

" Woo colors
hi Normal ctermbg=none
hi LineNr ctermbg=none ctermfg=19
hi CursorLineNr ctermbg=18 ctermfg=15
hi CursorLine ctermbg=18
hi StatusLine ctermbg=18 ctermfg=20

" hi Comment cterm=italic ctermfg=8
hi Search ctermfg=0 ctermbg=11
hi WildMenu ctermfg=0 ctermbg=11

" Cursor
" n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set guicursor=n-v-c-sm:block
set guicursor+=i-ci-ve:ver25-blinkon10
set guicursor+=r-cr-o:hor20-blinkon10

" Indent guides
set listchars=tab:\│\ ,trail:-
set list
hi NonText ctermfg=18

" Markdown highlighting
hi markdownItalic cterm=italic
hi markdownBold cterm=bold

hi markdownHeadingDelimiter cterm=bold ctermfg=blue
hi link markdownH1 markdownHeadingDelimiter
hi link markdownH2 markdownH1
hi link markdownH3 markdownH2
hi link markdownH4 markdownH3
hi link markdownH5 markdownH4
hi link markdownH6 markdownH5

" use xo for autoformat
let g:formatters_javascript = ['xo_javascript']

" JSDoc
let g:javascript_plugin_jsdoc = 1

" syntastic stuff
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ["go", "gofmt", "golint", "govet"]

" Ayy
let g:deoplete#enable_at_startup = 1

" Save w/ sudo
cmap w!! w !sudo tee > /dev/null %
