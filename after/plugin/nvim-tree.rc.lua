-- following options are the default
--[[ vim.g.nvim_tree_icons = { ]]
--[[      default = '', ]]
--[[      symlink = '', ]]
--[[      git = { ]]
--[[        unstaged= "✗", ]]
--[[        staged = "✓", ]]
--[[        unmerged = "", ]]
--[[        renamed = "➜", ]]
--[[        untracked = "★", ]]
--[[        deleted = "", ]]
--[[        ignored = "◌" ]]
--[[        }, ]]
--[[      folder = { ]]
--[[        arrow_open = "", ]]
--[[        arrow_closed = "", ]]
--[[        default = "", ]]
--[[        open = "", ]]
--[[        empty = "", ]]
--[[        empty_open = "", ]]
--[[        symlink = "", ]]
--[[        symlink_open = "", ]]
--[[        }, ]]
--[[      } ]]



local tree_cb = require 'nvim-tree.config'.nvim_tree_callback
local nvim_tree = require('nvim-tree')
nvim_tree.setup {
  disable_netrw                      = true,
  hijack_netrw                       = true,
  open_on_setup                      = false,
  ignore_buffer_on_setup             = false,
  ignore_ft_on_setup                 = {},
  hijack_directories                 = {
    enable = true,
    auto_open = true,
  },
  -- auto_close           = true,
  auto_reload_on_write               = true,
  open_on_tab                        = true,
  sort_by                            = "name",
  hijack_cursor                      = true,
  update_cwd                         = false,
  hijack_unnamed_buffer_when_opening = false,
  diagnostics                        = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file                = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open                        = {
    cmd  = nil,
    args = {}
  },
  git                                = {
    enable = true,
    ignore = false,
  },
  view                               = {
    width = 30,
    --[[ height = 30, ]]
    side = 'right',
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = true,
      list = {
        { key = { "<CR>", "o", "<2-LeftMouse>" }, cb = tree_cb("edit") },
        { key = { "<2-RightMouse>", "<C-]>" }, cb = tree_cb("cd") },
        { key = "<C-v>", cb = tree_cb("vsplit") },
        { key = "<C-x>", cb = tree_cb("split") },
        { key = "<C-t>", cb = tree_cb("tabnew") },
        { key = "<", cb = tree_cb("prev_sibling") },
        { key = ">", cb = tree_cb("next_sibling") },
        { key = "P", cb = tree_cb("parent_node") },
        { key = "<BS>", cb = tree_cb("close_node") },
        { key = "<S-CR>", cb = tree_cb("close_node") },
        { key = "<Tab>", cb = tree_cb("preview") },
        { key = "K", cb = tree_cb("first_sibling") },
        { key = "J", cb = tree_cb("last_sibling") },
        { key = "I", cb = tree_cb("toggle_ignored") },
        { key = "H", cb = tree_cb("toggle_dotfiles") },
        { key = "R", cb = tree_cb("refresh") },
        { key = "a", cb = tree_cb("create") },
        { key = "d", cb = tree_cb("remove") },
        { key = "r", cb = tree_cb("rename") },
        { key = "<C-r>", cb = tree_cb("full_rename") },
        { key = "x", cb = tree_cb("cut") },
        { key = "c", cb = tree_cb("copy") },
        { key = "p", cb = tree_cb("paste") },
        { key = "y", cb = tree_cb("copy_name") },
        { key = "Y", cb = tree_cb("copy_path") },
        { key = "gy", cb = tree_cb("copy_absolute_path") },
        { key = "[c", cb = tree_cb("prev_git_item") },
        { key = "]c", cb = tree_cb("next_git_item") },
        { key = "-", cb = tree_cb("dir_up") },
        { key = "s", cb = tree_cb("system_open") },
        { key = "q", cb = tree_cb("close") },
        { key = "g?", cb = tree_cb("toggle_help") },
      }
    }
  },
  renderer                           = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌"
        },
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },

      }
    }
  },
  filters                            = {
    dotfiles = false,
    custom = {}
  },
  trash                              = {
    cmd = "trash",
    require_confirm = true,
  },
  actions                            = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    },
  },
  log                                = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
}
