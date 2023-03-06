return {
  {
    "folke/which-key.nvim",
    opts = {
      plugins = { spelling = true },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      local keymaps = {
        mode = { "n", "v" },
        ["<leader>b"] = { name = "+buffer" },
        -- ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>q"] = { name = "+quit/session" },
      }
      wk.register(keymaps)
    end,
  },
}
