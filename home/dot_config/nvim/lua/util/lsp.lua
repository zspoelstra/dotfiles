local M = {}

function M.format()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.lsp.buf.format({ bufnr = bufnr })
end

function M.on_attach(client, bufnr)
  vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
  vim.keymap.set("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp Info" })

  if client.server_capabilities["documentFormattingProvider"] then
    vim.keymap.set("n", "<leader>cf", M.format, { desc = "Format Document" })
  end

  if client.server_capabilities["documentRangeFormattingProvider"] then
    vim.keymap.set("v", "<leader>cf", M.format, { desc = "Format Range" })
  end

  if client.server_capabilities["definitionProvider"] then
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" })
  end

  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })

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
