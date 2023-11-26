-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
	Comment = { italic = true },
	DiffAdd = { bg = "#222a22", fg = "NONE" },
	DiffAdded = { bg = "#3a3a3a", fg = "NONE" },
	DiffDelete = { bg = "#1c0909", fg = "NONE" },
	DiffChange = { bg = "#20202e", fg = "NONE" },
	Substitute = { fg = "black2", bg = "cyan" },
}

---@type HLTable
M.add = {
	NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
