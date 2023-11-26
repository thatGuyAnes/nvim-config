-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Splits Navigation
map("n", "<leader>h", "<C-w>h", { remap = true, desc = "Go to left window", silent = true })
map("n", "<leader>j", "<C-w>j", { remap = true, desc = "Go to lower window", silent = true })
map("n", "<leader>k", "<C-w>k", { remap = true, desc = "Go to upper window", silent = true })
map("n", "<leader>l", "<C-w>l", { remap = true, desc = "Go to right window", silent = true })

-- lazy
map("n", "<leader>lz", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Horizontal Scrolling.
map("n", "<C-l>", "10l", { noremap = true, silent = true })
map("n", "<C-h>", "10h", { noremap = true, silent = true })
map("v", "<C-l>", "10l", { noremap = true, silent = true })
map("v", "<C-h>", "10h", { noremap = true, silent = true })
-- Vertical Scrolling.
map("n", "<C-k>", "5k", { noremap = true, silent = true })
map("n", "<C-j>", "5j", { noremap = true, silent = true })
map("v", "<C-k>", "5k", { noremap = true, silent = true })
map("v", "<C-j>", "5j", { noremap = true, silent = true })

map("n", "j", "gj", { noremap = true, silent = true })
map("n", "k", "gk", { noremap = true, silent = true })

-- TODO: remove this binding, and use ctrl+[ to escape instead !!
map("i", "jj", "<Esc>", { silent = true })
map("i", "JJ", "<Esc>", { silent = true })

map("n", "vw", "viw", { noremap = true, silent = true })
map("n", "cw", "ciw", { noremap = true, silent = true })
map("n", "dw", "diw", { noremap = true, silent = true })
map("n", "V", "v$", { noremap = true, silent = true })
map("n", "vv", "V", { noremap = true, silent = true })

-- Forward delete in insert mode, alternative to 'ctrl-o + x' or pressing the
-- del key. There is also the 'shift-c' to delete to the end of line.
map("i", "<C-d>", "<Del>")
