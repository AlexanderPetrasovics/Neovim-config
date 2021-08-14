set nocompatible
set backspace=indent,eol,start
set relativenumber
set nu
set colorcolumn=100
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set path+=**
set nowrap
set hidden
set noerrorbells
set termguicolors
set noswapfile
set incsearch
set scrolloff=8



call plug#begin('~/.config/nvim/plugged') 

Plug 'gruvbox-community/gruvbox'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'jonsmithers/experimental-lit-html-vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'takac/vim-hardtime'
Plug 'tfnico/vim-gradle'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'vimwiki/vimwiki'
Plug 'aklt/plantuml-syntax'
"Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'


colorscheme gruvbox
set background=dark

" fix issue with spurious q's appearing
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=

"   -- KEYBOARD MAPPINGS --
nnoremap <SPACE> <Nop>
let mapleader = " "

map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>h :wincmd h<CR>

map <leader>w= <C-w>=
map <leader>wh :vertical res -10<CR>
map <leader>wl :vertical res +10<CR>
map <leader>wk :res +10<CR>
map <leader>wj :res -10<CR>
map <leader>wH <c-w>L<CR>
map <leader>wV <C-w>K<CR>

"visual block up one line 
vnoremap K :m '>+1<CR>gv
"visual block down one line 
vnoremap J :m '<-2<CR>gv

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-l> :Files<CR>

nmap <F1> :noh<CR>
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>
nmap <F3>:so %<CR>

inoremap hh <Esc>
inoremap jj <Esc>
inoremap kk <Esc>

nnoremap <F4> :!plantuml main.puml <Cr>

let g:htl_all_templates = 1  "javascript string literals with html
let g:hardtime_showmsg = 0  
let g:hardtime_default_on = 0 "use for all buffers


