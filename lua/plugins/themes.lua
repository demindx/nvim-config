return {
	{ "morhetz/gruvbox", },

	{ "NLKNguyen/papercolor-theme" },

	{ "Koalhack/darcubox-nvim" },

	{ "catppuccin/nvim",           name = "catppuccin" },

	{ "Mofiqul/vscode.nvim" },

	{
		"masisz/wisteria.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme darcubox]])
		end,
	}
}
