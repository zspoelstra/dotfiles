-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy opts
local opts = {
  checker = { enabled = false },
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

-- load options
require("zrs.config.options")

-- load auto commands and keymaps
require("zrs.config.autocmds")
require("zrs.config.keymaps")

-- lazy setup
require("lazy").setup("zrs.plugins", opts)
