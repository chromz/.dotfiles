" Set line numbers
set number

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'rakr/vim-one'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-sleuth'

call plug#end()

"remove toolbar
set guioptions-=T  
" Theme
colorscheme one
set background=light
map <silent> <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='one'

