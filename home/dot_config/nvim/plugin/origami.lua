vim.pack.add({ { src = "https://github.com/chrisgrieser/nvim-origami" } })

vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

require("origami").setup({
  foldKeymaps = {
    hOnlyOpensOnFirstColumn = true,
  },
})
