return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'Mofiqul/dracula.nvim' }
	use { 'glepnir/dashboard-nvim' }
	use {  'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'nvim-telescope/telescope-file-browser.nvim' }
	use { 'vim-python/python-syntax' }
	use { 'BurntSushi/ripgrep' }
	use { 'sharkdp/fd' }
	use { 'nvim-tree/nvim-tree.lua', requires = { {'nvim-tree/nvim-web-devicons'} } }
	--use { 'folke/which-key.nvim', config = function() require('which-key').setup {} end }
	use { 'folke/which-key.nvim', event = 'BufWinEnter', config = "require('which-key-config')" }
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
	use { 'nvim-treesitter/nvim-treesitter' }
	use { 'brenoprata10/nvim-highlight-colors' }
	use { 'neovim/nvim-lspconfig' }
	use { 'windwp/nvim-autopairs',config = function() require('nvim-autopairs').setup {} end }
	use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'lukas-reineke/indent-blankline.nvim' }
	use { 'samodostal/image.nvim', requires = 'nvim-lua/plenary.nvim' }
	use { 'akinsho/toggleterm.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-vsnip' }
	use { 'hrsh7th/vim-vsnip' }
	use { 'simrat39/rust-tools.nvim' }
	use { "catppuccin/nvim", as = "catppuccin" }
end)
