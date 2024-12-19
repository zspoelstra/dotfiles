return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
			require("lspconfig").lua_ls.setup({})

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then
						return
					end

					-- if client.supports_method("textDocument/formatting") then
					--   vim.api.nvim_create_autocmd("BufWritePre", {
					--     buffer = args.buf,
					--     callback = function()
					--       vim.lsp.buf.format({ buf = args.buf, id = client.id })
					--     end
					--   })
					-- end
				end,
			})
		end,
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
	},
}
