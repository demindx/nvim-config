return {
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"SerMeliodas/ecsstractor.nvim",
		filetype = "html",
		keys = {
			{ "<leader>tt", ":lua require('ecsstractor').ecsstractor()<cr>", desc = "[E]ecsstractor", mode = "v" },
		},
	},

	"tpope/vim-sleuth",
	"mattn/emmet-vim",

	{ "stevearc/dressing.nvim", opts = {} },

	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
}
