return require('packer').startup(function()

  use {'wbthomason/packer.nvim', opt = true}

  -- Aux {{{
  use 'andweeb/presence.nvim'
  use 'editorconfig/editorconfig-vim'
  use {
    'NTBBloodbath/rest.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('rest-nvim').setup()
    end
  }
  use 'iamcco/markdown-preview.nvim'
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }

  -- }}}

  -- Movement Expansion {{{
  use {
  'tpope/vim-surround',
    config = function()
      vim.g.surround_100 = "{{ \r }}"
      vim.g.surround_116 = "{{{ \r }}}"
    end
  }
  use 'notomo/gesture.nvim'
  use 'terryma/vim-multiple-cursors'
  use 'AndrewRadev/sideways.vim'
  use 'AndrewRadev/splitjoin.vim'
  use 'AndrewRadev/switch.vim'
  use 'bkad/CamelCaseMotion'
  -- }}}

  -- Syntax {{{
  use 'nvim-treesitter/nvim-treesitter'
  use 'mattn/emmet-vim'
  use 'cespare/vim-toml'
  use 'peitalin/vim-jsx-typescript'
  use 'styled-components/vim-styled-components'
  use 'evanleck/vim-svelte'
  use 'simrat39/rust-tools.nvim'
  use 'nanotee/sqls.nvim'
  -- }}}

  -- Syntax Helpers {{{
  use 'b3nj5m1n/kommentary'
  use 'luochen1990/rainbow'
  use 'folke/todo-comments.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'
  -- }}}

  -- LSP {{{
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'nvim-lua/completion-nvim',
      'kabouzeid/nvim-lspinstall',
      'hrsh7th/vim-vsnip',
      'hrsh7th/vim-vsnip-integ'
    }
  }
  -- }}}

  -- File Navigation {{{
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -- }}}

  -- GIT {{{
  use 'tpope/vim-fugitive'
  use 'f-person/git-blame.nvim'
  use { 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- }}}

  -- Style {{{
  use 'kyazdani42/nvim-web-devicons'
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
  }
  use {'edluffy/specs.nvim'}
  use 'Xuyuanp/scrollbar.nvim'
  use {
    'mhinz/vim-startify' ,
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
  }

  -- Themes
  use 'rafamadriz/neon'
  use 'marko-cerovac/material.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  use 'mhartington/oceanic-next'
-- }}}

end)
