-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- options
vim.opt.clipboard = "unnamedplus" -- sync the clipboard between neovim and the OS
vim.opt.cursorline = true -- highlight the line with the cursor
vim.opt.expandtab = true -- indenting with <Tab> uses spaces
vim.opt.ignorecase = true -- case-insensitive search
vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- line numbers are relative to the current line
vim.opt.scrolloff = 4 -- number of lines to keep visible around the cursor
vim.opt.shiftwidth = 2 -- indent using 2 spaces
vim.opt.sidescrolloff = 8 -- number of columns to keep visible around the cursor
vim.opt.signcolumn = "yes" -- alwoys show the sign column
vim.opt.smartcase = true -- case-sensitive search if the search term contains capital letters
vim.opt.splitbelow = true -- vertical splits go below by default
vim.opt.splitright = true -- horizontal splits go to the right by default
vim.opt.tabstop = 2 -- number of spaces for a <Tab>
vim.opt.undofile = true -- store undo history in a file
vim.opt.updatetime = 250 -- number of milliseconds of no typing before writing to swap
vim.opt.wrap = false -- do not wrap lines

-- quit using qq
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "quit all" })

-- write
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write file" })

-- clear search highlight on esc
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "escape and clear hlsearch" })

-- recenter on page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page up" })

-- recenter the screen when jumping to next occurrence
vim.keymap.set("n", "n", "nzz", { remap = true })
vim.keymap.set("n", "N", "Nzz", { remap = true })

-- better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "go to right window" })

-- disable the arrow keys in normal mode
vim.keymap.set("n", "<Left>", "")
vim.keymap.set("n", "<Right>", "")
vim.keymap.set("n", "<Up>", "")
vim.keymap.set("n", "<Down>", "")

-- update kitty padding dynamically
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Remove Kitty padding when entering",
  group = vim.api.nvim_create_augroup("zrs_remove_kitty_padding", { clear = true }),
  callback = function()
    os.execute("kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0")
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  desc = "Restore Kitty padding when leaving",
  group = vim.api.nvim_create_augroup("zrs_restore_kitty_padding", { clear = true }),
  callback = function()
    os.execute("kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=default")
  end,
})

-- highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("zrs_highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- strip trailing whitesapce on write
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("zrs_strip_whitespace", { clear = true }),
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- lazy init
require("lazy").setup("plugins")

-- vim: ts=2 sts=2 sw=2 et
