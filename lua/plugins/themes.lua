return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

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
			vim.cmd([[colorscheme moonfly]])
		end,
	},
}
