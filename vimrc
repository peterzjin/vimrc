" get the vimrc:
" git clone https://github.com/peterzjin/vimrc.git ~/.vim

" install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" install plugin:
" Launch vim and run ":PluginInstall"

if has('win64') || has('win32') || has('win16')
	:let run_os = "win"
else
	:let run_os = "linux"
endif

set nocompatible
filetype off

if run_os == "win"
	set iminsert=0 imsearch=0
endif

if run_os == "win"
	set guifont=Consolas:h14
	set rtp+=$HOME\.vim\bundle\Vundle.vim
	call vundle#begin('$HOME\.vim\bundle\')
else
	set guifont=Courier\ New\ 14
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'

Plugin 'ervandew/supertab'
" vim-arduino doesn't support windows
if run_os != "win"
Plugin 'stevearc/vim-arduino'
else
Plugin 'Arduino-syntax-file'
endif
Plugin 'mbbill/echofunc'
Plugin 'minibufexpl.vim'
"Plugin 'taglist.vim'
Plugin 'c.vim'

call vundle#end()
filetype plugin indent on

if run_os == "win"
" for Arduino-syntax-file
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
autocmd! FileType arduino set autoindent expandtab shiftwidth=2 tabstop=2 softtabstop=2
endif

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

