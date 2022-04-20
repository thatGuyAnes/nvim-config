local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = {
      "javascript",
      "typescript",
      "jsdoc",
      "css",
      "graphql",
      "html",
      "tsx",
      "scss",
      "json",
      "lua",
      "vim",
      "toml",
      "vue",
  },
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = {} },
  autopairs = {
    enable = true,
  },
  autotag = {
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
  },
  playground = {
    enable = true,
  }
}
