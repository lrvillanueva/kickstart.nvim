return {
  cmd = { '/Users/leandrovillanueva/.local/share/nvim/mason/bin/lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.luacheckrc', 'stylua.toml', '.stylua.toml', 'selene.toml', '.selene.toml', 'selene.yml', '.git', },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim', 'require',
        },
      },
    },
  },
}
