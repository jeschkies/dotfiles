local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager

  -- Telescope
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Diagnostics Windows Trouble
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons"
  }

  -- Git Signs
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use 'williamboman/mason.nvim' -- Mason package manager
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'RRethy/vim-illuminate' -- highlight symbol under the cursor

  -- Code Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

    use {
        'L3MON4D3/LuaSnip',
        config = function() require "configs.luasnip" end,
    }
    use 'saadparwaiz1/cmp_luasnip'

  use 'onsails/lspkind-nvim'

  -- Color
  use 'NLKNguyen/papercolor-theme'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
      require("packer").sync()
  end
end)
