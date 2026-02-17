return {
	{ "morhetz/gruvbox", },

	{ "catppuccin/nvim",    name = "catppuccin" },

	{ "Mofiqul/vscode.nvim" },

	{
		"masisz/wisteria.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme vscode]])
		end,
	}
}
