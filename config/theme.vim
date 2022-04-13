"##############################################################################
"### Importing themes configurations ###
"## { dracula, gruvbox, ayu, moonlight, solarized8, material, lucario} ##
"##############################################################################
source $HOME/.config/nvim/config/themes/gruvbox.vim
" source $HOME/.config/nvim/config/themes/gruvbox_community.vim
" source $HOME/.config/nvim/config/themes/solarized.vim
" source $HOME/.config/nvim/config/themes/solarized2.vim
source $HOME/.config/nvim/config/themes/solarized8.vim
source $HOME/.config/nvim/config/themes/dracula.vim
" source $HOME/.config/nvim/config/themes/material.vim
" source $HOME/.config/nvim/config/themes/palenight.vim
" source $HOME/.config/nvim/config/themes/sonokai.vim
source $HOME/.config/nvim/config/themes/monokaiPro.vim
" source $HOME/.config/nvim/config/themes/onedark.vim
" source $HOME/.config/nvim/config/themes/oceanicNext.vim

" if (has("termguicolors"))
"     set termguicolors
" endif

" Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif

" Enable true colors support
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set termguicolors                 " Enables true colors.
set t_ut=
syntax enable
set background=dark

" source $HOME/.config/nvim/config/themes/gruvbox-baby.vim
" colorscheme gruvbox
" let g:doom_one_terminal_colors = v:true
" colorscheme doom-one

" colorscheme monokaipro
" colorscheme palenight

" colorscheme OceanicNext
" colorscheme dracula
" colorscheme sonokai
" colorscheme monokai
colorscheme solarized8_high

" set background=light
" colorscheme solarized
" colorscheme ayu
"##############################################################################
"### Highlights ###
"##############################################################################

" hi Normal       guibg=none      ctermbg=none          " Removes bg.
" hi CursorLineNr guibg=none      gui=bold              " Cursorline numbers bg.
hi CursorLineNr guifg=#5eacd3   ctermfg=none          " Cursorline numbers fg.
" hi CursorLine   guibg=#1D1D1D      ctermbg=none          " Cursor line bg.
hi CursorLine   guibg=#151313      ctermbg=none          " Cursor line bg.
" hi CursorLine   gui=underline
" hi LineNr       guibg=none      ctermbg=none          " Line numbers bg.
" hi LineNr       guifg=#5eacd3   ctermfg=Grey          " Line numbers fg.
" hi Signcolumn   guibg=none      ctermbg=none          " Signcolumn bg.
" hi Visual       guifg=none      ctermfg=black         " Visual selection fg.
" hi Visual       guibg=SeaGreen  ctermbg=Grey          " Visual selection bg.
" hi EndOfBuffer  guibg=none      guifg=none            " Endbuffer chars.
" hi Visual       gui=none                              " Removes visual highlight.
" hi CocHighlightText guibg=Grey ctermbg=Grey

"##############################################################################
"### Legacy/Tests ###
"##############################################################################


