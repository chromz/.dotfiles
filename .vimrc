" Set line numbers
set number

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'rakr/vim-one'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-sleuth'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"remove toolbar
set guioptions-=T  
" Theme
colorscheme one
set background=light
map <silent> <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='one'
set guifont=Inconsolata\ 12
