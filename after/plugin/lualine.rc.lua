local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    -- theme = 'solarized_dark',
    theme = 'auto',
    --section_separators = { left = '', right = '' },
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},

    -- component_separators = { left = ' ', right = ' ' },
    -- section_separators = { left = ' ', right = ' ' },
    always_divide_middle = true,
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {
      {'mode'},
      {
        'diff',
        colored = true,
        separator = { left = '', right = '' },
        right_padding = 0,
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
    --lualine_b = { 'branch' },
    lualine_b = {
      {
        'branch',
        color={fg='#C4A000'}
      }
    },
    lualine_c = {
      {
        'filename',
        -- color={fg='green'},
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
        shorting_target = 40, -- Shortens path to leave 40 spaces in the window
        symbols = {
          modified = ' 💾', -- Text to show when the file is modified.
          readonly = ' ⛔', -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
        },
      },
    },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      -- 'encoding',
      -- 'fileformat',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive', 'nvim-tree' }
}
