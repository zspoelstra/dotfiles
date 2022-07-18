-- Install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autoreload neovim whenenver this file changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])

-- Install plugins
return require('packer').startup(function(use)
  -- Manage packer itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'sainnhe/everforest'
  use 'arcticicestudio/nord-vim'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Language server
  use 'neovim/nvim-lspconfig'

  -- Ruby/Rails
  use 'tpope/vim-endwise'

  -- Automatic setup
  if packer_bootstrap then
    require('packer').sync()
  end
end)
