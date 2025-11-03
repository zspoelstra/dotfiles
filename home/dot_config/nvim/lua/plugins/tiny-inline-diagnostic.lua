return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function(_, opts)
    require("tiny-inline-diagnostic").setup(opts)

    -- Disable Neovim's default virtual text diagnostics
    vim.diagnostic.config({ virtual_text = false })
  end,
  opts = {
    options = {
      show_source = {
        enabled = true,
      },
    },
  },
}
