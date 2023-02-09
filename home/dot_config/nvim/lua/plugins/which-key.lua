return {
  "folke/which-key.nvim",
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register({
      ["<leader>f"] = { name = "+file/find" },
      ["<leader>s"] = { name = "+search" }
    })
  end,
}