 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}                      " Completion
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }                 " Fuzzy Search
Plug 'junegunn/fzf.vim'                                              " ////////////
Plug 'psliwka/vim-smoothie'                                          " Smooth Scrolling <C-d>&<C-U>
Plug 'jiangmiao/auto-pairs'                                          " Insert Closing pairs
Plug 'tpope/vim-fugitive'                                            " Git wrapper
Plug 'tpope/vim-commentary'                                          " Comments lines of code or block
Plug 'tpope/vim-surround'                                            " Anything surrounding
Plug 'unblevable/quick-scope'                                        " Character highligh when using f,F,t,T
Plug 'ThePrimeagen/vim-be-good'                                      " vim game to practice basic mvts
Plug 'kyazdani42/nvim-web-devicons'                                  " Icons
Plug 'kyazdani42/nvim-tree.lua'                                      " File explorer tree
Plug 'lukas-reineke/indent-blankline.nvim'                           " Indentation lines
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mboughaba/i3config.vim'                                        " Syntax highlighting for i3 conf file
Plug 'hoob3rt/lualine.nvim'                                          " Status Line
Plug 'norcalli/nvim-colorizer.lua'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""COLOR SCHEMES"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'gruvbox-community/gruvbox'
Plug 'shaunsingh/moonlight.nvim'
Plug 'lifepillar/vim-solarized8'
Plug 'lifepillar/vim-gruvbox8'

call plug#end()
