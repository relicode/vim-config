# neovim-config

My fairly alive neovim config for easily installing to new systems.

## Features, Requirements and Setup

#### Features
  - Airline status bar
  - Async support
  - Base16 color schema
  - Better whitespace dealing
  - Coc intellisense
  - Easy-align
  - Editor config consistency checking
  - Fast fuzzy searching
  - Gist support
  - Git-ui
  - Indent highlighting
  - Multi cursor support
  - Nerdtree Pop-up file manager
  - Polyglot syntax highlighter
  - Syntastic linter
  - Typescript support
  - Vim-commentary
  - Vim-surround
  - WebAPI support

#### Requirements
  - [Vim-plug](https://github.com/junegunn/vim-plug)
  - [NodeJs 12+](https://github.com/nvm-sh/nvm#installing-and-updating)
  - Python3 with pynvim `pip3 install pynvim`
  - Everything else is optional, use :checkhealth

## Setup
Set $XDG_DATA_HOME env variable for example: `export XGD_DATA_HOME="${HOME}/.local/share"`.

Install requirements (especially vim-plug with `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`)

Copy or link init.vim to `$HOME/.config/nvim/` (`mkdir -p ~/.config/nvim ; cd ~/.config/nvim ; ln -s ~/etc/vim-config/init.vim ./`), start neovim and run `:PlugInstall`. If updating, run `:PlugClean` first.

#### Typescript support

Run `:CocInstall coc-json coc-tsserver` in nvim.
