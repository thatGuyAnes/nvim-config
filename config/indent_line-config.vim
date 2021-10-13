lua << EOF
-- vim.opt.termguicolors = true
--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#FFFFFF gui=nocombine]]
-- line indent highlights.
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#aaa gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#c5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#1F83A9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#86d642 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#A13F8F gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
-- treesitter context highlight
--vim.cmd [[highlight IndentBlanklineContextChar guifg=#28db46 gui=nocombine]]
-- backgroudn highlights
--vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

vim.opt.list = true
require("indent_blankline").setup {
    --char = '▏',
    char = "│",
    use_treesitter = false,
    --show_current_context = true,
    buftype_exclude = {"terminal"},
    filetype_exclude = {
        "NvimTree",
        "help",
    },
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    show_first_indent_level = true,
    -- line indent highlights.
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
-- settings for background highlight.
--    char = ' ',
--    char_highlight_list = {
--        "IndentBlanklineIndent1",
--        "IndentBlanklineIndent2",
--        },
--    space_char_highlight_list = {
--        "IndentBlanklineIndent1",
--        "IndentBlanklineIndent2",
--        },
}
EOF


"####################################
        "### VIM SCRIPT ###
"####################################
" let g:indentLine_char = '▏'
" let g:indent_blankline_show_current_context = v:true
" let g:indent_blankline_use_treesitter = v:true
" let g:indent_blankline_filetype_exclude = ['NERDTree', 'help', 'nerdtree', 'NERD_tree_']
" let g:indentLine_bufTypeExclude = ['terminal']
" let g:indent_blankline_show_trailing_blankline_indent = v:false
