local M = {
  "folke/which-key.nvim",
  config = function(_, opts)
    require("which-key").setup(opts)
    require("which-key").register({
      ["<leader>f"] = { name = "[F]ind" },
      ["<leader>q"] = { name = "[Q]uit" },
    })
  end,
  event = "VimEnter",
  init = function()
    vim.opt.timeout = true
    vim.opt.timeoutlen = 300
  end,
}

return { M }
