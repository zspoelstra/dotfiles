local M = {}

function M.on_attach()
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      require("zrs.lsp.keymaps").setup(args.buf)
    end,
  })
end

function M.setup_handlers(opts)
  return function(server_name)
    -- Merge client capabilities, cmp_nvim_lsp default capabilities,
    -- and any capabilities defined in opts
    local capabilities = vim.tbl_deep_extend(
      "force",
      vim.lsp.protocol.make_client_capabilities(),
      require("cmp_nvim_lsp").default_capabilities(),
      opts.capabilities or {}
    )

    -- Create the options table we will sent do the lsp server.
    -- This combines the above capabilities with any defined in the
    -- plugin opts table
    local server_opts = vim.tbl_deep_extend("force", {
      capabilities = vim.deepcopy(capabilities),
    }, opts.servers[server_name] or {})

    -- If any custom setup functions were defined, run them. Setup
    -- functions should take care of setting up the lsp server and
    -- return true.
    if opts.setup[server_name] then
      if opts.setup[server_name](server_name, server_opts) then
        return
      end
    end

    -- Finally, setup the server
    require("lspconfig")[server_name].setup(server_opts)
  end
end

return M
