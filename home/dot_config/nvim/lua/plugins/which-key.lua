return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer local keymaps (which-key)",
    },
  },
  opts = {
    spec = {
      { "<leader>b", group = "Buffers" },
      { "<leader>f", group = "Find" },
    },
  },
}
