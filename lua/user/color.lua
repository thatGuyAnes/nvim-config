-- require "user.colorschemes.zenburn"
-- require "user.colorschemes.neosolarized"
require "user.colorschemes.one-dark"
-- require "user.colorschemes.catppuccin"
-- require "user.colorschemes.everforest"
-- require "user.colorschemes.gruvbox"
require "user.colorschemes.monokaipro"
-- require "user.colorschemes.nord"
require "user.colorschemes.lighthaus"

require('colorbuddy').colorscheme('cobalt2')
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
<<<<<<< HEAD
 " colorscheme gruvbox-baby
 " colorscheme monokaipro

  "let g:everforest_background = 'hard'
   "colorscheme everforest
=======
  let g:everforest_background = 'hard'
 " colorscheme gruvbox-baby
 colorscheme monokaipro

   "colorscheme everforest
   " colorscheme lighthaus
    " colorscheme darcula-solid
>>>>>>> f46f76e (packer sync)
  " colorscheme OceanicNext
  "colorscheme catppuccin
  "colorscheme onedark
  "colorscheme zenburn
 " colorscheme neosolarized
  " colorscheme nord
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- Custom highlights:
vim.cmd [[
" hi Normal       guibg=none
" hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi Cursor guifg=#5eacd3  guibg=black
  hi iCursor guifg=#5eacd3 guibg=steelblue
" hi CursorLineNr guifg=#5eacd3   ctermfg=none
" hi CursorLineNr guibg=NONE   ctermfg=none
"  hi CursorLine   guibg=#011F26      ctermbg=none
" hi LineNr guibg=NONE
 " hi SignColumn guibg=NONE
  hi clear LineNr
  hi clear SignColumn
]]
