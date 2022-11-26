
-- General Purpose

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = '120'
vim.opt.textwidth = 120
vim.opt.hidden = true
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
-- vim.opt.path +=**

-- Global Keybindings

require( "keybinds" )

-- Package Manager

require( "plugins" )

require( 'lualine' ).setup({
    options = {
        icons_enabled = false,
        section_separators = '',
        component_separators = ''
    }
})


require('telescope').setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- OPTs
      }
    }
  }
}

require('telescope').load_extension("ui-select")


-- vim.cmd( 'colorscheme dracula' )

