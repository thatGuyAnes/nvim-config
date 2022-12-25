-- local status, indent = pcall(require, "indent-blankline")
-- if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.indent_blankline_char = "┊"
vim.cmd [[highlight IndentBlanklineChar guifg=#2E3436 gui=nocombine]]
vim.opt.list = true


-- g:indentLine_char_list = ['|', '¦', '┆', '┊']

-- indent.setup {
--for example, context is off by default, use this to turn it on
-- show_current_context = false,
-- char = "",
-- space_char_blankline = " ",
-- char_highlight_list = { "IndentBlanklineChar" },
-- show_current_context_start = false,
-- show_end_of_line = true
-- }
