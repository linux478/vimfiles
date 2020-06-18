filetype plugin indent on

syn on
colorscheme ron

set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set expandtab
set nobackup
set nomodeline
set noswapfile
set number
set relativenumber
set ruler
set shiftwidth=2
set softtabstop=2
set textwidth=78

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <TAB> <ESC>

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
nnoremap <F2> :Tabularize /[+@]\w\+/<CR>
nnoremap <F2> :cnext<CR>
nnoremap <F3> :cprevious<CR>
nnoremap <F4> :copen<CR>
nnoremap <F5> :execute "vimgrep /[+@]" . expand("<cword>") . "/j %" <bar> cw<CR>
nnoremap <F6> :Tabularize /[+@]\w\+/<CR>
nnoremap <F9>  :vsplit $HOME/.vim/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <Leader>g :<c-u>:Gwrite<bar>Gcommit -m WIP<bar>Gpush<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gca :Gcommit --amend<cr>
nnoremap <Leader>gf :GFetch<cr>
nnoremap <Leader>gp :GPull<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <TAB> :
nnoremap <TAB> :
nnoremap <Up> <Nop>
nnoremap h <Nop>
nnoremap l <Nop>
nnoremap v <C-V>

cnoremap <TAB> <UP>

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <TAB> <ESC>
