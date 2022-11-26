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

    use {'tjdevries/colorbuddy.vim'}

    use {'dracula/vim', as = 'dracula'}
    use 'nvim-lualine/lualine.nvim'

    use { "tpope/vim-fugitive",
    opt = false,
    cmd = {
        "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gedit", "Gsplit",
        "Gread", "Gwrite", "Ggrep", "Glgrep", "Gmove",
        "Gdelete", "Gremove", "Gbrowse",
    },
}

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'mfussenegger/nvim-jdtls'
    use {'nvim-telescope/telescope-ui-select.nvim' }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ':TSUpdate',
        config = function() require('nvim-treesitter.configs').setup({
            ensure_installed = { 
                "lua",
                "rust",
                "markdown",
                "css",
                "cpp",
                "c_sharp",
                "dockerfile",
                "glsl",
                "haskell",
                "hlsl",
                "html",
                "java",
                "php",
                "phpdoc",
                "python",
                "regex",
                "scss",
                "toml",
                "typescript",
                "yaml",
                "json",

            },
            sync_install = true,
            auto_install = true,

            highlight = {
                enable = true,
            }
        }) end,
    }


end)


