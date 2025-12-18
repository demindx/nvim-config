return {
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup({})
		require("mini.pairs").setup({})

		require("mini.notify").setup({})

		require("mini.starter").setup({})
		require("mini.icons").setup({})

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = true })
	end,
}
