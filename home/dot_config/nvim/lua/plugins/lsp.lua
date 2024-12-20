return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      require("lspconfig").lua_ls.setup({ capabilities = capabilities })

      -- vim.api.nvim_create_autocmd("LspAttach", {
      -- 	callback = function(args)
      -- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
      -- 		if not client then
      -- 			return
      -- 		end
      -- 	end,
      -- })
    end,
    dependencies = {
      { "saghen/blink.cmp" },
    },
  },
}
