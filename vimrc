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
set ruler
set shiftwidth=2
set softtabstop=2
set textwidth=78

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <ESC> <Nop>
inoremap <TAB> <ESC>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <ESC> <Nop>
nnoremap <TAB> :

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <ESC> <Nop>
vnoremap <TAB> <ESC>

nnoremap h <Nop>
nnoremap l <Nop>

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
nnoremap sl <C-W>l
nnoremap sk <C-W>k
nnoremap sj <C-W>j
nnoremap sh <C-W>h
nnoremap so <C-W>o
nnoremap s\| <C-W>\|
nnoremap s_ <C-W>_
nnoremap s= <C-W>=

augroup templates
    au!
    autocmd BufNewFile *.* silent! execute '0r $HOME/vimfiles/templates/skeleton.'.expand("<afile>:e")
augroup END
