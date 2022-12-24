return {
  cmd = { "vscode-html-language-server.cmd", "--stdio" },
  filetypes = { "html" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true,
    },
    providerFormatter = true,
  },
}
