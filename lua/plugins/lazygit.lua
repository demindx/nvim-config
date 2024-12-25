return {
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		keys = {
			{
				"<leader>gg",
				function()
					local lazygit = require("lazygit")
					lazygit.lazygit()
				end,
				desc = "lazygit integration",
				mode = "n",
			},
		},
	},
}
