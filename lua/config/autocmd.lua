local api = vim.api
api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,

});

api.nvim_create_autocmd('BufReadPost', {
  pattern = "*",
  callback = function() vim.treesitter.start() end,
});
