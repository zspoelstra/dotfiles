-- Clear search highlight on ESC
vim.keymap.set("n", "<esc>", ":nohlsearch<cr>")

-- Quick writing and quitting
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- Center the screen when paging up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Buffer next/prev
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")
