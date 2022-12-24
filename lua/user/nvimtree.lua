-- -- default icons for nvim tree
-- vim.g.nvim_tree_icons = {
--   default = "",
--   symlink = "",
--   -- git = {
--   --    unstaged =  "✗",
--   --    staged =  "✓",
--   --    unmerged =  "",
--   --    renamed =  "➜",
--   --    untracked =  "★",
--   --    deleted =  "",
--   --    ignored =  "◌"
--   -- },
--   git = {
--     unstaged = "",
--     staged = "S",
--     unmerged = "",
--     renamed = "➜",
--     deleted = "",
--     untracked = "U",
--     ignored = "◌",
--   },
--   folder = {
--      arrow_open =  "",
--      arrow_closed =  "",
--      default =  "",
--      open =  "",
--      empty =  "",
--      empty_open =  "",
--      symlink =  "",
--      symlink_open =  "",
--   },
-- }


-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end

-- local tree_cb = nvim_tree_config.nvim_tree_callback

-- nvim_tree.setup {
--   disable_netrw = true,
--   hijack_netrw = true,
--   open_on_setup = false,
--   ignore_ft_on_setup = {
--     "startify",
--     "dashboard",
--     "alpha",
--   },
--   open_on_tab = false,
--   hijack_cursor = false,
--   update_cwd = true,
--   update_to_buf_dir = {
--     enable = true,
--     auto_open = true,
--   },
--   diagnostics = {
--     enable = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     },
--   },
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--     ignore_list = {},
--   },
--   git = {
--     enable = true,
--     ignore = true,
--     timeout = 1500,
--   },
--   actions = {
--     open_file = {
--       resize_window = true
--     }
--   },
--   view = {
--     width = 40,
--     height = 40,
--     hide_root_folder = false,
--     side = "left",
--     auto_resize = true,
--     mappings = {
--       custom_only = false,
--       list = {
--         { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
--         { key = "h", cb = tree_cb "close_node" },
--         { key = "v", cb = tree_cb "vsplit" },
--       },
--     },
--     number = false,
--     relativenumber = false,
--   },
--   quit_on_open = 0,
--   git_hl = 1,
--   disable_window_picker = 0,
--   root_folder_modifier = ":t",
--   show_icons = {
--     git = 1,
--     folders = 1,
--     files = 1,
--     folder_arrows = 1,
--     tree_width = 30,
--   },
-- }

-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
