-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
-- Set alternate fill character for deleted lines in diffs
vim.opt.fillchars:append({ diff = "╱" })
vim.opt.wrap = false
