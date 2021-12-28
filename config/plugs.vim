 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
"--------------------------------------------------------------------------UTILS
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
"-----------------------------------------------------------------------------UI
Plug 'hoob3rt/lualine.nvim'
Plug 'junegunn/vim-emoji'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'psliwka/vim-smoothie'
"------------------------------------------------------------------------EDITING
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'terrortylor/nvim-comment'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
"-------------------------------------------------------------------------SYNTAX
Plug 'mboughaba/i3config.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"------------------------------------------------------------------MISCELLANEOUS
" -----------------------------------------------------------------COLOR SCHEMES
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'shaunsingh/moonlight.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'Kaicataldo/material.vim', { 'branch': 'main' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'WeeSnail/sonokai'
Plug 'https://gitlab.com/__tpb/monokai-pro.nvim'
Plug 'gkjgh/cobalt'
Plug 'tanvirtin/monokai.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'ishan9299/nvim-solarized-lua'
Plug 'olimorris/onedarkpro.nvim'
Plug 'mhartington/oceanic-next'

call plug#end()
