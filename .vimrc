"  ----------------------------------------------------------------------
"  Plugins
"  ----------------------------------------------------------------------
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let NERDTreeIgnore = ['\c^ntuser\..*']
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'

"  ----------------------------------------------------------------------
"  General Settings
"  ----------------------------------------------------------------------
set number relativenumber
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent
set ruler
set cursorline
syntax on
syntax enable
set t_Co=256
set background=dark
colorscheme solarized
set guifont=Consolas:h12
set backspace=2
set guioptions -=T

"  ----------------------------------------------------------------------
"  Autocommands
"  ----------------------------------------------------------------------
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * silent NERDTree
autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | endif
au GUIEnter * simalt ~x

"  ----------------------------------------------------------------------
"  Mappings
"  ----------------------------------------------------------------------
nnoremap ; :
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab> :bnext<CR>
inoremap {<cr> {<cr>}<Esc>O

"  ----------------------------------------------------------------------
"  Leader Mappings
"  ----------------------------------------------------------------------
let mapleader=" "
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
