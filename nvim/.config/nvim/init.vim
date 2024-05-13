" True color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number relativenumber
set encoding=utf-8
" Trailing whitespaces
hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
let g:ale_set_balloons = 1

call plug#begin(stdpath('data') . '/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'drewtempelmeyer/palenight.vim'
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-repeat'
Plug 'mhinz/vim-startify'
Plug 'jacoborus/tender.vim'
Plug 'lervag/vimtex'
Plug 'posva/vim-vue'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'dhruvasagar/vim-table-mode'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'rbonvall/snipmate-snippets-bib'

call plug#end()

let g:go_fmt_command = "gofmt"
let g:go_fmt_fail_silently = 1
nnoremap <Space> <Nop>
let mapleader=" "

let g:vimtex_view_method='zathura'

set wildmode=longest,list,full
set wildmenu

let g:floaterm_position = 'right'
let g:floaterm_opener = 'edit'


packadd termdebug
let g:localvimrc_sandbox = 0
set maxmempattern=2000000

let &shell='/bin/zsh'

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


let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


" Netrw settings
let g:netrw_keepdir = 0
let g:netrw_banner = 1
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_winsize = 10
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'


" nnoremap <C-n> :Lexplore <CR>
nnoremap <C-n> :FloatermNew nnn <CR>

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets="<C-Space>"

let g:tex_flavor='latex'

set cursorline
set colorcolumn=80
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
command! Bd :bp|:bd#



set list lcs=nbsp:␣,trail:·,tab:\¦\ ,space:·


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
      \   'c': ['gcc', 'cppcheck', 'clangcheck', 'clangtidy'],
      \}
let g:ale_c_build_dir_names = ['build', 'bin', 'builddir']

" " FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
nnoremap <C-p> :Files <CR>
nnoremap <leader>p :Buffers <CR>
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }


" " Theme
autocmd ColorScheme * hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
" let g:palenight_terminal_italics=1


let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'CGBranch',
      \   'filetype': 'CFileType',
      \   'fileformat': 'CFileFormat'
      \ },
      \ }


function! CGBranch()
  let fugitivetext = FugitiveHead()
  return (strlen(fugitivetext) > 0) ? fugitivetext . ' ' : ''
endfunction

function! CFileType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! CFileFormat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

set laststatus=2

" hi SpecialKey guifg=#3E4452 guibg=NONE guisp=NONE

" " Vim search
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><ESC>
set mouse=a
hi Comment gui=italic
hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
match ExtraWhitespace /\s\+$/

" Indentation
set cindent
"set cinoptions=(0,u0,U0
filetype plugin indent on
set updatetime=300
set cmdheight=2

set pastetoggle=<F10>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
highlight Comment cterm=italic gui=italic


" LSP
set completeopt=menu,menuone,noselect
lua require('lsp')
lua require('treesitter')

nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>D, :lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>e :lua vim.diagnostic.open_float()<CR>
nnoremap [d :lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.diagnostic.goto_next()<CR>

command Yalo :0r ~/.config/nvim/yalo.txt

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
let g:python3_host_prog = '/Users/rocu/.pyenv/versions/3.10.1/bin/python'
