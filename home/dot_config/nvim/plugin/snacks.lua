vim.pack.add({ { src = "https://github.com/folke/snacks.nvim" } })

require("snacks").setup({
  bufdelete = { enabled = true },
  indent = { enabled = true },
  picker = { enabled = true },
  statuscolumn = { enabled = true },
})

vim.keymap.set("n", "<leader>fb", function()
  require("snacks.picker").buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fc", function()
  require("snacks.picker").files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Config Files" })

vim.keymap.set("n", "<leader>ff", function()
  require("snacks.picker").files()
end, { desc = "Files" })

vim.keymap.set("n", "<leader>fg", function()
  require("snacks.picker").grep()
end, { desc = "Grep" })

vim.keymap.set("n", "<leader>fr", function()
  require("snacks.picker").recent()
end, { desc = "Recent Files" })

vim.keymap.set("n", "<leader>fw", function()
  require("snacks.picker").grep_word()
end, { desc = "Word" })

vim.keymap.set("n", "<leader>fR", function()
  require("snacks.picker").resume()
end, { desc = "Resume" })
