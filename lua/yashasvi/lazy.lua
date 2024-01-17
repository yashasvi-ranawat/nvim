local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'lifepillar/vim-solarized8',
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    'mbbill/undotree',
    'tpope/vim-fugitive',
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
      dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
    },
    'eandrju/cellular-automaton.nvim',
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'nvim-treesitter/nvim-treesitter-context',
    {
    "folke/trouble.nvim",
     dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
            -- your configuration comes here
            --   -- or leave it empty to use the default settings
            --     -- refer to the configuration section below
             },
    },
    'ojroques/nvim-osc52',  -- osc52 copy for ssh, remove after nvim 0.10.0
}

local opts = {
}

require("lazy").setup(plugins, opts)
