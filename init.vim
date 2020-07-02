set backspace=indent,eol,start
set relativenumber
set colorcolumn=100
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

call plug#begin('~/.config/nvim/plugged') 

Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

"colorscheme codedark
colorscheme gruvbox
set background=dark

"KEYBOARD MAPPINGS
nnoremap <SPACE> <Nop>
let mapleader = " "

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-f> :Files<CR>
nnoremap <C-p> "GFiles<CR>
inoremap <CR> <Esc>
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>
nmap <F1> :noh<CR>

