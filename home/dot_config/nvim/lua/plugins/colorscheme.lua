return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    opts = {
      theme = "dark",
    },
    config = function(_, opts)
      require("onenord").setup(opts)
      vim.cmd("colorscheme onenord")
    end,
  },
}
