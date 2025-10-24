return {
  "chrisgrieser/nvim-origami",
  event = "VeryLazy",
  opts = {
    foldKeymaps = {
      hOnlyOpensOnFirstColumn = true,
    },
  },
  init = function()
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
  end,
}
