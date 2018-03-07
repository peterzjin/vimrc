" install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'stevearc/vim-arduino'
Plugin 'mbbill/echofunc'
Plugin 'minibufexpl.vim'
"Plugin 'taglist.vim'
Plugin 'c.vim'

call vundle#end()
filetype plugin indent on

"set guifont=Consolas:h14
"set guifont=Courier\ New\ 14

set nobackup
set number
set guioptions-=T
set incsearch
set hlsearch
set backspace=2
set ruler
colorscheme desert
syntax on

nmap fe <C-W>j<C-W>l:Explore<cr>

"""""""""""""""""""""""""""""""""
"	MiniBufExplorer  	"
"""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

nnoremap <C-Z> :bp<cr>
inoremap <C-Z> <ESC>:bp<cr>

nnoremap <F2> :bp<cr>
inoremap <F2> <ESC>:bp<cr>
nnoremap <F3> :bn<cr>
inoremap <F3> <ESC>:bn<cr>
nnoremap <F4> :bd<cr>
inoremap <F4> <ESC>:bd<cr>

"""""""""""""""""""""""""""""""""
"	taglist & ctags	"
"""""""""""""""""""""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

"""""""""""""""""""""""""""""""""
"	SuperTab		"
"""""""""""""""""""""""""""""""""
let g:SuperTabRetainCompletionType = 0
let g:SuperTabDefaultCompletionType = "<C-X><C-N>"

