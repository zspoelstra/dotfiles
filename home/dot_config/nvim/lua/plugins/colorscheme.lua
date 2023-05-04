return {
  {
    "rmehri01/onenord.nvim",
    opts = {
      theme = "dark",
    },
    config = function(_, opts)
      require("onenord").setup(opts)
      vim.cmd("colorscheme onenord")
    end,
  },
}
