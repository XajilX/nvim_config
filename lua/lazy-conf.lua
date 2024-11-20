-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
      'folke/tokyonight.nvim',
      {
          'nvim-tree/nvim-tree.lua',
	  lazy = false,
          dependencies = { 'nvim-tree/nvim-web-devicons' },
	  config = function()
	    require'nvim-tree'.setup {}
	  end
      },
      {
          'nvim-treesitter/nvim-treesitter',
          build = function()
	    require'nvim-treesitter.install'.update { with_sync = true }
	  end,
          config = function()
	    require'plugin-conf.nvim-treesitter'
	  end
      },
      {
          'williamboman/mason.nvim',
          config = function()
	    require'mason'.setup()
	  end
      },
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim',
      {
          'hrsh7th/nvim-cmp',
          config = function()
	    require'plugin-conf.cmp'
	  end
      },
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'rafamadriz/friendly-snippets',
      'simrat39/rust-tools.nvim'
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
