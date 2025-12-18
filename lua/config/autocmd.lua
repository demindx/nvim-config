local api = vim.api
api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- api.nvim_create_autocmd("LspAttach", {
-- 	group = api.nvim_create_augroup("lsp-attach", { clear = true }),
-- 	callback = function(event)
-- 		local map = function(keys, func, desc)
-- 			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
-- 		end
--
-- 		map("gl", vim.diagnostic.open_float, "Open Diagnostic Float")
-- 		map("K", vim.lsp.buf.hover, "Hover Documentation")
-- 		map("gs", vim.lsp.buf.signature_help, "Signature Documentation")
-- 		map("gD", vim.lsp.buf.declaration, "Goto Declaration")
--
-- 		map("<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split")
-- 	end,
-- })
