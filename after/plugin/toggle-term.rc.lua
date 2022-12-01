require("toggleterm").setup {
  -- size can be a number or function which is passed the current terminal
  size = vim.o.columns * 0.4,

  open_mapping = [[<c-\>]],
  -- on_open = fun(t: Terminal), -- function to run when the terminal opens
  -- on_close = fun(t: Terminal), -- function to run when the terminal closes
  -- on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
  -- on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
  -- on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    Normal = {
      guibg = "Normal",
    },
    NormalFloat = {
      link = 'Normal'
    },
    -- FloatBorder = {
    --   guifg = <VALUE-HERE>,
    --   guibg = <VALUE-HERE>,
    -- },
  },
  shade_terminals = true,
  shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  direction = 'vertical', -- 'vertical' | 'horizontal' | 'tab' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    -- width = 80,
    -- height = 30,
    winblend = 3,
  }
}

function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>h', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>j', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>k', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<leader>l', [[<C-\><C-n><C-W>l]], opts)
end

-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')



local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  float_opts = {
    border = 'double', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    -- width = 100,
    -- height = 30,
    winblend = 0,
  }
})
function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })

local node = Terminal:new({ cmd = "node", hidden = true })
function _NODE_TOGGLE()
  node:toggle()
end

-- Toggle ncdu
local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })
function _NCDU_TOGGLE()
  ncdu:toggle()
end

-- Toggle htop
local htop = Terminal:new({ cmd = "htop", hidden = true })
function _HTOP_TOGGLE()
  htop:toggle()
end
