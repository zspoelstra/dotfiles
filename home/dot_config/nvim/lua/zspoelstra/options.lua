local opt = vim.opt

-- Basic settings
opt.expandtab = true
opt.number = true
opt.ruler = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.wrap = false

-- Set the color scheme
vim.cmd 'colorscheme everforest'

-- Strip trailing whitesapce
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  command = [[%s/\s\+$//e]],
})
