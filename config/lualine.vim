lua << EOF
require('lualine').setup({
  options = {
    icons_enabled = true,
    padding = 1,
    theme = 'dracula',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'branch'},
    lualine_b = {
      {
        'diff',
        colored = true,
        diff_color = {
          added = 'DiffAdd',
          modified = 'DiffChange',
          removed = 'DiffDelete',
        },
        symbols = {
          added = '+',
          modified = '~',
          lremoved = '-',
        },
        source = nil,
     },
    },
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
        shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
        symbols = {
          modified = '[+]',      -- Text to show when the file is modified.
          readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
        },
      },
    },
    lualine_x = {
      {
        'buffers',
        show_filename_only = true, -- shows shortened relative path when false
        show_modified_status = true, -- shows indicator then buffer is modified
        mode = 1, -- 0 shows buffer name
        max_length = vim.o.columns * 2 / 3, -- maximum width of buffers component
        buffers_color = {
          -- Same values like general color option can be used here.
          active = 'lualine_{section}_normal', -- color for active buffer
          inactive = 'lualine_{section}_inactive', -- color for inactive buffer
        },
      },
    },
    lualine_y = {
      'location',
      'progress',
    },
    lualine_z = {'mode'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {'nvim-tree'},
})
EOF
