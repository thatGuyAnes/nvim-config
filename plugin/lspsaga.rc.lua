-- local status, saga = pcall(require, "lspsaga")
-- if (not status) then return end
--
-- saga.init_lsp_saga {
--   border_style = "rounded",
--   --saga_winblend = 20,
--   server_filetype_map = {
--     typescript = 'typescript'
--   }
-- }

local opts = { noremap = true, silent = true }
--vim.keymap.set('n', '<Cmd>Lspsaga diagnostic_jump_next<CR>', '<C-j>', opts)
--vim.keymap.set('n', '<Cmd>Lspsaga diagnostic_jump_next<CR>', ']d', opts)
--vim.keymap.set('n', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', '[d', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
--vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
--vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
--vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', "<leader>ca", "<Cmd>Lspsaga code_action<CR>", opts)
