local opt = vim.opt

-- Basic settings
opt.cursorline = true
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.ruler = true
opt.shiftwidth = 2
opt.signcolumn = "number"
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.wrap = false

-- Folding
opt.fillchars = "fold: "
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.foldmethod = "expr"
opt.foldminlines = 1
opt.foldnestmax = 3
opt.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
