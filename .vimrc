" True color
set termguicolors

set number
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-sleuth'
" Plug 'ryanoasis/vim-devicons'
Plug 'ajh17/VimCompletesMe'
Plug '/usr/bin/fzf'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'Yggdroot/indentLine'
" Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'cseelus/vim-colors-lucid'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Badacadabra/vim-archery'
Plug 'whatyouhide/vim-gotham'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'

call plug#end()

set cursorline

set guifont=DankMono\ Nerd\ Font\ 10
set guioptions -=m
set guioptions -=T
nnoremap <Leader>a :Rg<Space>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" " let g:ackprg = 'ag --nogroup --nocolor --column'

" Fancy stuff
"" Indentation
" set shiftwidth=4
" set tabstop=4

" IndentLine {{
" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" }}

set cursorline
set colorcolumn=80
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
command! Bd :bp|:bd#


set list lcs=nbsp:␣,trail:·,tab:\\ 


" " Save session
" " Buffers
set hidden

" " Ale
let g:ale_sign_warning = ''
let g:ale_sign_error = ''
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '%linter%: %s'
" let g:ale_lint_delay = 1000
let g:ale_linters = {
\   'c': ['gcc', 'cppcheck'],
\}


" " FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
nnoremap <C-p> :Files <CR>
let g:fzf_layout = { 'down': '~20%' }


" " NERDTree
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible=""
" " Theme

set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1

map <silent> <C-n> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

set laststatus=2




" " Vim search
set incsearch
set hlsearch
nnoremap <c-c> :noh<return><esc>
set mouse=a
hi Comment gui=italic
