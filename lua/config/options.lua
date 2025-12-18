vim.g.mapleader = " "

vim.opt.guicursor = "n-v-c:block,i:block-blinkwait700-blinkon400-blinkoff400"

vim.opt.swapfile = false
vim.g.scrolloff = 15

vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.o.conceallevel = 2

vim.diagnostic.config({
	-- virtual_lines = true,
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
		header = "",
		prefix = "",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

if vim.g.neovide then
	-- vim.o.guifont = "Hurmit Nerd Font:h18" -- text below applies for VimScript
	-- vim.o.guifont = "BigBlueTermPlus Nerd Font:h14"
	-- vim.o.guifont = "FiraCode Nerd Font:h20"
	vim.g.neovide_opacity = 0.9
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animation_length = 0.0
	vim.g.neovide_cursor_trail_size = 0.0
end
