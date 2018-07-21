set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	
	Plugin 'chriskempson/base16-vim'
	Plugin 'junegunn/goyo.vim'

	Plugin 'ctrlpvim/ctrlp.vim'

	Plugin 'Shougo/deoplete.nvim'
	Plugin 'zchee/deoplete-go'
	
	" Languages/syntax
	Plugin 'uarun/vim-protobuf'
	Plugin 'tikhomirov/vim-glsl'
	Plugin 'fatih/vim-go'
	Plugin 'dart-lang/dart-vim-plugin'
	Plugin 'tbastos/vim-lua'
	Plugin 'leafo/moonscript-vim'
	Plugin 'digitaltoad/vim-pug'
	Plugin 'elixir-lang/vim-elixir'
	Plugin 'slashmili/alchemist.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'rust-lang/rust.vim'
	Plugin 'vim-scripts/nginx.vim'
call vundle#end()
filetype plugin indent on

" Color stuff
syntax enable
hi LineNr ctermfg=8
if $TERM =~ "rxvt-unicode-256" " Only set stuff for rxvt-unicode-256color so stuff isnt wack anywhere else
	colorscheme base16-default-dark " Doesn't matter which base16 scheme we use unless we're in gvim
	hi LineNr ctermbg=none
endif

set number
set tabstop=4
set shiftwidth=4
set linebreak

" Cursor
" n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set guicursor=n-v-c-sm:block
set guicursor+=i-ci-ve:ver25-blinkon10
set guicursor+=r-cr-o:hor20-blinkon10

" Completion
let g:deoplete#enable_at_startup = 1
