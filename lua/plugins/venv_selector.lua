return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	opts = {},
	lazy = false,
	keys = {
		{ "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select the python venv" },
	},
}
