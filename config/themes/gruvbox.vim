" Full config at:
" https://github.com/morhetz/gruvbox/wiki/Configuration
" let g:gruvbox_transparent_bg = 1
" let g:gruvbox_italicize_comments = 1


lua << EOF
vim.g.gruvbox_bold                  = false
vim.g.gruvbox_italic                = false
vim.g.gruvbox_transparent_bg        = 1
vim.g.gruvbox_underline             = true
vim.g.gruvbox_undercurl             = true
vim.g.gruvbox_termcolors            = 256
vim.g.gruvbox_contrast_dark         = 'hard'   --soft, medium, hard
vim.g.gruvbox_contrast_light        = 'hard'
vim.g.gruvbox_hls_cursor            = "red"
vim.g.gruvbox_color_column          = 'bg1'    -- default: bg1
vim.g.gruvbox_sign_column           = 'bg0'
vim.g.gruvbox_vert_split            = 'bg3'
vim.g.gruvbox_italicize_comments    = false
vim.g.gruvbox_italicize_strings     = false
vim.g.gruvbox_invert_selection      = false
vim.g.gruvbox_invert_signs          = false
vim.g.gruvbox_invert_indent_guides  = false
vim.g.gruvbox_improved_strings      = false
vim.g.gruvbox_improved_warnings     = 1
EOF

