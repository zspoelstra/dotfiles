local M = {}

function M.setup(buffer)
  vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { buffer = buffer, desc = "Line Diagnostics" })
  vim.keymap.set("n", "<leader>cf", function()
    require("zrs.lsp.format").format()
  end, { buffer = buffer, desc = "Format Document" })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buffer })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = buffer })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buffer })
end

return M
