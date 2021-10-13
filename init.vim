source $HOME/.config/nvim/config/plugs.vim                    " vim-plug
source $HOME/.config/nvim/config/settings.vim                 " General settings
source $HOME/.config/nvim/config/nvim-tree.vim                " nvimTree config
source $HOME/.config/nvim/config/theme.vim                    " Theming
source $HOME/.config/nvim/config/treeSitter.vim               " Tree Sitter
source $HOME/.config/nvim/config/indent_line-config.vim       " Line indentation config
source $HOME/.config/nvim/config/keys.vim                     " Keymaps
source $HOME/.config/nvim/config/lualine.vim                  " Status Line
source $HOME/.config/nvim/config/coc-config.vim               " coc config

lua << EOF
require 'colorizer'.setup()
EOF

" Quick scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
