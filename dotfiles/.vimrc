set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

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

set number " show line numbers
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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins to install
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'jpalardy/vim-slime' " Send text to tmux session
Plugin 'bling/vim-airline' " VIM status line
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'

" Plugin 'oplatek/Conque-Shell'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdtree'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'vim-scripts/L9'
" Plugin 'clones/vim-fuzzyfinder'

call vundle#end()
filetype plugin indent on

"------------------------------------------------
"                    Navigation
"------------------------------------------------

" Select line Ctlr-e
" Scroll up Ctrl-up
" Scroll down Ctrl-down


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

" Exit Visual mode
inoremap <Esc>i <Esc>

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
let g:slime_target = "tmux"

" let g:ConqueTerm_SendVisKey = 'l'

" Switch splits
"nnoremap <Esc>w <C-w>w
"inoremap <Esc>w <Esc><C-w>wi

" Open r
"nnoremap o <C-w>s<C-w>w:ConqueTerm R<CR>
" nnoremap o :ConqueTerm R<CR>

" Send line
nmap rr <Plug>SlimeLineSend

" Send file
" nnoremap <Esc>r <F9>

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

" autocomplete
inoremap <Tab> <C-p>
