vim.opt.guicursor = "n-v-c:block,i:block-blinkwait700-blinkon400-blinkoff250"
vim.opt.swapfile = false
vim.g.scrolloff = 15
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")

if vim.g.neovide then
	-- vim.o.guifont = "Hurmit Nerd Font:h14" -- text below applies for VimScript
	-- vim.o.guifont = "BigBlueTermPlus Nerd Font:h14"
	-- vim.o.guifont = "FiraCode Nerd Font:h15"
	vim.g.neovide_transparency = 1
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animation_length = 0.0
	vim.g.neovide_cursor_trail_size = 0.0
end
