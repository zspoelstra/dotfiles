vim.pack.add({ { src = "https://github.com/OXY2DEV/markview.nvim" } })

require("markview").setup({
  preview = {
    enable = false,
    icon_provider = "mini",
  },
})

vim.keymap.set("n", "<leader>ms", ":Markview splitToggle<CR>", { desc = "Toggle split preview", silent = true })
vim.keymap.set("n", "<leader>mt", ":Markview toggle<CR>", { desc = "Toggle preview", silent = true })
