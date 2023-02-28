vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.grepprg = "rg --vimgrep"
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftwidth = 2
opt.sidescrolloff = 8
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.undofile = true
opt.undolevels = 10000
opt.wrap = false

-- Probably want these, but should know what they do first ;)
-- opt.autowrite = true
-- opt.cmdheight = 0
-- opt.confirm = true
-- opt.cursorline = true
-- opt.formatoptions = "jcroqlnt"
-- opt.ignorecase = true
-- opt.inccommand = "nosplit"
-- opt.laststatus = 3
-- opt.list = true
-- opt.pumblend = 10
-- opt.pumheight = 10
-- opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
-- opt.shiftround = true
-- opt.shortmess:append { W = true, I = true, c = true }
-- opt.signcolumn = "yes"
-- opt.smartcase = true
-- opt.smartindent = true
-- opt.spelllang = { "en" }
-- opt.timeoutlen = 300
-- opt.updatetime = 200
-- opt.wildmode = "longest:full,full"
-- opt.winminwidth = 5
