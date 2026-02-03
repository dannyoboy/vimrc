syntax enable

set number relativenumber
set autoindent
set ruler
set guifont=Consolas:h12
set scrolloff=0

"make tabs into spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

".ts indents are 2 spaces
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab

".tsx indents are 2 spaces
autocmd Filetype typescriptreact setlocal ts=2 sts=2 sw=2 expandtab

"leader mapping
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap ; :
inoremap jk <Esc>
inoremap kj <Esc>

"moving between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"  ----------------------------------------------------------------------
"  ctrlp Plugin
"  ----------------------------------------------------------------------
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>bb :CtrlPBuffer<CR>
nnoremap <Leader>bm :CtrlPMixed<CR>
nnoremap <Leader>bs :CtrlPMRU<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
