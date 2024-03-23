" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Stylistic stuff
set shiftwidth=4
set wrap
set autoindent 

" Show line numbers.
set number

" Show file stats.
set ruler

" Encoding.
set encoding=utf-8



" Enable auto completion menu after pressing TAB.
set wildmenu

" Status bar.
set laststatus=2

" Last line.
set showmode
set showcmd

set number # Show line numbers

" VimConfig.com is pretty good :)

## General
set number	# Show line numbers
set linebreak	# Break lines at word (requires Wrap lines)
set showbreak=+++ 	# Wrap-broken line prefix
set textwidth=100	# Line wrap (number of cols)
set showmatch	# Highlight matching brace
set visualbell	# Use visual bell (no beeping)
 
set hlsearch	# Highlight all search results
set smartcase	# Enable smart-case search
set gdefault	# Always substitute all matches in a line
set ignorecase	# Always case-insensitive
set incsearch	# Searches for strings incrementally
 
set autoindent	# Auto-indent new lines
set shiftwidth=4	# Number of auto-indent spaces
set smartindent	# Enable smart-indent
set smarttab	# Enable smart-tabs
set softtabstop=4	# Number of spaces per Tab
 
## Advanced
set ruler	# Show row and column ruler information
 
set undolevels=1000	# Number of undo levels
set backspace=indent,eol,start	# Backspace behaviour
