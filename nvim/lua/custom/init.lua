-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

-- turn off wrap by default
vim.opt.wrap = false
-- turn off line numbers by default
vim.opt.number = false
-- This puts the Fugitive window above which Im used to
vim.opt.splitbelow = false
-- Conceal level for obsidian -- shiould the be just in markdown files?
vim.opt.conceallevel = 2

vim.go.diffopt = "internal,closeoff,filler,vertical,iwhiteall"
-- vim.go.number = false
-- Either turn off by default as above, or for particular buffers:
vim.api.nvim_create_autocmd("FileType", {
	pattern = "fugitive",
	callback = function()
		vim.wo.number = false
	end,
})
