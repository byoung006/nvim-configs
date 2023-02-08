
require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'ThePrimeagen/vim-be-good'
  use 'neovim/nvim-lspconfig'
  use 'MunifTanjim/prettier.nvim'
  use('theprimeagen/harpoon')
  use 'nvim-tree/nvim-web-devicons'
  use("github/copilot.vim")
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
}
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
  -- Theme inspired by Atom
  -- use 'joshdick/onedark.vim'
  --
 use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
   use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
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
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}


require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "d", action = "dir_down" },
        { key = "<c-t>", action = "tabnew" },
        { key = "c", action = ":NvimTreeFocus<cr>" },
        { key = "<leader>v", action = "vsplit" },
        { key = "<leader>h", action = "split" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

  if install_plugins then
    require('packer').sync()
  end
end)

