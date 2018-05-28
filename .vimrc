" Set line numbers
set number
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'nightsense/vimspectr'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-sleuth'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'

call plug#end()

" Silver searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" let g:ackprg = 'ag --nogroup --nocolor --column'

" Identation
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
set list lcs=tab:\┆\ 
set list

" YCM
set completeopt-=preview


" Save session
" Buffers
set hidden

" Fonts
" set guifont=Roboto\ Mono\ Medium\ for\ Powerline\ 11
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
set guifont=DejaVuSansMono\ Nerd\ Font\ 10

" ALE
let g:ale_sign_error = ''
let g:ale_sign_warning = ''

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendors'


" NERDTree
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1

" gVim options
set guioptions-=T  
set guioptions-=L
set guioptions-=r

" Remove menu bar
set guioptions-=m 
" Theme
colorscheme gruvbox
set background=dark
map <silent> <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


" Vim search
set incsearch
set hlsearch
hi Search guibg=LightBlue
nnoremap <esc> :noh<return><esc>
