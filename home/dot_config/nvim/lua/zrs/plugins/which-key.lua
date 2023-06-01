return {
  {
    "folke/which-key.nvim",
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register({
        mode = { "n", "v" },
        ["<leader>b"] = { name = "+buffer" },
        ["<leader>e"] = { name = "+explorer" },
        ["<leader>f"] = { name = "+find" },
        ["<leader>q"] = { name = "+quit/session" },
      })
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      plugins = { spelling = true },
    },
  },
}
