-- Install packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath("data") .. "/site/pack/*/start/*," .. vim.o.runtimepath
end

-- Autoreload neovim whenenver this file changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Install plugins
return require("packer").startup(function(use)
  -- Manage packer itself
  use "wbthomason/packer.nvim"

  -- Themes
  use "sainnhe/everforest"
  use { "catppuccin/nvim", as = "catppuccin" }
  use "EdenEast/nightfox.nvim"

  -- UI
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }
  use { "RRethy/nvim-treesitter-endwise" }

  -- Telescope
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- Language server
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use {
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("null-ls").setup() end,
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- Autocomplete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Automatic setup
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)