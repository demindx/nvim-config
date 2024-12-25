return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"blazkowolf/gruber-darker.nvim",
		config = function()
			vim.cmd([[colorscheme gruber-darker]])
		end,
	},
}
