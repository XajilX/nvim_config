require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = require('nvim-tree').setup {}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = require('nvim-treesitter.install').update { with_sync = true },
        config = require('plugin-conf.nvim-treesitter')
    }

    use {
        'williamboman/mason.nvim',
        config = require'mason'.setup()
    }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'hrsh7th/nvim-cmp',
        config = require'plugin-conf.cmp'
    }
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'rafamadriz/friendly-snippets'
    use 'simrat39/rust-tools.nvim'
end)
