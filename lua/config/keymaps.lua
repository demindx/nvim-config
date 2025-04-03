-- buffer keymaps
vim.keymap.set("n", "<leader>bc", ":bdelete<cr>", { desc = "[B]uffer [C]lose" })
vim.keymap.set("n", "<leader>bn", ":bnext<cr>", { desc = "[B]uffer [N]next" })
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>", { desc = "[B]uffer [P]prev" })
vim.keymap.set("n", "<leader>bo", ":%bdelete|edit#|bdelete#<cr>", { desc = "[B]uffer [C]lose" })

-- terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- global
vim.keymap.set("n", "<ESC><ESC>", ":nohlsearch<cr>", { desc = "off search highlight" })

vim.keymap.set("n", "<leader>ft", ":TodoTelescope<cr>", { desc = "[F]ind [T]odo" })
