local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", {noremap = true, silent = true})
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
-- Normal --

-- keymap("c", "<Enter>", "<Esc>:noh<CR>", opts)

-- Splits Navigation
keymap("n", "<leader>j", ":wincmd j<CR>", opts)
keymap("n", "<leader>h", ":wincmd h<CR>", opts)
keymap("n", "<leader>k", ":wincmd k<CR>", opts)
keymap("n", "<leader>l", ":wincmd l<CR>", opts)

-- Horizontal Scrolling.
keymap("n", "<C-l>", "10l", {})
keymap("n", "<C-h>", "10h", {})

-- Vertical Scrolling.
keymap("n", "<C-k>", "5k", {})
keymap("n", "<C-j>", "5j", {})

keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- Smooth Scrolling

-- Close the current buffer and move to the prev one:
-- this replicates the functionality of closing a tab
keymap("n", "<leader>bc", ":<C-u>bp <bar> bd #<CR>", opts)
-- Close all buffers except current one:
keymap("n", "<leader>bd", ":<C-u>up <bar> %bd <bar> e#<CR>", opts)
-- List all open buffers and their status:
keymap("n", "<leader>bl", ":ls<CR>", opts)

-- NVIMTree

------------------------------------------------------------------------EDITING

-- Better escape or f**** use `ctrl-[` !!!
keymap("i", "jj", "<Esc>", opts)
keymap("i", "JJ", "<Esc>", opts)


-- Move current line up/down
keymap("n", "<A-[>", ":m-2<CR>==", opts)
keymap("n", "<A-]>", ":m+<CR>==", opts)

keymap("v", "<A-[>", ":m'<-2<CR>gv=gv", opts)
keymap("v", "<A-]>", ":m'>+<CR>gv=gv", opts)

keymap("i", "<A-[>", "<Esc>:m-2<CR>==gi", opts)
keymap("i", "<A-]>", "<Esc>:m+<CR>==gi", opts)


-- If you use Vim in a terminal, pressing alt will send an escape character
-- followed by the normal_mode_key that you pressed, removing the need to press
-- escape yourself.
-- For Tmux ; New lines without going to insert mode
keymap("n", "<A-O>", "O<Esc>", opts)
keymap("n", "<A-o>", "o<Esc>", opts)

keymap("n", "vw", "viw", opts)
keymap("n", "cw", "ciw", opts)
keymap("n", "dw", "diw", opts)
keymap("n", "V", "v$", opts)
keymap("n", "vv", "V", opts)

-- Tabbing indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Commentary
-- Git

-- Forward delete in insert mode, alternative to 'ctrl-o + x' or pressing the
-- del key. There is also the 'shift-c' to delete to the end of line.
keymap("i", "<C-d>", "<Del>", opts)

--------------------------------------------------------------------------LAYOUT

-- Full width & full height splits
keymap("n", "<leader>fh", ":wincmd _<CR>", opts)
keymap("n", "<leader>fw", ":wincmd |<CR>", opts)

-- Vertical resize
keymap("n", "<leader>-", ":vertical resize -5<CR>", opts)
keymap("n", "<leader>+", ":vertical resize +5<CR>", opts)

keymap("n", "<leader>time", '"=strftime("%F")<CR>p9h', opts)
keymap("n", "<leader>date", '"=strftime("%X")<CR>p7h', opts)

-- Fuzzy Finder Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Run in Node:
keymap("n", "<leader>rnd", ":!node %<CR>", opts)


--------------------------------------------------------------------------------

-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
-- 
-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
