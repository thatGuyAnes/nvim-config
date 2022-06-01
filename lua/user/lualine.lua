require'lualine'.setup{
  options = {
    icons_enabled = true,
    theme = 'dracula',
    -- section_separators = '',
    component_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {},
    lualine_b = {
      {
        'diff',
        colored = true,
        separator = { left = '', right = ''  },
        right_padding = 2 ,
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
          modified = ' 💾',      -- Text to show when the file is modified.
          readonly = ' ⛔',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
        },
      },
    },
    lualine_x = {
      'branch',
      {
        -- 'buffers',
        -- separator = { left = '', right = ''  },
        -- left_padding = 2 ,
        -- show_filename_only = false, -- shows shortened relative path when false
        -- show_modified_status = true, -- shows indicator then buffer is modified
        -- mode = 1, -- 0 shows buffer name
        -- max_length = vim.o.columns * 2 / 3, -- maximum width of buffers component
        -- buffers_color = {
          -- Same values like general color option can be used here.
          -- active = {fg='black', bg='#5AF78E'}, -- color for active buffer
          -- inactive = {fg='gray'}, -- color for inactive buffer
        -- },
      },
    },
    lualine_y = {
      {
        'location',
        'progress',
        right_padding = 2,
        separator = { left = '', right = ''  },
      },
    },
    lualine_z = {},
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
}
