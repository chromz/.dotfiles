" Set line numbers
set number

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'nightsense/vimspectr'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-sleuth'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Fonts
set guifont=Inconsolata\ for\ Powerline\ 12
" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Remove toolbar
set guioptions-=T  
" Remove menu bar
set guioptions-=m  "remove menu bar
" Theme
colorscheme vimspectrgrey-light 
set background=light
map <silent> <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
