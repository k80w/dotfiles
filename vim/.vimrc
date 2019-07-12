set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Hello, world
" Plugins
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	
	Plugin 'chriskempson/base16-vim'
	Plugin 'junegunn/goyo.vim'
	Plugin 'kien/rainbow_parentheses.vim'

	Plugin 'ctrlpvim/ctrlp.vim'

	Plugin 'autozimu/LanguageClient-neovim'

	Plugin 'Shougo/deoplete.nvim'
	Plugin 'zchee/deoplete-go'

	Plugin 'fholgado/minibufexpl.vim'
	
	" Languages/syntax
	Plugin 'uarun/vim-protobuf'
	Plugin 'tikhomirov/vim-glsl'
	Plugin 'mickboldon/fountain.vim'
	Plugin 'fatih/vim-go'
	Plugin 'dart-lang/dart-vim-plugin'
	Plugin 'christoph-frick/vim-fennel-ft'
	Plugin 'tbastos/vim-lua'
	Plugin 'NewLunarFire/wla-vim'
	Plugin 'leafo/moonscript-vim'
	Plugin 'digitaltoad/vim-pug'
	Plugin 'elixir-lang/vim-elixir'
	Plugin 'slashmili/alchemist.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'leafgarland/typescript-vim'
	Plugin 'rust-lang/rust.vim'
	Plugin 'vim-scripts/nginx.vim'
call vundle#end()
filetype plugin indent on

" LanguageClient
let g:LanguageClient_serverCommands = {
	\ 'go': ['go-langserver']
	\ }

" Mappings
noremap <Leader>mbe :MBEToggle<cr>
noremap <C-H> :MBEbp<cr>
noremap <C-L> :MBEbn<cr>

noremap <C-J> <C-W>w<cr>
noremap <C-K> <C-W>W<cr>

" Color stuff
syntax enable
hi LineNr ctermfg=8
"if $TERM =~ "rxvt-unicode-256" " Only set stuff for rxvt-unicode-256color so stuff isnt wack anywhere else
	colorscheme base16-default-dark " Doesn't matter which base16 scheme we use unless we're in gvim
	hi LineNr ctermbg=none
"endif

hi Comment cterm=italic

" other

set number
set tabstop=4
set shiftwidth=4
set linebreak
set list

" Cursor
" n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set guicursor=n-v-c-sm:block
set guicursor+=i-ci-ve:ver25-blinkon10
set guicursor+=r-cr-o:hor20-blinkon10

" conceals
set concealcursor=ni
set conceallevel=1
syn match Conceal '!=' conceal cchar=≠
syn match Conceal '<=' conceal cchar=≤
syn match Conceal '>=' conceal cchar=≥
syn match Conceal '->' conceal cchar=→
hi! link Conceal Normal

" Completion
let g:deoplete#enable_at_startup = 1
