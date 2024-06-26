local M = {
  "catppuccin/nvim",
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd("colorscheme catppuccin")
  end,
  name = "catppuccin",
  opts = {
    flavour = "mocha",
    integrations = {
      noice = true,
      which_key = true,
    },
  },
  priority = 1000,
}

return { M }
