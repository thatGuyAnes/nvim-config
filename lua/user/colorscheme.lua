require "user.colorschemes.monokaipro"
require "user.colorschemes.dracula"
require "user.colorschemes.ellisonGruvbox"

-- Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
-- vim.cmd [[
-- if exists('+termguicolors')
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
--   endif
-- ]]


vim.cmd [[
try
  colorscheme monokaipro
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- local bg = dark
-- vim.cmd [[hi Normal guibg=none]]
vim.cmd [[
hi Normal       guibg=none
hi CursorLineNr guifg=#5eacd3   ctermfg=none
hi CursorLine   guibg=#151313      ctermbg=none
]]

