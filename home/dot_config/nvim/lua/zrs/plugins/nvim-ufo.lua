return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      { "kevinhwang91/promise-async" },
    },
    event = "BufReadPost",
    init = function()
      vim.opt.foldcolumn = "1"
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
      vim.opt.foldenable = true

      vim.keymap.set("n", "zR", function()
        require("ufo").openAllFolds()
      end)

      vim.keymap.set("n", "zM", function()
        require("ufo").closeAllFolds()
      end)
    end,
    opts = {},
  },
}
