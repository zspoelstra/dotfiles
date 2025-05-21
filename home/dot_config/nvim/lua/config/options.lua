-- Setup `mapleader` and `maplocalleader`
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable filetype mappings
vim.g.no_plugin_maps = true

-- Options
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 2
vim.opt.shortmess:append("I")
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.softtabstop = 0
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.winborder = "single"
vim.opt.wrap = false

-- Prepend mise shims to PATH
-- vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
