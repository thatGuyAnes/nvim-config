require "user.colorschemes.monokaipro"
require "user.colorschemes.dracula"
require "user.colorschemes.ellisonGruvbox"
require "user.colorschemes.solarized"
-- require "user.colorschemes.onedarkpro"

-- TODO: figure this out in this setup. Not sure if it's needed though.
-- Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
vim.cmd [[
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
]]

vim.cmd [[
try
  colorscheme monokaipro
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- Custom highlights:
vim.cmd [[
" hi Normal       guibg=none
" hi EndOfBuffer guibg=NONE ctermbg=NONE
hi CursorLineNr guifg=#5eacd3   ctermfg=none
hi CursorLineNr guibg=NONE   ctermfg=none
hi CursorLine   guibg=#151313      ctermbg=none
" hi LineNr guibg=NONE
" hi SignColumn guibg=NONE
hi clear LineNr
hi clear SignColumn
]]

