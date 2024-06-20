local M = {
  "nvim-lualine/lualine.nvim",
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" }
  }
}

return { M }
