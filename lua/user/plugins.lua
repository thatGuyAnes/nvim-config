local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  -- use "lukas-reineke/indent-blankline.nvim" -- Indent

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion

  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use "jose-elias-alvarez/nvim-lsp-ts-utils"

  -- use 'glepnir/lspsaga.nvim' -- LSP UIs
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
          require("lspsaga").setup({})
      end,
      requires = {
          {"nvim-tree/nvim-web-devicons"},
          --Please make sure you install markdown and markdown_inline parser
          {"nvim-treesitter/nvim-treesitter"}
      }
  })
  use 'L3MON4D3/LuaSnip'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'nvim-tree/nvim-web-devicons' -- File icons

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use "nvim-telescope/telescope-media-files.nvim"

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'

  -- Comments
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "JoosepAlviste/nvim-ts-context-commentstring"

  --Surround
  use "tpope/vim-surround"

  -- ToggleTerm
  use { "akinsho/toggleterm.nvim" }

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  --ruby
  -- use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'jlcrochet/vim-ruby'
  use 'RRethy/nvim-treesitter-endwise'

  -- WHICH KEY
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  -- COLORSCHEMES
  use {
    'folke/tokyonight.nvim',
  }
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'romgrk/doom-one.vim'
  use 'marko-cerovac/material.nvim'
  use 'mhartington/oceanic-next'
  -- use "neanias/everforest-nvim"
  use "sainnhe/everforest"
  use 'navarasu/onedark.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "phha/zenburn.nvim", }
  use { "luisiacc/gruvbox-baby", branch = 'main' }
  -- Optional; default configuration will be used if setup isn't called.
  use 'shaunsingh/nord.nvim'
  use "https://gitlab.com/__tpb/monokai-pro.nvim"
  use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
  use 'mrjones2014/lighthaus.nvim'
  -- use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
  use 'doums/darcula'
  use "rebelot/kanagawa.nvim"

  use 'slim-template/vim-slim'



end)
