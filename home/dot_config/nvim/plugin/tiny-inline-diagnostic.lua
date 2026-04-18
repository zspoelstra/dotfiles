vim.pack.add({ { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" } })

require("tiny-inline-diagnostic").setup({
  options = {
    show_source = {
      enabled = true,
    },
  },
})

-- Disable Neovim's default virtual text diagnostics
vim.diagnostic.config({ virtual_text = false })
