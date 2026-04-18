vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })

require("catppuccin").setup({
  integrations = {
    treesitter = true,
  },
})

vim.cmd.colorscheme("catppuccin-macchiato")
