return {
	{
		"ahmedkhalf/project.nvim",

		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("project_nvim").setup({})
		end,
		-- opts = {
		-- 	detection_methods = { "lsp", "pattern" },
		-- 	show_hidden = true,
		--
		-- 	patterns = {
		-- 		".git",
		-- 		"_darcs",
		-- 		".hg",
		-- 		".bzr",
		-- 		".svn",
		-- 		"Makefile",
		-- 		"package.json",
		-- 		"Dockerfile",
		-- 		"docker_compose.yml",
		-- 		"venv",
		-- 		"*.tex",
		-- 		"go.mod",
		-- 	},
		-- },
	},
}
