set nocompatible              " required
filetype off                  " required

set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 		        " let Vundle manage Vundle, required
Plugin 'vim-scripts/indentpython.vim' 		" better python indentation
Plugin 'tmhedberg/SimpylFold' 		    	" better folding
Plugin 'vim-syntastic/syntastic' 	    	" syntax
Plugin 'nvie/vim-flake8'			" flake8 
Plugin 'tpope/vim-fugitive' 		    	" git integration
Plugin 'Valloric/YouCompleteMe'  	    	" youcompleteme
Plugin 'christoomey/vim-tmux-navigator'		" vim movement to tmux
Plugin 'ZeroKnight/vim-signjump'        	" jump between error signs
Plugin 'junegunn/vim-easy-align'		" alignment
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'} " powerline status bar

call vundle#end()           " required *All of your Plugins must be added before this line
filetype plugin indent on   " required

set foldmethod=indent       " enable folding
set foldlevel=19
" fold with spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1  " syntax checking/highlighting
syntax on

let g:ycm_autoclose_preview_window_after_insertion = 1 " youcomplete me closes preview window after completion

set nu              " Line numbers on
set ruler           " Cursor location
set hlsearch        " Search highlighting on
set nowrap          " Don't wrap lines
set smartcase       " Ignore case if searching all lowercase
set incsearch       " Show search matches while typing
set title           " Change the terminal's title
set noerrorbells    " don't beep
set backspace=indent,eol,start  " backspace works over end and start of line
set noswapfile      " Don't make a swapfile
set nobackup        " Don't make a backup
" save my pinky some work 
nnoremap ; :
" use comma as leader
let mapleader = ","
map <silent> <leader>h :set hlsearch!<cr>
set lazyredraw " don't update the display while executing macros
set termencoding=utf-8
set encoding=utf-8
set cmdheight=1
" make p in Visual mode replace the selected text with the yank register
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>
" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
" Use shift-H and shift-L for move to beginning/end of line
nnoremap H 0
nnoremap L $

" remove netrw banner
let g:netrw_banner = 0
" open files from netrw in the most recent tab
let g:netrw_browse_split = 3
" set width of directory pane
let g:netrw_winsize = 15
" let g:netrw_altv = 1
let g:netrw_liststyle=3
" Start newrw pane when vim starts
" augroup ProjectDrawer
" autocmd!
" autocmd VimEnter * :Vexplore
" augroup END

" turn off netrw
let loaded_netrwPlugin = 1

" ctrl-p search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" relative line numbers only with focus
set number
set relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
