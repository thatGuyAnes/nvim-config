lua << EOF
require'lualine'.setup {
  options = {
    icons_enabled = true,
    padding = 1,
    theme = 'dracula-nvim',
    section_separators = {'', ''},
    component_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
      },
    lualine_x = {
      {
        'buffers',
        show_filename_only = true, -- shows shortened relative path when false
        show_modified_status = true, -- shows indicator then buffer is modified
        mode = 0, -- 0 shows buffer name
        max_length = vim.o.columns * 2 / 3, -- maximum width of buffers component
        filetype_names = {
          TelescopePrompt = 'Telescope',
          dashboard = 'Dashboard',
          packer = 'Packer',
          fzf = 'FZF',
          alpha = 'Alpha'
        }, -- shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
        buffers_color = {
          -- Same values like general color option can be used here.
          active = 'lualine_{section}_normal', -- color for active buffer
          inactive = 'lualine_{section}_inactive', -- color for inactive buffer
        },
      },
    },
    lualine_y = {'location', 'progress'},
    lualine_z = {'filetype'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'nvim-tree'}
}
EOF
