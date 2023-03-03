return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "folke/neodev.nvim", config = true },
			{ "j-hui/fidget.nvim", config = true },
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		opts = {
			servers = {
				lua_ls = {
					Lua = {
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			},
		},
		config = function(_, opts)
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

			local function setup(server)
				require("lspconfig")[server].setup({
					capabilities = capabilities,
					on_attach = function(client, bufnr)
						if client.supports_method("textDocument/formatting") then
							vim.api.nvim_create_autocmd("BufWritePre", {
								group = vim.api.nvim_create_augroup("LspFormat." .. bufnr, {}),
								buffer = bufnr,
								callback = function()
									vim.lsp.buf.format({ bufnr = bufnr })
								end,
							})
						end
					end,
					settings = opts.servers[server],
				})
			end

			require("mason-lspconfig").setup({ ensure_installed = vim.tbl_keys(opts.servers) })
			require("mason-lspconfig").setup_handlers({ setup })
		end,
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = function()
			local nls = require("null-ls")
			return {
				sources = {
					nls.builtins.formatting.stylua,
				},
			}
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
			},
		},
		config = function(_, opts)
			require("mason").setup(opts)
			local registry = require("mason-registry")
			for _, tool in ipairs(opts.ensure_installed) do
				local package = registry.get_package(tool)
				if not package:is_installed() then
					package:install()
				end
			end
		end,
	},
}
