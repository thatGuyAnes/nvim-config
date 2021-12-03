lua <<EOF
require'nvim-treesitter.configs'.setup {
  context_commentstring = {
      enable = true,
  },
  highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = {"html"},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
      "javascript",
      "jsdoc",
      "css",
      "graphql",
      "html",
      "tsx",
      "scss",
      "json",
      "vim",
      "toml"
      }
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }


-- local ft_str =
--     table.concat(
--         vim.tbl_map(
--             function(ft)
--               return configs[ft].filetype or ft
--             end,
--             require'nvim-treesitter.parsers'.parsers.available_parsers()
--         ),
--     ","
--     )
-- vim.cmd("autocmd Filetype " .. ft_str .. " setlocal foldmethod=expr foldexpr=nvim_treeseitter#foldexpr()")
EOF
