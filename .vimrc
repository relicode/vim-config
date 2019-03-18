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
" HMR for parcel
set backupcopy=yes

" display filename
set modeline
set ls=2

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Always display statusline starting with the filename
set laststatus=2
set statusline=%F

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:javascript_plugin_flow = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_disable_quickfix = 1
