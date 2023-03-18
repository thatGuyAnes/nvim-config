local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  endwise = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "css",
    "fish",
    "html",
    "json",
    "lua",
    "php",
    "ruby",
    "toml",
    "tsx",
    "yaml",
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  rainbow = {
    enable = true,
    disable = { "html" },
    extand_mode = false,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
