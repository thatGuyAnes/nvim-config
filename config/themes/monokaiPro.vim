lua << EOF
-- The theme comes with six filters, default, machine, ristretto, octogon
-- spectrum, and classic
-- default: --default--

vim.g.monokaipro_filter = "octogon"
-- vim.g.monokaipro_filter = "spectrum"
-- vim.g.monokaipro_filter = "machine"
-- vim.g.monokaipro_filter = "ristretto"

-- Configure the colors used when opening a :terminal in Neovim
-- default: true
vim.g.monokaipro_terminal_colors = true

-- Make comments italic
-- default: true
vim.g.monokaipro_italic_comments = true

-- Make keywords italic
-- true
vim.g.monokaipro_italic_keywords = false

-- Make functions italic
-- false
vim.g.monokaipro_italic_functions = false

-- Make variables and identifiers italic
-- false
vim.g.monokaipro_italic_variables = true

-- Enable this to disable setting the background color
-- false
vim.g.monokaipro_transparent = false

-- Enabling this option, will hide inactive statuslines and replace them with a
-- thin border instead. Should work with the standard StatusLine and LuaLine.
-- false
vim.g.monokaipro_hide_inactive_statusline = false

-- Set a darker background on sidebar-like windows. For example:
-- [--vista_kind--, --packer--]
-- {}
vim.g.monokaipro_sidebars = {}

-- When true sidebar like windows will use the normal background
-- false
vim.g.monokaipro_flat_sidebar = false

-- When true float and diagnostic like windows will use the normal background
-- false
vim.g.monokaipro_flat_float = false

-- When true the integrated terminal will use the normal background
-- false
vim.g.monokaipro_flat_term = false

-- You can override specific color groups to use other groups or a hex color
-- {}
vim.g.monokaipro_colors = {
  hint = "cyan",
  -- TSPunctBracket = "red",
  -- bg = "#403e41"
  -- bg = "#2B292C"
--  bg = "#1F1E20"
  }
EOF
