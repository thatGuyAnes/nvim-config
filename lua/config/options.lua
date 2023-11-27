-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "

local opt = vim.opt
opt.autoindent = true
opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 0
opt.colorcolumn = "81"
opt.cursorline = true
opt.equalalways = true
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.formatoptions = "jcroqlnt" -- tcqj
opt.guicursor = ""
-- opt.cursorlineopt = "number"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.hidden = true
opt.hlsearch = false
opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 2
opt.list = true
opt.mouse = "a"
opt.number = true
opt.numberwidth = 4
opt.pumblend = 10
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 10
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true
opt.shiftwidth = 2
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false
opt.showtabline = 2
opt.sidescrolloff = 20
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = 2
opt.spelllang = { "en" }
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 200
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 300
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.wrap = false
opt.writebackup = false
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  -- fold = "⸱",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
-- opt.foldmarker = "{}"

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

-- Folding
vim.opt.foldlevel = 99
vim.opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"

if vim.fn.has("nvim-0.9.0") == 1 then
  vim.opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
end

-- HACK: causes freezes on <= 0.9, so only enable on >= 0.10 for now
if vim.fn.has("nvim-0.10") == 1 then
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
else
  -- vim.opt.foldmethod = "indent"
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
end

vim.o.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- NO comments in new line
vim.api.nvim_command([[
au! BufEnter * set fo-=co fo-=r fo-=o
]])
