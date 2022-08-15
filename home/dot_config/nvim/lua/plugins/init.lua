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

-- Install plugins
return require("packer").startup(function(use)
  -- Manage packer itself
  use "wbthomason/packer.nvim"

  -- Dependencies
  use "kyazdani42/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }

  -- UI
  use "nvim-lualine/lualine.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }
  use "RRethy/nvim-treesitter-endwise"

  -- Telescope
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  }
  use {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x"
  }

  -- Language server
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Autocomplete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Automatic setup
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
