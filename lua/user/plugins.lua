-- Normally this if-block is not needed, because `:set nocp` is done
-- automatically when .vimrc is found. However, this might be useful
-- when you execute `vim -u .vimrc` from the command line.
if vim.compatible then
  -- `:set nocp` has many side effects. Therefore this should be done
  -- only when "compatible" is set.
  vim.cmd [[ set nocompatible ]]
end

function PackInit()
  vim.cmd("packadd minpac")
  vim.call("minpac#init")

  local add = vim.fn["minpac#add"]

  -- plugins
  -- project navigation
  add("kyazdani42/nvim-tree.lua")
  add("kyazdani42/nvim-web-devicons")
  add("nvim-lua/plenary.nvim")
  add("nvim-telescope/telescope-media-files.nvim")
  add("nvim-telescope/telescope.nvim")
  add("folke/which-key.nvim")

  -- developer essentials
  add("hrsh7th/nvim-cmp") -- The completion plugin
  add("hrsh7th/cmp-buffer") -- buffer completions
  add("hrsh7th/cmp-path") -- path completions
  add("hrsh7th/cmp-cmdline") -- cmdline completions
  add("saadparwaiz1/cmp_luasnip") -- snippet completions
  add("David-Kunz/cmp-npm") -- cmp for npm
  add("hrsh7th/cmp-nvim-lsp")
  add("hrsh7th/cmp-nvim-lua")
  add("ahmedkhalf/project.nvim")
  -- snippets
  add("L3MON4D3/LuaSnip") --snippet engine
  add("rafamadriz/friendly-snippets") -- a bunch of snippets to use
  add('hrsh7th/vim-vsnip-integ')
  add('hrsh7th/vim-vsnip')
  -- LSP
  add("neovim/nvim-lspconfig") -- enable LSP
  add("williamboman/nvim-lsp-installer") -- simple to use language server installer
  add("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
  add("nanotee/sqls.nvim") -- improved sql lsp

  -- quality of life
  add("lewis6991/impatient.nvim")
  add("nvim-lua/popup.nvim")
  add("lewis6991/gitsigns.nvim")
  add("nvim-treesitter/nvim-treesitter")
  add("nvim-lualine/lualine.nvim")
  add("akinsho/bufferline.nvim")
  add("jiangmiao/auto-pairs")
  add("Yggdroot/indentLine")
  add("akinsho/toggleterm.nvim")
  add("arkav/lualine-lsp-progress")
  add("tpope/vim-commentary")

  -- utils
  add("andweeb/presence.nvim")

  -- colorscheme
  add("archseer/colibri.vim")
  add("sainnhe/everforest")
  add("tomasiser/vim-code-dark")
  add("vv9k/bogster")
  add("dracula/vim")
  add("morhetz/gruvbox")
  add("arcticicestudio/nord-vim")
  add("joshdick/onedark.vim")
  add("rose-pine/neovim")
  add("Mofiqul/vscode.nvim")

end

-- Packer commands
vim.cmd [[
  command! PackUpdate lua PackInit(); vim.call("minpac#update")
  command! PackClean lua PackInit(); vim.call("minpac#clean")
  command! PackStatus lua PackInit(); vim.call("minpac#status")
]]
