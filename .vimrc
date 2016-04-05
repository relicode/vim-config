syntax enable
set number
filetype on
filetype plugin on
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

" tabstop=2 shiftwidth=2 expandtab
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

" Disable concealing
let g:vim_json_syntax_conceal = 0

