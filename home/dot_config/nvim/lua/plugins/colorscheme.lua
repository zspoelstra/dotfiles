local M = {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  opts = {
    dark_variant = "moon"
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    vim.cmd("colorscheme rose-pine")
  end
}

return { M }
