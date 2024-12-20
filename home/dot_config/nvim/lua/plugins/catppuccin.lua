return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup()
      vim.cmd.colorscheme("catppuccin")
    end,
    opts = {
      integrations = {
        blink_cmp = true,
        mason = true,
        native_lsp = {
          enabled = true,
        },
        treesitter = true,
        telescope = {
          enabled = true,
        },
      },
    },
  },
}
