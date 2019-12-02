syn on
colorscheme desert

set expandtab
set number
set ruler

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <ESC> <NOP>
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>

inoremap <TAB> <ESC>

nnoremap <F12> :source $MYVIMRC<CR>
nnoremap <F11> :edit $MYVIMRC<CR>
nnoremap <F10> :source $HOME/vimfiles/ftplugin/<C-R>=&ft<CR>.vim<CR>
nnoremap <F9> :vsplit $HOME/vimfiles/ftplugin/<C-R>=&ft<CR>.vim<CR>
