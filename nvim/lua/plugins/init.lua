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
end)
