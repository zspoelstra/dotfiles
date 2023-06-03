local M = {}

function M.format()
  local buffer = vim.api.nvim_get_current_buf()

  vim.lsp.buf.format({
    bufnr = buffer,
    filter = function(client)
      return client.supports_method("textDocument/formatting") and client.name == "null-ls"
    end,
  })
end

function M.setup()
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("zrs_format", {}),
    callback = function()
      M.format()
    end,
  })
end

return M
