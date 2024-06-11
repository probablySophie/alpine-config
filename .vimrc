syntax on                                    " Turn on syntax highlighting

set mouse=a                                  " Use the mouse!

set background=dark
colo retrobox

set encoding=utf-8                           " Encoding

set laststatus=1                             " Status bar

let mapleader = " "

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

" The command menu
set wildmenu                                 " Autocomplete for commands apparently

" Keybinds!

nnoremap <leader>qq :qa<cr>|                 " Quit All

map r :redo<cr>|                             " Normal mode   r -> Redo
map qq :q<cr>|                               " Normal mode   qq -> :q
                                             
map! <C-s> <cmd>:w<cr>|                      " Insert mode   Ctrl+s -> :w
map <C-s> :w<cr>|                            " Normal mode   Ctrl+S -> :w

nnoremap <leader><space> :nohlsearch<CR>|    " Normal mode   Unhighlight searches

nnoremap b <C-v>|                            " Normal mode   Open visual block mode

" Tabs!  So many tabs!
nnoremap <Tab><Right> :tabnext<cr>
nnoremap <Tab><Left> :tabprevious<cr>
nnoremap <Tab>x :tabclose<cr>
nnoremap <Tab>n :tabnew<cr>

" Quick swap between tabs
nnoremap <Tab>1 1gt
nnoremap <Tab>2 2gt
nnoremap <Tab>3 3gt
nnoremap <Tab>4 4gt
nnoremap <Tab>5 5gt
nnoremap <Tab>6 6gt
nnoremap <Tab>7 7gt
nnoremap <Tab>8 8gt
nnoremap <Tab>9 9gt

" VimConfig.com is pretty good :)
" Thanks to https://web.archive.org/web/20161224112739/https://dougblack.io/words/a-good-vimrc.html#colors



" Folding!
set foldenable                               " Yes pls
set foldlevelstart=10                        " Mostly unfolded at start
set foldnestmax=10                           " Allow lots of folding
set foldmethod=syntax                        " Fold based on indentation pls

map ff :fold<cr>
map fo :foldopen<cr>
map fc :foldclose<cr>

" Autocompletion?!
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,preview,noselect,noinsert

" Make us an AutoCommand for whenever a character is inserted in Insert mode :)
au InsertCharPre * :call TestFunc(v:char)

" Quiet the autocompletion feedback messages
setlocal shortmess+=c

" The auto sugguestion function that I'm not going to rename
function! TestFunc(char)

	" If there's a popup menu, don't do anything
	" We've probably already opened one :)
	if pumvisible() != 0
	    return
	endif

	" https://stackoverflow.com/questions/59173399
	" Is the most recent keypress alphabetic?
	if v:char =~ '\a'
	    
	    " Open the omnifunc menu
	    :call feedkeys("\<C-x>\<C-o>")
	    return
	endif

	" Super simple bracket completion
	if v:char == '('
	    :call feedkeys(")\<left>")
	elseif v:char == '{'
	    :call feedkeys("}\<left>")
	elseif v:char == '['
	    :call feedkeys("]\<left>")
	endif

endfunction
