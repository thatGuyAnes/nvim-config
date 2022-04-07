" "empty by default
" " let g:nvim_tree_ignore = [ '.git','.cache' ]
" "0 by default
" " let g:nvim_tree_gitignore = 0
" "0 by default, closes the tree when you open a file
" "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_indent_markers = 1
" "0 by default, will enable file highlight for git attributes (can be used without the icons).
" let g:nvim_tree_git_hl = 1
" "0 by default, will enable folder and file icon highlight for opened files/directories.
" let g:nvim_tree_highlight_opened_files = 1
" "This is the default. See :help filename-modifiers for more options
" let g:nvim_tree_root_folder_modifier = ':~'
" "0 by default, append a trailing slash to folder names
" let g:nvim_tree_add_trailing = 1
" " 0 by default, compact folders that only contain a single folder into one node in the file tree
" let g:nvim_tree_group_empty = 0
" "0 by default, will disable the window picker.
" "one space by default, used for rendering the space between the icon and the
" "filename. Use with caution, it could break rendering if you set an empty
" "string depending on your font.
" let g:nvim_tree_icon_padding = ' '
" " defaults to ' ➛ '. used as a separator between symlinks' source and target.
" let g:nvim_tree_symlink_arrow = ' >> '
" "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
" let g:nvim_tree_respect_buf_cwd = 1
" "1 by default, When creating files, sets the path of a file when cursor is on
" "a closed folder to the parent folder when 0, and inside the folder when 1.
" let g:nvim_tree_create_in_closed_folder = 0
" "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
" let g:nvim_tree_refresh_wait = 500
" " Dictionary of buffer option names mapped to a list of option values that
" " indicates to the window picker that the buffer's window should not be
" " selectable.
" " let g:nvim_tree_window_picker_exclude = {
" "     \   'filetype': [
" "     \     'notify',
" "     \     'packer',
" "     \     'qf'
" "     \   ],
" "     \   'buftype': [
" "     \     'terminal'
" "     \   ]
" "     \ }
" " List of filenames that gets highlighted with NvimTreeSpecialFile
" let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
" "If 0, do not show the icons for one of 'git' 'folder' and 'files'
" "1 by default, notice that if 'files' is 1, it will only display
" "if nvim-web-devicons is installed and on your runtimepath.
" "if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
" "but this will not work when you set indent_markers (because of UI conflict)
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
" 
" " default will show icon by default if no icon is provided
" " default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

" this variable must be enabled for colors to be applied properly
" set termguicolors

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guifg=cyan ctermfg=cyan

lua << EOF
-- following options are the default
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    require'nvim-tree'.setup {
      disable_netrw        = true,
      hijack_netrw         = false,
      open_on_setup        = false,
      ignore_buffer_on_setup = false,
      ignore_ft_on_setup   = {},
      hijack_directories   = {
        enable = true,
        auto_open = true,
      },
      -- auto_close           = true,
      auto_reload_on_write = true,
      open_on_tab          = true,
      sort_by              = "name",
      hijack_cursor        = true,
      update_cwd           = false,
      hijack_unnamed_buffer_when_opening = false,
      diagnostics          = {
        enable = true,
        show_on_dirs = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
      },
      update_focused_file = {
        enable      = true,
        update_cwd  = false,
        ignore_list = {}
      },
      system_open = {
        cmd  = nil,
        args = {}
      },
      git = {
        enable = true,
        ignore = false,
      },
      view = {
        width = 30,
        height = 30,
        side = 'left',
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
          custom_only = true,
          list = {
          { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
          { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
          { key = "<C-v>",                        cb = tree_cb("vsplit") },
          { key = "<C-x>",                        cb = tree_cb("split") },
          { key = "<C-t>",                        cb = tree_cb("tabnew") },
          { key = "<",                            cb = tree_cb("prev_sibling") },
          { key = ">",                            cb = tree_cb("next_sibling") },
          { key = "P",                            cb = tree_cb("parent_node") },
          { key = "<BS>",                         cb = tree_cb("close_node") },
          { key = "<S-CR>",                       cb = tree_cb("close_node") },
          { key = "<Tab>",                        cb = tree_cb("preview") },
          { key = "K",                            cb = tree_cb("first_sibling") },
          { key = "J",                            cb = tree_cb("last_sibling") },
          { key = "I",                            cb = tree_cb("toggle_ignored") },
          { key = "H",                            cb = tree_cb("toggle_dotfiles") },
          { key = "R",                            cb = tree_cb("refresh") },
          { key = "a",                            cb = tree_cb("create") },
          { key = "d",                            cb = tree_cb("remove") },
          { key = "r",                            cb = tree_cb("rename") },
          { key = "<C-r>",                        cb = tree_cb("full_rename") },
          { key = "x",                            cb = tree_cb("cut") },
          { key = "c",                            cb = tree_cb("copy") },
          { key = "p",                            cb = tree_cb("paste") },
          { key = "y",                            cb = tree_cb("copy_name") },
          { key = "Y",                            cb = tree_cb("copy_path") },
          { key = "gy",                           cb = tree_cb("copy_absolute_path") },
          { key = "[c",                           cb = tree_cb("prev_git_item") },
          { key = "]c",                           cb = tree_cb("next_git_item") },
          { key = "-",                            cb = tree_cb("dir_up") },
          { key = "s",                            cb = tree_cb("system_open") },
          { key = "q",                            cb = tree_cb("close") },
          { key = "g?",                           cb = tree_cb("toggle_help") },
          }
        }
      },
      filters = {
        dotfiles = false,
        custom = {}
      },
      trash = {
        cmd = "trash",
        require_confirm = true,
      },
      actions = {
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
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          git = false,
        },
      },
    }
EOF



