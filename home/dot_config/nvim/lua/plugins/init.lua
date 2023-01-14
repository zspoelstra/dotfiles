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

-- Compile this file when we make changes
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PackerCompiler", {}),
  pattern = fn.expand("~") .. "/.config/nvim/lua/plugins/init.lua",
  command = "source <afile> | PackerCompile"
})

-- Install plugins
return require("packer").startup(function(use)
  -- Manage packer itself
  use "wbthomason/packer.nvim"

  -- Syntax
  use "slim-template/vim-slim"

  -- Themes
  use {
    "rose-pine/neovim",
    as = "rose-pine",
    tag = "v1.*",
  }

  -- File Explorer
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }

  -- UI
  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end
  }
  use "RRethy/nvim-treesitter-endwise"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "windwp/nvim-ts-autotag"

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    }
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
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- WhichKey
  use "folke/which-key.nvim"

  -- bufdelete
  use "famiu/bufdelete.nvim"

  -- Comment
  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }

  -- nvim-surround
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup({})
    end
  })

  -- Automatic setup
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
