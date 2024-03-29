filetype plugin indent on

syn on

set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set expandtab
set nobackup
set nomodeline
set noswapfile
set number
set norelativenumber
set ruler
set shiftwidth=2
set softtabstop=2
set textwidth=78

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

cnoremap <TAB> <UP>
cnoremap <S-TAB> <DOWN>

inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <TAB> <ESC>
inoremap <Up> <Nop>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-O> <C-W>o
nnoremap <C-V> v
nnoremap <Down> <Nop>
nnoremap <F10> :source $HOME/.vim/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <F11> :vsplit $MYVIMRC<CR>
nnoremap <F12> :source $MYVIMRC<CR>
nnoremap <F2> :cprevious<CR>
nnoremap <F3> :cnext<CR>
nnoremap <F4> :copen<CR>
nnoremap <F5> :execute "vimgrep /[+@]" . expand("<cword>") . "/j %" <bar> cw<CR>
nnoremap <F6> :Tabularize /[+@]\w\+/<CR>
nnoremap <F8> :cd %:p:h<CR>
nnoremap <F9>  :vsplit $HOME/.vim/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <Leader>g :<c-u>:Gwrite<bar>Gcommit<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gca :Gcommit --amend<cr>
nnoremap <Leader>gf :Gfetch<cr>
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <TAB> :
nnoremap <Up> <Nop>
nnoremap <script> <silent> <buffer> <localleader>f *:g//m0<CR>:g//m0<CR>gg
nnoremap <script> <silent> <buffer> <localleader>i *:g//m$<CR>gg
nnoremap h <Nop>
nnoremap l <Nop>
nnoremap v <C-V>


vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <TAB> <ESC>
