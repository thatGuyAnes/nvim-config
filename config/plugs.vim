 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
"--------------------------------------------------------------------------UTILS
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
"-----------------------------------------------------------------------------UI
Plug 'junegunn/vim-emoji'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'psliwka/vim-smoothie'
Plug 'hoob3rt/lualine.nvim'
"------------------------------------------------------------------------EDITING
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'terrortylor/nvim-comment'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'editorconfig/editorconfig-vim'
"-------------------------------------------------------------------------SYNTAX
Plug 'mboughaba/i3config.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"------------------------------------------------------------------MISCELLANEOUS
" -----------------------------------------------------------------COLOR SCHEMES
Plug 'Kaicataldo/material.vim', { 'branch': 'main' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://gitlab.com/__tpb/monokai-pro.nvim'
Plug 'tanvirtin/monokai.nvim'
Plug 'ishan9299/nvim-solarized-lua'
Plug 'olimorris/onedarkpro.nvim'
Plug 'Mofiqul/dracula.nvim'

" Plug 'gruvbox-community/gruvbox'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

Plug 'ellisonleao/gruvbox.nvim'
" Plug 'rafamadriz/gruvbox'

Plug 'lifepillar/vim-solarized8'



call plug#end()
