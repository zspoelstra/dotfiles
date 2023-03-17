-- Lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy opts
local opts = {
  checker = { enabled = true },
  defaults = {
    lazy = true,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "netrwPlugin",
      },
    },
  },
  ui = {
    border = "rounded",
  },
}

-- Lazy setup
require("lazy").setup({
  { import = "plugins" },
  { import = "plugins.formatting.prettier" },
  { import = "plugins.language.lua" },
  { import = "plugins.language.markdown" },
  { import = "plugins.language.ruby" },
  { import = "plugins.language.typescript" },
}, opts)
