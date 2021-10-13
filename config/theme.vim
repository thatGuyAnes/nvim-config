" colors = { dracula, gruvbox, ayu, moonlight, solarized8, NeoSolarized,}
source $HOME/.config/nvim/config/themes/gruvbox.vim
source $HOME/.config/nvim/config/themes/dracula.vim
source $HOME/.config/nvim/config/themes/ayu.vim
source $HOME/.config/nvim/config/themes/moonlight.vim
source $HOME/.config/nvim/config/themes/solarized8.vim
source $HOME/.config/nvim/config/themes/gruvbox8.vim

" Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" " Enable true colors support
" if (has("termguicolors"))
"     set termguicolors
" endif

" set t_ut=
set termguicolors
syntax enable
set background=dark
colorscheme dracula


"##############################################################################
"### Highlights ###
"##############################################################################

" hi Normal guibg=none ctermbg=none
" hi LineNr guibg=none ctermbg=none
" hi LineNr guifg=Grey ctermfg=Lightcyan
" hi Signcolumn guibg=none  ctermbg=none
" hi Visual guifg=none ctermfg=black
" hi Visual guibg=SeaGreen ctermbg=LightCyan
hi CursorLineNr guibg=none gui=bold
" hi Cursor guifg=#ff00c4 gui=bold
" hi Visual gui=none
" hi Comment cterm=italic
hi EndOfBuffer guibg=none guifg=none
