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

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <TAB> <ESC>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <TAB> :

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <TAB> <ESC>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap h <Nop>
nnoremap l <Nop>
nnoremap v <C-V>
nnoremap <C-V> v

cnoremap <TAB> <UP>
cnoremap <F1> !git status<CR>
cnoremap <F2> !git add<Space>
cnoremap <F3> !git commit<CR>

inoremap <TAB> <ESC>

nnoremap <TAB> :
nnoremap <F12> :source $MYVIMRC<CR>
nnoremap <F11> :vsplit $MYVIMRC<CR>
nnoremap <F10> :source $HOME/.vim/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <F9>  :vsplit $HOME/.vim/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <F2> :cnext<CR>
nnoremap <F3> :cprevious<CR>
nnoremap <F4> :copen<CR>

let mapleader = " "

nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gca :Gcommit --amend<cr>
nnoremap <Leader>gf :GFetch<cr>
nnoremap <Leader>gp :GPull<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
