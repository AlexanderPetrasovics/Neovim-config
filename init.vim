
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

"colorscheme codedark "<- vim-code-dark
colorscheme gruvbox
set background=dark

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

vnoremap K :m '>+1<CR>gv
vnoremap J :m '<-2<CR>gv


nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :GFiles<CR>
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>
nmap <F1> :noh<CR>

