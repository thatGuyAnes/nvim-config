require('lighthaus').setup({
  -- set true to use dark bg by default
  bg_dark = false,
  -- see colors.lua to see colors table, set overrides here to be merged with defaults
  colors = {},
  -- set to 'underline' to replace undercurl with underline
  -- or empty string '' to disable
  lsp_underline_style = 'undercurl',
  -- make background transparent, this overrides `bg_dark`
  transparent = false,
  -- use an italic font for comments
  italic_comments = false,
  -- use an italic font for keywords/conditionals
  italic_keywords = false,
})
