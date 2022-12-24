-- check if lsp is available
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).

lsp_installer.on_server_ready(function(server)

  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  -- allow to recognize vim

  -- if server.name == "sqls" then

  --   opts.on_attach = function(client, bufnr)
  --     require("sqls").on_attach(client, bufnr)
  --   end

  --   local sqls_opts = require("user.lsp.settings.sql")
  --   opts = vim.tbl_deep_extend("force", sqls_opts, opts)
  -- end

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  -- if server.name == "clangd" then
  --   local clangd_opts = require("user.lsp.settings.clangd")
  --   opts = vim.tbl_deep_extend("force", clangd_opts, opts)
  -- end

  -- if server.name == "cmake" then
  --   local cmake_opts = require("user.lsp.settings.cmake")
  --   opts = vim.tbl_deep_extend("force", cmake_opts, opts)
  -- end

  if server.name == "jsonls" then
    local jsonls_opts = require("user.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server.name == "html" then
    local html_opts = require("user.lsp.settings.html")
    opts = vim.tbl_deep_extend("force", html_opts, opts)
  end

  if server.name == "emmet_ls" then
    local emmet_ls_opts = require("user.lsp.settings.emmet_ls")
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  if server.name == "tsserver" then
    local tsserver_opts = require("user.lsp.settings.tsserver")
    opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end

  if server.name == "cssls" then
    local cssls_opts = require("user.lsp.settings.cssls")
    opts = vim.tbl_deep_extend("force", cssls_opts, opts)
  end

  -- if server.name == "solargraph" then
  --   local solargraph_opts = require("user.lsp.settings.solargraph")
  --   opts = vim.tbl_deep_extend("force", solargraph_opts, opts)
  -- end

  -- if server.name == "prosemd_lsp" then
  --   local prosemd_lsp_opts = require("user.lsp.settings.prosemd_lsp")
  --   opts = vim.tbl_deep_extend("force", prosemd_lsp_opts, opts)
  -- end

  -- if server.name == "powershel_es" then
  --   local powershell_es_opts = require("user.lsp.settings.powershell_es_opts")
  --   opts = vim.tbl_deep_extend("force", powershell_es_opts, opts)
  -- end

  -- This setup() function is exactly the same as lspconfig's setup function.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

  server:setup(opts)
end)
