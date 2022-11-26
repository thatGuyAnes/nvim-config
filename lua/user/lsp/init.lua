-- Check if lsp is available
local status_ok, _ = pcall(require, "lspconfig") if not status_ok then
	return
end

--[[ require'lspconfig'.solargraph.setup{} ]]

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()

require("user.lsp.null-ls")
--[[ require("user.lsp.settings.tsserver") ]]

-- require("lspconfig").tsserver.setup({
--
--   init_options = require("nvim-lsp-ts-utils").init_options,
--   on_attach
-- })

-- local lspconfig = require("lspconfig")
-- lspconfig.tsserver.setup({
--   on_attach = function(client, bufnr)
--     client.resolved_capabilities.document_formatting = false
--     client.resolved_capabilities.document_range_formatting = false
--
--     local ts_utils = require("nvim-lsp-ts-utils")
--     ts_utils.setup({})
--     ts_utils.setup_client(client)
--     on_attach(client, bufnr)
--   end,
-- })

-- -----------------------------------------------------------------------------
