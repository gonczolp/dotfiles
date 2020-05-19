" initialize  plugin system
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox' " gruvbox colors

" statusline
" Plug 'itchyny/lightline.vim'
" set noshowmode

" tpope stuff
Plug 'tpope/vim-surround' " selectable surroundings
Plug 'tpope/vim-commentary' " batch comment
Plug 'tpope/vim-fugitive' " git integration
Plug 'tpope/vim-eunuch' " shell commands for vim
Plug 'tpope/vim-repeat' " repeat plugin map for e.g vim surround

" auto braces
Plug 'jiangmiao/auto-pairs'

" fuzzy finder
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" lang server
Plug 'w0rp/ale'

" js plugins
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" golang plugins
" Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" rust plugins
Plug 'rust-lang/rust.vim'

" end of plugins
call plug#end()

" colorscheme
colorscheme gruvbox
set background=dark
set termguicolors

" relative line numbers
set number relativenumber

" trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" split to side and below naturally
set splitbelow
set splitright

" set tab size to equal 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" higlight cursor line
set cursorline

" fzf as crtlp dropin replacement
nmap <C-P> :Files<CR>
let $FZF_DEFAULT_COMMAND='rg --hidden -g "!.git" -l ""'

" disable softwrap on most files
set nowrap
autocmd FileType *.md, *.tex set wrap

" remove temptation
map <Up>    <Nop>
map <Down>  <Nop>
map <Left>  <Nop>
map <Right> <Nop>
imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>

" consistent Y
nnoremap Y y$

" consistent exit from :term
" tnoremap <Esc> <C-\><C-N>
