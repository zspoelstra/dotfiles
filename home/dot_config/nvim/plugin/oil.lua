vim.pack.add({ { src = "https://github.com/stevearc/oil.nvim" } })

require("oil").setup({
  default_file_explorer = true,
  delete_to_trash = true,
  keymaps = {
    ["q"] = "actions.close",
  },
})

vim.keymap.set("n", "-", ":Oil --float<CR>", { silent = true })
