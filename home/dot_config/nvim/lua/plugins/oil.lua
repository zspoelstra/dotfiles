return {
  "stevearc/oil.nvim",
  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
  },
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
    },
  },
  lazy = false,
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    keymaps = {
      ["q"] = "actions.close",
    },
  },
}
