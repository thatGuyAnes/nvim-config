"##############################################################################
"### Importing themes configurations ###
"## { dracula, gruvbox, ayu, moonlight, solarized8, material} ##
"##############################################################################
source $HOME/.config/nvim/config/themes/gruvbox.vim
source $HOME/.config/nvim/config/themes/dracula.vim
source $HOME/.config/nvim/config/themes/ayu.vim
source $HOME/.config/nvim/config/themes/moonlight.vim
source $HOME/.config/nvim/config/themes/solarized8.vim
source $HOME/.config/nvim/config/themes/gruvbox8.vim
source $HOME/.config/nvim/config/themes/onedark.vim
source $HOME/.config/nvim/config/themes/material.vim
source $HOME/.config/nvim/config/themes/palenight.vim

" Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" Enable true colors support
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif

syntax enable                     " Enables syntax highlighting.
set background=dark               " Theme bg. {light, dark}.
colorscheme gruvbox8              " Color scheme.

"##############################################################################
"### Highlights ###
"##############################################################################

hi Normal       guibg=none      ctermbg=none          " Removes bg.
" hi CursorLineNr guibg=none      gui=bold              " Cursorline numbers bg.
hi CursorLineNr guifg=#5eacd3      ctermfg=none          " Cursorline numbers fg.
" hi CursorLine   guibg=none      ctermbg=none          " Cursor line bg.
" hi LineNr       guibg=none      ctermbg=none          " Line numbers bg.
hi LineNr       guifg=#5eacd3      ctermfg=Grey          " Line numbers fg.
" hi Signcolumn   guibg=none      ctermbg=none          " Signcolumn bg.
" hi Visual       guifg=none      ctermfg=black         " Visual selection fg.
" hi Visual       guibg=SeaGreen  ctermbg=Grey          " Visual selection bg.
" hi EndOfBuffer  guibg=none      guifg=none            " Endbuffer chars.
" hi Visual       gui=none                              " Removes visual highlight.

"##############################################################################
"### Legacy/Tests ###
"##############################################################################

" set termguicolors                 " Enables true colors.
" set t_ut=
