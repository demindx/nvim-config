return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	opts = {
		-- Your options go here
		-- name = "venv",
		-- auto_refresh = false
	},
	lazy = false,
	branch = "regexp",
	keys = {
		-- Keymap to open VenvSelector to pick a venv.
		{ "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select the python venv" },
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		{ "<leader>sv", "<cmd>VenvSelectCached<cr>" },
	},
}
