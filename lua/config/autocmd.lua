local api = vim.api
api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,

});

api.nvim_create_autocmd('FileType', {
  pattern = "*",
  callback = function() vim.treesitter.start() end,
});
