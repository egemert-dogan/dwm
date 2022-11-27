vim.cmd [[autocmd BufEnter * TSEnable highlight ]]

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "rust", "c", "cpp", "lua" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
