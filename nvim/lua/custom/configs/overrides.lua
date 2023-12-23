local M = {}

M.treesitter = {
	ensure_installed = {
		"c",
		"css",
		"elm",
		"html",
		"javascript",
		"lua",
		"markdown",
		"markdown_inline",
		"rust",
		"tsx",
		"typescript",
		"vim",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettier",

		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- Elm dev
		"elm-format",
		"elm-language-server",

		-- Rust stuff
		"rust-analyzer",
	},
}

-- nvimtree
local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return {
			desc = "nvim-tree" .. desc,
			buffer = bufnr,
			noremap = true,
			silent = true,
			nowait = true,
		}
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "h", api.node.navigate.parent, opts("Parent"))
	vim.keymap.set("n", "H", api.tree.change_root_to_parent, opts("cd to parent"))
	vim.keymap.set("n", "-", api.tree.toggle, opts("Toggle tree"))
end

M.nvimtree = {
	-- git support in nvimtree
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},

	on_attach = my_on_attach,
}

return M
