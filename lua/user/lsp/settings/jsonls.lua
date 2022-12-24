local util = require "lspconfig".util

return {
  cmd = { "vscode-json-language-server.cmd", "--stdio" },
  filetypes = { "json", "jsonc" },
  init_options = {
    providerFormatter = true,
  },
  root_dir = util.find_git_ancestor,
}
