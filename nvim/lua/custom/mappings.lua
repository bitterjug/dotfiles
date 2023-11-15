---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.diffview = {
	n = {
		["<leader>gd"] = { "<cmd> DiffviewOpen <CR>", "Git diff view" },
		["<leader>gc"] = { "<cmd> DiffviewClose <CR>", "Close diff view  " },
	},
}

M.disabled = {
	n = {
		["<leader>h"] = "",
		["<leader>v"] = "",
	},
}

-- more keybinds!

return M
