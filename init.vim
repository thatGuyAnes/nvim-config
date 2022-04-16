source $HOME/.config/nvim/config/plugs.vim                    " vim-plug
source $HOME/.config/nvim/config/keys.vim                     " Keymaps
source $HOME/.config/nvim/config/settings.vim                 " General settings
source $HOME/.config/nvim/config/theme.vim                    " Theming
source $HOME/.config/nvim/config/treeSitter.vim               " Tree Shitter
source $HOME/.config/nvim/config/coc-config.vim               " coc-config
source $HOME/.config/nvim/config/nvim-tree.vim                " nvimTree config
source $HOME/.config/nvim/config/lualine.vim                  " Status Line
source $HOME/.config/nvim/config/floaterm.vim                 " floaterm

" set foldmethod=expr
set foldmarker={,}
set foldexpr=nvim_treesitter#foldexpr()

let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:vim_jsx_pretty_highlight_close_tag = 1

lua << EOF
-- local ft_str =
--   table.concat(
--   vim.tbl_map(
--     function(ft)
--       return configs[ft].filetype or ft
--     end,
--     require'nvim-treesitter.parsers'.parsers.available_parsers()
--   ),
--   ","
--   )
-- vim.cmd("autocmd Filetype " .. ft_str .. " setlocal foldmethod=expr foldexpr=nvim_treesitter#foldexpr()")
require 'colorizer'.setup()
require('nvim_comment').setup({
  -- Linters prefer comment and line to have a space in between markers
  marker_padding = true,
  -- should comment out empty or whitespace only lines
  comment_empty = true,
  -- Should key mappings be created
  create_mappings = true,
  -- Normal mode mapping left hand side
  line_mapping = "gcc",
  -- Visual/Operator mapping left hand side
  operator_mapping = "gc",
  -- Hook function to call before commenting takes place
  hook = function()
    --require("ts_context_commentstring.internal").update_commentstring()
     if vim.api.nvim_buf_get_option(0, "filetype") == "javascriptreact" then
       require("ts_context_commentstring.internal").update_commentstring()
     end
  end
})
EOF
