execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set noerrorbells
set nocompatible
set ai
set si
set cindent
set nowrap
set incsearch
set showmatch
set mat=5
set wrap
set hls
set cul
set wrapscan
set sol

" display filename
set modeline
set ls=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:flow#autoclose = 1
let g:javascript_plugin_flow = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

