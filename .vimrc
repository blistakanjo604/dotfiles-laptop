:set clipboard=unnamedplus
:filetype plugin on
:syntax on
:set number
:set relativenumber
:filetype indent on
:set mouse=a

if has('gui_running')
  set guifont=JetBrains\ Mono\ 11
  colorscheme torte
endif

if $TERM == 'alacritty'
  set ttymouse=sgr
endif

vmap <C-c> "+yi
vmap <C-x> "+c
