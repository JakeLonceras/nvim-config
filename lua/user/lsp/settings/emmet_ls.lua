local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

return {
  cmd = {"emmet-ls.cmd", "--stdio"},
  capabilities = capabilities,
  filetypes = { "html", "css", "typescriptreact", "javascriptreact", "erb" },
}
