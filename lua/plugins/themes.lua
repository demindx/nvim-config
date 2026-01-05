return {
	{
		"morhetz/gruvbox",
	},
	{
		"masisz/wisteria.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme wisteria]])
		end,
	}
}
