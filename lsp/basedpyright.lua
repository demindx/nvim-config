return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', '.git' },
  capabilities = vim.tbl_deep_extend('force',
    vim.lsp.protocol.make_client_capabilities(),
    {
      workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true,
          relativePatternSupport = true,
        },
      },
    }
  ),
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = 'standard', -- off / basic / standard / strict / all
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}
