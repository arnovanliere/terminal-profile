" PLUGIN MANAGER: vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'            " File explorer
Plug 'vim-airline/vim-airline'       " Fancy status line
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Intellisense
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy find
Plug 'tpope/vim-commentary'          " Easy commenting
Plug 'sheerun/vim-polyglot'          " Syntax highlighting for many languages

call plug#end()

" BASIC SETTINGS
set nocompatible
set number
set relativenumber
set ruler
set showcmd
set showmode
set cursorline
set background=dark
syntax on
set wildmenu
set showmatch

" INDENTATION
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

" SEARCH
set ignorecase
set smartcase
set incsearch
set hlsearch

" FILE HANDLING
set hidden
set backup
set undofile
set swapfile

" STATUS LINE
set laststatus=2
set statusline=%f\ %h%m%r\ %=Line:%l/%L\ Col:%c

" SPLITS
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" KEYBINDINGS
nnoremap <Space> :noh<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i
nnoremap <C-q> :q<CR>

" NERDTREE
nnoremap <C-n> :NERDTreeToggle<CR>

" FZF (fuzzy find)
nnoremap <C-p> :Files<CR>

" COC CONFIG (autocomplete)
" Use <Tab> and <S-Tab> for navigating suggestions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
