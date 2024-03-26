" VimConfig.com is pretty good :)

syntax on                       " Turn on syntax highlighting

set mouse=a                     " Use the mouse!

set encoding=utf-8              " Encoding

set laststatus=1                " Status bar

" General
set number                      " Show line numbers
set linebreak                   " Break lines at word (requires Wrap lines)
set showmatch                   " Highlight matching brace
set visualbell                  " Use visual bell (no beeping)
 
set hlsearch                    " Highlight all search results
set smartcase                   " Enable smart-case search
set gdefault                    " Always substitute all matches in a line
set ignorecase                  " Always case-insensitive
set incsearch                   " Searches for strings incrementally
 
set autoindent                  " Auto-indent new lines
set shiftwidth=4                " Number of auto-indent spaces
set smartindent                 " Enable smart-indent
set noexpandtab                 " No using spaces please
set softtabstop=4               " Number of spaces per Tab
 
" Advanced
set ruler                       " Show row and column ruler information
 
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" Keybinds!
                                " Normal mode   r -> Redo
map r :redo<cr>
                                " Normal mode   qq -> :q
map qq :q<cr>

                                " Insert mode   Ctrl+s -> :w
map! <C-s> <cmd>:w<cr>
                                " Normal mode   Ctrl+S -> :w
map <C-s> :w<cr>          
