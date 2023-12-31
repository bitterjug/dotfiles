local null_ls = require("null-ls")

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
	b.formatting.prettier.with({
		filetypes = {
			-- so prettier works only on these filetypes
			"css",
			"html",
			"markdown",
		},
	}),

	-- Lua
	b.formatting.stylua,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
