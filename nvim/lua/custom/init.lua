-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
-- Set alternate fill character for deleted lines in diffs
vim.opt.wrap = false
vim.go.diffopt = "internal,closeoff,filler,vertical,iwhiteall"
-- vim.go.number = false
-- Either turn off by default as above, or for particular buffers:
vim.api.nvim_create_autocmd("FileType", {
	pattern = "fugitive",
	callback = function()
		vim.wo.number = false
	end,
})
