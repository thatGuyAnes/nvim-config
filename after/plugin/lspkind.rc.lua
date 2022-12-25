local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
  -- enables text annotations
  --
  -- default: true
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Class = "  ",
    Color = "  ",
    Constant = "  ",
    Constructor = "  ",
    Enum = " 練",
    EnumMember = "  ",
    Event = "  ",
    Field = "  ",
    File = "  ",
    Folder = "  ",
    Function = "  ",
    Interface = " ﰮ ",
    Keyword = "  ",
    Method = "  ",
    Module = " {} ",
    Operator = "  ",
    Property = "  ",
    Reference = "  ",
    Snippet = "",
    Struct = "  ",
    Text = "  ",
    TypeParameter = "<>",
    Unit = " 塞 ",
    Value = "  ",
    Variable = "",
  },
})
