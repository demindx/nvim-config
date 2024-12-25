return {
	"akinsho/toggleterm.nvim",
	keys = {
		{
			"<A-h>",
			function()
				local term = require("toggleterm")
				local utils = require("toggleterm.utils")
				term.toggle(1, 20, utils.git_dir(), "horizontal", "term")
			end,
			desc = "Toggle terminal",
			mode = "n",
		},
	},
}
