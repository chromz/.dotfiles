" Set line numbers
set termguicolors
set number
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-sleuth'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'cseelus/vim-colors-lucid'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Badacadabra/vim-archery'
Plug 'whatyouhide/vim-gotham'
Plug 'mileszs/ack.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'gregsexton/MatchTag'
Plug 'alvan/vim-closetag'

call plug#end()

" Rip grep 
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

set cursorline

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" " let g:ackprg = 'ag --nogroup --nocolor --column'

" Fancy stuff
set guifont=DejaVuSansMono\ Nerd\ Font\ 9
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set clipboard=unnamedplus
set cursorline
set colorcolumn=80
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
command! Bd :bp|:bd#


set list lcs=eol:¬,nbsp:␣,trail:·,tab:\┆\ 


" " Save session
" " Buffers
set hidden

" " Ale
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_lint_delay = 1000


" " ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendors'


" " NERDTree
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1

" " Theme

colorscheme one
set background=dark
map <silent> <C-n> :NERDTreeToggle<CR>

" " Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'




" " Vim search
set incsearch
set hlsearch
hi Search guibg=#282828
hi Search guifg=#fbf1c7
nnoremap <esc> :noh<return><esc>
set mouse=a
