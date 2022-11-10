local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal

local toggle_float = function ()
	local floating = Terminal:new({direction = "float"})
	return floating:toggle()
end

local mappings = {
	s = { "<cmd>w<cr>", "Save" },
	S = { "<cmd>wq<cr>", "Save & Quit" },
	f = { "<cmd>Telescope find_files hidden=true<cr>", "Find files" },
	r = { "<cmd>Telescope live_grep hidden=true<cr>", "Live grep" },
	b = { "<cmd>Telescope buffers<cr>", "Buffers" },
	j = { "<cmd>bp<cr>", "Next buffer" },
	k = { "<cmd>bn<cr>", "Previous buffer" },
	t = { toggle_float, "Open a floating terminal" }

}

local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
