return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},

		opts = {
			-- filesystem = {
			-- 	filtered_items = {
			-- 		hide_dotfiles = false,
			-- 	},
			-- 	follow_current_file = true,
			-- 	group_empty_dirs = true,
			-- },
			-- renderers = {
			-- 	directory = {
			-- 		args = { "indent", "icon", "current_dir" },
			-- 		highlight = "NeoTreeDirectoryName",
			-- 	}
			-- },
		},

		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "File browser" },
		},
	},
}
