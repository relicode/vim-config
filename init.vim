scriptencoding utf-8

" To install nvim on ubuntu:
" sudo apt-get install software-properties-common
" sudo add-apt-repository ppa:neovim-ppa/unstable
" sudo apt-get update
" sudo apt-get install neovim
" sudo apt-get install python-dev python-pip python3-dev python3-pip
" sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
" sudo update-alternatives --config vi
" sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
" sudo update-alternatives --config vim
" sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
" sudo update-alternatives --config editor
"
" Then when running neovim the first time, run ":PlugInstall"

" Python paths
" pip2 install --user neovim
" pip3 install --user neovim

" let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

" Line up a certain character in each line
Plug 'https://github.com/junegunn/vim-easy-align.git'

" A git UI plugin
Plug 'https://github.com/tpope/vim-fugitive.git'

" Pop-up file manager
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

" Map F2 to NERDTreeToggle
map <F2> :NERDTreeToggle<CR>


let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "-",
    \ "Renamed"   : "/",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "*",
    \ "Clean"     : "`",
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeIgnore = ['\.pyc$', '\.o$', '\.lib$', '\.a$', '\.dll$', '\.so$', '\.so\.', '\.dylib$', '\.exe$', '\.out$', '\.app$', '\.stackdump$']

" Colour scheme
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/frankier/neovim-colors-solarized-truecolor-only.git'

" Add quotes, html tags, etc. around something
Plug 'https://github.com/tpope/vim-surround.git'

" Commenting/uncommenting stuff
Plug 'https://github.com/tpope/vim-commentary.git'

" Consistent editing styles (indent, etc)
Plug 'https://github.com/editorconfig/editorconfig-vim.git'

" Lets you refactor multiple things with ctrl-n
Plug 'terryma/vim-multiple-cursors'

" Open a file to a specific line with 'vim file:line'
Plug 'bogado/file-line'

" Fast fuzzy searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
set rtp+=~/.fzf
map <C-F> :FZF +c -m -x<cr>

" Deal with trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
map <leader>s :StripWhitespace<CR>

" Highlight indent levels
Plug 'nathanaelkane/vim-indent-guides'
map <C-I> :IndentGuidesToggle<cr>

" Let the '.' command work with other plugins
Plug 'tpope/vim-repeat'

" Colour scheme
Plug 'chriskempson/base16-vim'

" Asynchronous support
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Fancy status bar
" I *think* this causes serious slowdown, so I'm disabling for now
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax checking
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" Narrow Region
Plug 'chrisbra/NrrwRgn'
map <leader>r :NarrowRegion<CR>

" Jump to a specific character
Plug 'easymotion/vim-easymotion'

" Better :terminal commands
Plug 'mklabs/split-term.vim'
set splitright
set splitbelow
let g:disable_key_mappings = 1
let g:split_term_vertical = 1

" Fix lag in Ruby
" Plug 'vim-ruby/vim-ruby'
" let ruby_no_expensive=1
" let g:ruby_no_expensive=1

" Syntax highlighting
Plug 'mustache/vim-mustache-handlebars'
Plug 'dag/vim-fish'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'sheerun/vim-polyglot'
let g:mustache_abbreviations = 1

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" Colours
set termguicolors
set background=dark
colorscheme base16-phd

" Relative line numbers
au BufReadPost * set relativenumber
au BufReadPost * set number

" groups of letters with dashes as words
set iskeyword +=-
set binary

" Disable highlight
nnoremap <leader><space> :noh<CR>

" Re-wrap text
nnoremap <leader>j       gqap
nnoremap <leader>w       :set wrap linebreak nolist<CR>
nnoremap <leader>h       :TOhtml<CR>

nnoremap <leader>m       :e ++ff=dos %<CR>

" Set up proper wrapping
set wrap
set linebreak

" Spelling
set spell

" Map <leader>r to NarrowRegion
map <leader>r :NarrowRegion<CR>

" Set backspace to not go beyond the new insert, but to go over autoindent and
" end of lines
set backspace=eol,indent

" Instead of failing because a file isn't saved, prompt to save the file
set confirm

" Blink instead of beep
set visualbell

" Tabstops
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Smart search
set ignorecase
set smartcase

" Show lines above and below the cursor when scrolling
set scrolloff=4

" Don't automatically comment the next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufNewFile,BufRead *.js.erb set ft=javascript.eruby
autocmd BufNewFile,BufRead *.html.erb set ft=html.eruby
autocmd BufNewFile,BufRead *.html.haml set ft=haml
autocmd BufNewFile,BufRead *.ctp set ft=php.html
autocmd BufNewFile,BufRead *.md set ft=markdown
autocmd BufNewFile,BufRead *.hbs set ft=handlebars.html
autocmd BufNewFile,BufRead *.rss setfiletype xml
autocmd BufNewFile,BufRead .envrc set ft=zsh
autocmd BufNewFile,BufRead .envrc-sample set ft=zsh

" Auto-complete for :commands in vim
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.

" Show cursor-position information
set ruler

" Don't add multiple spaces on a join
set nojoinspaces

" Don't scroll all the way left on pgup/pgdn
set nostartofline

" Improved regex
set magic

" Highlight the 80th column
set colorcolumn=80

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
nnoremap <silent> <leader>q gwip

" Make the clipboard work
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

" Disable the mouse
set mouse=c

" Return to the same spot in the file that we were at
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Re-map ctrl-h/j/k/l to move around in normal mode
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Re-map ctrl-h/j/k/l to move around in terminal mode
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Make ctrl-w escape insert mode
tnoremap <C-w> <C-\><C-n><C-w>
inoremap <C-w> <esc><C-w>

" Let <enter> enter insert mode (helpful for terminals)
" nnoremap <return> i

" treat long lines as break lines (useful when moving around in them)
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap <up> g<up>
nnoremap <down> g<down>

" COC SETTINGS "

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
