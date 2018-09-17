" True color
set termguicolors

set number
set encoding=utf-8

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-sleuth'
Plug 'morhetz/gruvbox'
Plug 'romainl/flattened'
Plug 'ryanoasis/vim-devicons'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'cseelus/vim-colors-lucid'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Badacadabra/vim-archery'
Plug 'whatyouhide/vim-gotham'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'gregsexton/MatchTag'
Plug 'alvan/vim-closetag'

call plug#end()

" deoplete 
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


set cursorline

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" " let g:ackprg = 'ag --nogroup --nocolor --column'

" Fancy stuff
"" Indentation
" set shiftwidth=4
" set tabstop=4


set cursorline
set colorcolumn=80
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
command! Bd :bp|:bd#


set list lcs=nbsp:␣,trail:·,tab:\┆\ 


" " Save session
" " Buffers
set hidden

" " Ale
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '%linter%: %s'
let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_delay = 1000


" " FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
nnoremap <C-p> :Files <CR>
let g:fzf_layout = { 'down': '~20%' }


" " NERDTree
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1

" " Theme

colorscheme flattened_dark
set background=dark
map <silent> <C-n> :NERDTreeToggle<CR>

" " Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'




" " Vim search
set incsearch
set hlsearch
nnoremap <c-c> :noh<return><esc>
set mouse=a
hi Comment cterm=italic
hi Comment gui=italic


