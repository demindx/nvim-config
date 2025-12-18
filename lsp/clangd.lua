---@type vim.lsp.Config
return {
  cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
  init_options = {
    fallbackFlags = { '-std=c++17' },
  },
	filetypes = {"c"}
}
