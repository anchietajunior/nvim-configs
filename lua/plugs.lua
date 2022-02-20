require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-fugitive' -- Git commands
  use 'vim-airline/vim-airline' -- airline
  use 'vim-airline/vim-airline-themes' -- airline
  use 'rhysd/vim-grammarous' -- grammar check
  use 'bronson/vim-trailing-whitespace' -- highlight trailing spaces
  use 'rstacruz/vim-closer'

  use { 'lewis6991/gitsigns.nvim', -- git added/removed in sidebar + inline blame
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup({
        current_line_blame = false
      })
    end
  }

  -- general dev
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
	}

  use 'tami5/lspsaga.nvim'
  use 'hrsh7th/nvim-compe' -- compe
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'scrooloose/nerdcommenter' -- commenting shortcuts
  use 'kyazdani42/nvim-web-devicons'
  use 'tpope/vim-surround'
	use 'morhetz/gruvbox'
  --use "rebelot/kanagawa.nvim"

  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'mhinz/vim-signify'
  use 'ryanoasis/vim-devicons'


  -- ruby
  use 'tpope/vim-rails'
  use 'ecomba/vim-ruby-refactoring'
  use 'tpope/vim-endwise'

   -- testing
  use 'kassio/neoterm' -- terminal wrapper
  use 'janko-m/vim-test' -- testing commands
	use 'rlue/vim-fold-rspec' -- folding rspec

  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = { "ruby" }
    }
  }

  require'lspsaga'.init_lsp_saga {
    error_sign = '!',
    warn_sign = '^',
    hint_sign = '?',
    infor_sign = '~',
    border_style = "round",
    code_action_prompt = {
      enable = false
    }
  }

  require'nvim-web-devicons'.setup {
	 -- your personnal icons can go here (to override)
	 -- you can specify color or cterm_color instead of specifying both of them
	 -- DevIcon will be appended to `name`
	 override = {
	  zsh = {
	    icon = "",
	    color = "#428850",
	    cterm_color = "65",
	    name = "Zsh"
	  }
	 };
	 -- globally enable default icons (default to false)
	 -- will get overriden by `get_icons` option
	 default = true;
	}

	use 'romgrk/barbar.nvim'

  -- search
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }

	use 'SirVer/ultisnips'
end)
