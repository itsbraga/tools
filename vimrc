""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               									   "
"               	  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗			   "
"               	  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝			   "
"               	  ██║   ██║██║██╔████╔██║██████╔╝██║     			   "
"               	  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     			   "
"                	   ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗			   "
"                 	    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝			   "
"               									   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  


" Type :help <command> for more information on specific commands.

" :s/terme_recherche/terme_remplacement/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme arcadia

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
"set number

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Enable mouse use
set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" VIMSCRIPT ------------------------------------------------------------------------ {{{

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" }}}


" STATUS LINE ---------------------------------------------------------------------- {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ ✨\ hex:\ 0x%B\ ✨\ row:\ %l\ ✨\ col:\ %c\ ✨\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:user42 = 'user42'
let g:mail42 = 'user42@student.42.fr'
