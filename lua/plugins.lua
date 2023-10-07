require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'Th3Whit3Wolf/one-nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-tree').setup {}
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update { with_sync = true }
        end,
        config = function()
            require('plugin-conf.nvim-treesitter')
        end,
    }

    use {
        'williamboman/mason.nvim',
        config = require('mason').setup()
    }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason-lspconfig.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
end)
