syntax on                                    " Turn on syntax highlighting

set mouse=a                                  " Use the mouse!

set encoding=utf-8                           " Encoding

set laststatus=1                             " Status bar

" General
set number                                   " Show line numbers
set linebreak                                " Break lines at word (requires Wrap lines)
set showmatch                                " Highlight matching brace
set visualbell                               " Use visual bell (no beeping)
 
set hlsearch                                 " Highlight all search results
set smartcase                                " Enable smart-case search
set gdefault                                 " Always substitute all matches in a line
set ignorecase                               " Always case-insensitive
set incsearch                                " Searches for strings incrementally
 
set autoindent                               " Auto-indent new lines
set shiftwidth=4                             " Number of auto-indent spaces
set smartindent                              " Enable smart-indent
set noexpandtab                              " No using spaces please
set softtabstop=4                            " Number of spaces per Tab
 
" Advanced
set ruler                                    " Show row and column ruler information
 
set undolevels=1000                          " Number of undo levels
set backspace=indent,eol,start               " Backspace behaviour
set lazyredraw                               " Don't redraw every frame thank you

" Folding!
set foldenable                               " Yes pls
set foldlevelstart=10                        " Mostly unfolded at start
set foldnestmax=10                           " Allow lots of folding
set foldmethod=indent                        " Fold based on indentation pls

" The command menu
set wildmenu                                 " Autocomplete for commands apparently

" Keybinds!
                                             
map r :redo<cr>|                             " Normal mode   r -> Redo
map qq :q<cr>|                               " Normal mode   qq -> :q
                                             
map! <C-s> <cmd>:w<cr>|                      " Insert mode   Ctrl+s -> :w
map <C-s> :w<cr>|                            " Normal mode   Ctrl+S -> :w

nnoremap <leader><space> :nohlsearch<CR>|    " Normal mode?  Unhighlight searches
nnoremap <space> za|                         " Normal mode?  Toggle fold

" VimConfig.com is pretty good :)
" Thanks to https://web.archive.org/web/20161224112739/https://dougblack.io/words/a-good-vimrc.html#colors
