return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      local colors = require("onenord.colors").load()
      return {
        custom_highlights = {
          ["TelescopeSelection"] = { fg = colors.dark_blue, style = "bold" },
          ["TelescopeSelectionCaret"] = { fg = colors.dark_blue, style = "bold" },
        },
        theme = "dark",
      }
    end,
    config = function(_, opts)
      require("onenord").setup(opts)
      vim.cmd("colorscheme onenord")
    end,
  },
}
