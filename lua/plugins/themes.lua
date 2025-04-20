return {
	{ "joshdick/onedark.vim", name = "onedark", priority = 1000 },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	{
		"xiantang/darcula-dark.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
	},

	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

	{ "briones-gabriel/darcula-solid.nvim", dependencies = { "rktjmp/lush.nvim" } },

	{ "nyoom-engineering/oxocarbon.nvim" },

	{ "EdenEast/nightfox.nvim" },

	{
		"blazkowolf/gruber-darker.nvim",
		config = function()
			vim.cmd([[colorscheme catppuccin-latte]])
		end,
	},
}
