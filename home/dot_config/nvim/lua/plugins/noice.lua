local M = {
  "folke/noice.nvim",
  config = function(_, opts)
    require("noice").setup(opts)
  end,
  dependencies = {
    { "MunifTanjim/nui.nvim" }
  }
}

return { M }
