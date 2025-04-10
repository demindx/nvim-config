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

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<Up>", ":echoe 'Get off my lawn!'<CR>")
vim.keymap.set("n", "<Down>", ":echoe 'Get off my lawn!'<CR>")
vim.keymap.set("n", "<Left>", ":echoe 'Get off my lawn!'<CR>")
vim.keymap.set("n", "<Right>", ":echoe 'Get off my lawn!'<CR>")
vim.keymap.set("i", "<Up>", "<C-o>:echoe 'Get off my lawn!'<CR>")
vim.keymap.set("i", "<Down>", "<C-o>:echoe 'Get off my lawn!'<CR>")
vim.keymap.set("i", "<Left>", "<C-o>:echoe 'Get off my lawn!'<CR>")
vim.keymap.set("i", "<Right>", "<C-o>:echoe 'Get off my lawn!'<CR>")
vim.keymap.set("v", "<Up>", ":<C-u>echoe 'Get off my lawn!'<CR>")
vim.keymap.set("v", "<Down>", ":<C-u>echoe 'Get off my lawn!'<CR>")
vim.keymap.set("v", "<Left>", ":<C-u>echoe 'Get off my lawn!'<CR>")
vim.keymap.set("v", "<Right>", ":<C-u>echoe 'Get off my lawn!'<CR>")
