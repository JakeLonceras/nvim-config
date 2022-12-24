-- check if lsp is available
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.nullls"

-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
