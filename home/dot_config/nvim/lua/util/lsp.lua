local M = {}

function M.format()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.lsp.buf.format({ bufnr = bufnr })
end

function M.on_attach(client, bufnr)
  vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
  vim.keymap.set("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp Info" })
  vim.keymap.set("n", "<leader>cf", M.format, { desc = "Format Document" })
  vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormat." .. bufnr, {}),
      buffer = bufnr,
      callback = function()
        M.format()
      end,
    })
  end
end

return M
