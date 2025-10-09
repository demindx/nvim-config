return {
	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			vim.g.vimtex_view_method = "zathura"
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"RaafatTurki/hex.nvim",
		config = function()
			require("hex").setup()
		end,
	},
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
	{ "mattn/emmet-vim", lazy = false, filetype = "tmpl" },

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

	{ "andweeb/presence.nvim", lazy = false },
}
