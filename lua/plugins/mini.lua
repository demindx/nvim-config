return {
	"echasnovski/mini.nvim",
	config = function()
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup({})

		local git = require("mini.git")
		git.setup()

		-- vim.keymap.set("n", "<leader>gh", git.show_range_history(), { desc = "[G]it [H]istory" })
		-- vim.keymap.set("n", "<leader>gd", git.show_diff_source(), { desc = "[G]it show [D]iff" })

		require("mini.notify").setup({})
		require("mini.sessions").setup({})
		require("mini.starter").setup({})
		require("mini.icons").setup({})

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = true })

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
