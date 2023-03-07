local M = {}

function M.on_attach(_, _)
  local format = require('plugins.lsp.format').format

  vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
  vim.keymap.set("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp Info" })
  vim.keymap.set("n", "<leader>cf", format, { desc = "Format Document" })
  vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })
end

return M
