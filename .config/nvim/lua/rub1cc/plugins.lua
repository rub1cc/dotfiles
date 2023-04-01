local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'folke/tokyonight.nvim'
  -- statusline
  use 'nvim-lualine/lualine.nvim'
  -- LSP Support
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'onsails/lspkind-nvim'
  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use({
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('null-ls').setup()
    end,
    requires = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
  })
  -- LSP UIs
  use 'glepnir/lspsaga.nvim'
  -- Render indent blankline
  use "lukas-reineke/indent-blankline.nvim"
  -- syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- File icons
  use 'kyazdani42/nvim-web-devicons'
  -- fuzzy finding
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- auto pairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'norcalli/nvim-colorizer.lua'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'

  -- github copilot integration
  use 'github/copilot.vim'
  -- git common utilities
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  -- Comment plugin
  use 'numToStr/Comment.nvim'
  -- file explorer
  use 'nvim-tree/nvim-tree.lua'
  -- undo undo undo
  use 'mbbill/undotree'
  -- git 
  use 'tpope/vim-fugitive'
end)
