return {
	{
		"echasnovski/mini.comment",
		version = "*",
		config = function(_, opts)
			require("mini.comment").setup(opts)
		end,
	},
}
