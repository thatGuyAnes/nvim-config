return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      { "folke/neodev.nvim", opts = {} },
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      diagnostics = {
        virtual_text = {
          -- prefix = "   ",
          -- prefix = "icons",
        },
      },
    },
  },
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "css-lsp",
        "eslint-lsp",
        "luacheck",
        "selene",
        "shellcheck",
        "shfmt",
        "solargraph",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
      })
    end,
  },
}
