vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	filters = {
    		dotfiles = true,
  	},
	open_on_setup = true,
	open_on_setup_file = true,
})
