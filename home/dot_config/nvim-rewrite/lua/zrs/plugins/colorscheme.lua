return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dark",
    },
    config = function(_, opts)
      require("onenord").setup(opts)
      vim.cmd("colorscheme onenord")
    end,
  },
}
