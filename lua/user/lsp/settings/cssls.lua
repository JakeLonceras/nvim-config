local util = require "lspconfig".util

return {
  cmd = { "vscode-css-language-server.cmd", "--stdio" },
  filetypes = { "css", "scss" },
  init_options = {
    providerFormatter = true,
  },
  root_dir = util.root_pattern(
    "package.json",
    ".git"
  ),
  settings = {
    css = {
      validate = true
    },
    scss = {
      validate = true
    }
  }
}
