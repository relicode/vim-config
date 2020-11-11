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
Copy or link init.vim to `$HOME/.config/nvim/`, start neovim and run `:PlugInstall`. If updating, run `:PlugClean` first.

#### Typescript support

Run `:CocInstall coc-json coc-tsserver` in nvim.
