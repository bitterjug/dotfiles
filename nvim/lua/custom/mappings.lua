---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["-"] = { "<cmd> NvimTreeFindFileToggle!<CR>", "Find file in tree view" },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.diffview = {
	n = {
		["<leader>gd"] = { "<cmd> DiffviewOpen --imply-local<CR>", "Diff view" },
		["<leader>gc"] = { "<cmd> DiffviewClose <CR>", "Close diff view  " },
	},
}

M.disabled = {
	n = {
		["<leader>h"] = "",
		["<leader>v"] = "",
		["<leader>e"] = "",
	},
}

-- more keybinds!

return M
