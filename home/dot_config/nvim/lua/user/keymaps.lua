-- Setup our leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- Clear search highlight with <esc>
keymap.set("n", "<Esc>", ":nohl<CR>", { silent = true })

-- Disable the arrow keys in normal mode
keymap.set("n", "<Left>", "")
keymap.set("n", "<Right>", "")
keymap.set("n", "<Up>", "")
keymap.set("n", "<Down>", "")

-- Telescope mappings
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
