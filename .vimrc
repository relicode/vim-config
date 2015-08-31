syntax enable
set number
filetype on
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
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

" tabstop=4 shiftwidth=4 expandtab
autocmd Filetype javascript set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype jade set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype coffee set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype html set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype scss set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype css set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype sass set tabstop=2 shiftwidth=2 expandtab

" pathogen
call pathogen#infect()
syntax enable
filetype plugin indent on

let g:syntastic_javascript_checkers = ['eslint']
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

