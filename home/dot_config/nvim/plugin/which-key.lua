vim.pack.add({ { src = "https://github.com/folke/which-key.nvim" } })

require("which-key").setup({
  spec = {
    { "<leader>b", group = "Buffers" },
    { "<leader>f", group = "Find" },
    { "<leader>m", group = "Markview" },
  },
})

vim.keymap.set("n", "<leader>?", function()
  require("which-key").show({ global = false })
end, { desc = "Buffer local keymaps" })
