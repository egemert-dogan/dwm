local db = require('dashboard')

db.custom_header = {
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    '',
		    [[███    ██ ██    ██ ██ ███    ███]],
		    [[████   ██ ██    ██ ██ ████  ████]],
		    [[██ ██  ██ ██    ██ ██ ██ ████ ██]],
		    [[██  ██ ██  ██  ██  ██ ██  ██  ██]],
		    [[██   ████   ████   ██ ██      ██]],
		    '',
}

db.custom_center = {
	{
		icon = "漣",
		desc = "Configure NVim Config		",
		action = "edit ~/.config/nvim/init.lua",
	},
	{
		icon = "淪",
		desc = "Load Sessions			",
		action = "SessionLoad",
	},
	{
		icon = "  ",
		desc = "Find Recent Files		",
		action = "Telescope oldfiles hidden=true",
	},
	{
		icon = " ",
		desc = "Find A Word			",
		action = "Telescope live_grep hidden=true",
	}
}

db.custom_footer = { "", "Write programs that do one thing and do it well - Unix Philosophy" }
db.session_directory = "/home/sad/.config/nvim/session"
db.footer_pad = 17

vim.cmd [[hi DashBoardHeader guifg=#bd93f9]]
