-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
--
-- Regenerate compiled loader file
--:PackerCompile

-- Remove any disabled or unused plugins
--:PackerClean

-- Clean, then install missing plugins
--:PackerInstall

-- Clean, then update and install plugins
--:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
----:PackerSync

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    --    use {
    --        'w0rp/ale',
    --        ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    --        cmd = 'ALEEnable',
    --        config = 'vim.cmd[[ALEEnable]]'
    --    }

    use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

    use {'dracula/vim', as = 'dracula'}
    use 'nvim-lualine/lualine.nvim'

    use {
    "tpope/vim-fugitive",
    opt = false,
    cmd = {
      "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gedit", "Gsplit",
      "Gread", "Gwrite", "Ggrep", "Glgrep", "Gmove",
      "Gdelete", "Gremove", "Gbrowse",
    },
  }

end)


