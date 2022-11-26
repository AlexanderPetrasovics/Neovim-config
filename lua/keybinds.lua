
vim.g.mapleader = ' '

-- escapes

vim.keymap.set( 'i', 'jj', '<Esc>' )
vim.keymap.set( 'i', 'kk', '<Esc>' )
vim.keymap.set( 'i', 'hh', '<Esc>' )
vim.keymap.set( 'i', 'jk', '<Esc>' )


-- copy & paste from Clipboard

vim.keymap.set( { 'n', 'x' }, 'cp', '"+y' )
vim.keymap.set( { 'n', 'x' }, 'cv', '"+p' )

-- Buffer movement

vim.keymap.set( 'n', '<leader>wv', '<c-w>v' )
vim.keymap.set( 'n', '<leader>ws', '<c-w>s' )

vim.keymap.set( 'n', '<leader>w=', '<c-w>=' )
vim.keymap.set( 'n', '<leader>wH', '<c-w>L<CR>' )
vim.keymap.set( 'n', '<leader>wV', '<c-w>K<CR>' )

vim.keymap.set( 'n', '<leader>wh', ':vertical res -10<CR>' )
vim.keymap.set( 'n', '<leader>wl', ':vertical res +10<CR>' )
vim.keymap.set( 'n', '<leader>wk', ':res -10<CR>' )
vim.keymap.set( 'n', '<leader>wj', ':res +10<CR>' )

vim.keymap.set( 'n', '<leader>h', ':wincmd h<CR>' )
vim.keymap.set( 'n', '<leader>j', ':wincmd j<CR>' )
vim.keymap.set( 'n', '<leader>k', ':wincmd k<CR>' )
vim.keymap.set( 'n', '<leader>l', ':wincmd l<CR>' )

vim.keymap.set( 'n', '<leader>wd', '<c-w>c' )

-- Buffer handling

vim.keymap.set( 'n', '<leader>bb', ':ls<CR>:buffer<Space>' ) -- enter number at popup
vim.keymap.set( 'n', '<leader>bd', ':bd<CR>' )
vim.keymap.set( 'n', '<leader>bn', ':bn<CR>' )
vim.keymap.set( 'n', '<leader>bp', ':bp<CR>' )

vim.keymap.set( 'n', '<leader>wc', ':enew<CR>' )
vim.keymap.set( 'n', '<leader>ws', '<c-w>s' )


-- Misc
vim.keymap.set( 'n', '<f1>', ':noh<CR>' )

-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- nnoremap cev <Cmd>lua require('jdtls').extract_variable()<CR>
-- vnoremap cev <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
-- nnoremap cec <Cmd>lua require('jdtls').extract_constant()<CR>
-- vnoremap cec <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
-- vnoremap cem <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>
