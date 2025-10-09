return {
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
	},
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		-- priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	require("onedark").setup({
		-- 		style = "darker",
		-- 	})
		-- 	-- Enable theme
		-- 	require("onedark").load()
		-- end,
	},

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

	{ "Mofiqul/vscode.nvim" },

	{
		"blazkowolf/gruber-darker.nvim",
		config = function()
			vim.cmd([[ colorscheme  gruvbox]])
		end,
	},
}
