local M = {}

function M.on_attach()
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local buffer = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)

      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("LspFormat." .. buffer, {}),
          buffer = buffer,
          callback = function()
            vim.lsp.buf.format({
              bufnr = buffer,
              filter = function(cl)
                return cl.name == "null-ls"
              end,
            })
          end,
        })
      end
    end,
  })
end

function M.setup(opts)
  return function(server_name)
    local capabilities = vim.tbl_deep_extend(
      "force",
      vim.lsp.protocol.make_client_capabilities(),
      require("cmp_nvim_lsp").default_capabilities(),
      opts.capabilities or {}
    )

    local server_opts = vim.tbl_deep_extend("force", {
      capabilities = vim.deepcopy(capabilities),
    }, opts.servers[server_name] or {})

    if opts.setup[server_name] then
      if opts.setup[server_name](server_name, server_opts) then
        return
      end
    end

    require("lspconfig")[server_name].setup(server_opts)
  end
end

return M
