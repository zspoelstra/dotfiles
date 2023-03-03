return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		keys = {
			{ "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Find in Files" },
			{ "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		},
		opts = {
			defaults = {
				prompt_prefix = " ",
				selection_caret = " ",
			},
		},
	},
}
