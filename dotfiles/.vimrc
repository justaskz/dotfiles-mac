"------------------------------------------------
"                 BASIC SETTINGS
"------------------------------------------------
" Font "
" colorscheme monokai
" let g:molokai_original = 1

syntax on

set expandtab
set shiftwidth=2
set softtabstop=2

" show line numbers
set number
set nobackup
set noswapfile

" Remove trailing whitespaces
autocmd BufWritePre *.* :%s/\s\+$//e

" Start in insert mode
" au BufRead,BufNewFile * start

" set laststatus=2
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"------------------------------------------------
"                     VUNDLE
"------------------------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins to install
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"------------------------------------------------
"                    Navigation
"------------------------------------------------
" Jump one word left Ctrl-left
" Works out of the box
" Jump one word right Ctrl-right
" Works out of the box

" Flip lines up Alt-up
" nnoremap <Esc>k <Esc>ddkP
" inoremap <Esc>k <Esc>ddkPi
" inoremap <M-up> <Esc>ddkPi

" Flip lines down Alt-down
" nnoremap <Esc>j <Esc>ddjP
" inoremap <Esc>j <Esc>ddjPi
" inoremap <M-down> <Esc>ddjPi

" Jump to the start of line Alt-left
nnoremap <Esc>h <Esc>^
inoremap <Esc>h <Esc>^i
inoremap <M-left> <Esc>^i
" Jump to the end of line Alt-right
nnoremap <Esc>l $
inoremap <Esc>l <Esc>$i
inoremap <M-right> <Esc>$i

" Select in line Shift-left
" Visual mode
" Select in line Shift-right
" Visual mode

"------------------------------------------------
" Save and exit
"------------------------------------------------

" Disable q
nnoremap q <NOP>

" quit Alt-q
nnoremap <C-q> :q!<CR>
inoremap <C-q> <Esc>:q!<CR>

" save Ctrl-s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

"------------------------------------------------
" Other
"------------------------------------------------
" autocomplete
inoremap <Tab> <C-p>

" let g:ConqueTerm_SendVisKey = 'l'

" Switch splits
"nnoremap <Esc>w <C-w>w
"inoremap <Esc>w <Esc><C-w>wi

" Open r
"nnoremap o <C-w>s<C-w>w:ConqueTerm R<CR>
" nnoremap o :ConqueTerm R<CR>

" refresh file
nnoremap <Esc>re :e<CR>
inoremap <Esc>re <Esc>:e<CR>i

" open explorer
nnoremap <Esc>e :Explore<CR>

" switch splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

