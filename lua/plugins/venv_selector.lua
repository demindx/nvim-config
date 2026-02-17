return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	ft = { "python" },
	opts = {},
	lazy = false,
	keys = {
		{ "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select the python venv" },
	},
}
