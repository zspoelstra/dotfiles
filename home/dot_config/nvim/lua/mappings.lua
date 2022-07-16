local keymap = vim.api.nvim_set_keymap
local noremap = { noremap = true }

-- Disable the arrow keys in normal mode
keymap('n', '<Left>', '', noremap)
keymap('n', '<Right>', '', noremap)
keymap('n', '<Up>', '', noremap)
keymap('n', '<Down>', '', noremap)
