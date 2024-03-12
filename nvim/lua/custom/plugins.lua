local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	{
		"karb94/neoscroll.nvim",
		event = { "BufReadPre", "BufNewFile" },

		config = function()
			require("neoscroll").setup({
				-- easing_function = "quartic",
			})
		end,
	},

	{
		"lfv98/interestingwords.nvim",
		enabled = false,
		config = function()
			require("interestingwords").setup({
				colors = {
					"#0a7383",
					"#a07040",
					"#4070a0",
					"#40a070",
					"#70a040",
					"#0070e0",
					"#007020",
					"#d4a00d",
					"#06287e",
					"#5b3674",
					"#4c8f2f",
					"#1060a0",
					"#a0b0c0",
					"#aeee00",
					"#ff0000",
					"#0000ff",
					"#b88823",
					"#ffa724",
					"#ff2c4b",
				},
				search_count = true,
				navigation = true,
				search_key = "<leader>ms",
				cancel_search_key = "<leader>mM",
				color_key = "<leader>mm",
				cancel_color_key = "<leader>mn",
			})
		end,
		event = "VeryLazy",
	},

	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					elm = { "elm_format" },
					rust = { "rustfmt" },
				},
				format_on_save = {
					-- These options will be paspused to conform.format()
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	},
	{
		"NvChad/nvcommunity",
		{ import = "nvcommunity.git.diffview" },
		{ import = "nvcommunity.diagnostics.trouble" },
		{ import = "nvcommunity.folds.ufo" },
		{ import = "nvcommunity.lsp.barbecue" },
		{ import = "nvcommunity.editor.symbols-outline" },
		-- Install manually to set custom key maps
		--		{ import = "nvcommunity.folds.origami" },
	},
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
	{
		"chrisgrieser/nvim-origami",
		event = "BufReadPost",
		opts = {
			keepFoldsAcrossSessions = true,
			pauseFoldsOnSearch = true,
			setupFoldKeymaps = false,
		},
    -- stylua: ignore
		keys = {
			{ "l", mode = { "n" }, function() require("origami").l() end, desc = "Unfold line", },
			{ "H", mode = { "n" }, function() require("origami").h() end, desc = "Fold line", },
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFileToggle" },
	},
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {
			"sindrets/diffview.nvim",
			config = function()
				-- Set alternate fill character for deleted lines in diffs
				vim.opt.fillchars:append({ diff = "╱" })
			end,
		},
	},
	{
		"LhKipp/nvim-nu",
		build = ":TSInstall nu",
		ft = "nu",
	},
	{
		-- Disabled because clashes with built in lsp config
		enabled = false,
		"simrat39/rust-tools.nvim",
		after = "nvim-lspconfig",
		ft = "rust",
		config = function()
			require("rust-tools").setup({})
		end,
	},
	{
		"cseickel/diagnostic-window.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		ft = "elm",
		cmd = { "DiagWindowShow" },
	},
	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },
	--

	-- All NvChad plugins are lazy-loaded by default
	-- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
	-- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
	-- {
	--   "mg979/vim-visual-multi",
	--   lazy = false,
	-- }
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		cmd = {
			"ObsidianOpen",
			"ObsidianQuickSwitch",
			"ObsidianNew",
			"ObsidianSearch",
			"ObsidianTemplate",
			"ObsidianToday",
			"ObsidianTomorrow",
			"ObsidianYesterday",
			"ObsidianDailies",
			"ObsidianTags",
		},
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "default",
					path = "~/Documents/vim-notes",
				},
			},

			-- see below for full list of options 👇
			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "diary",
				-- Optional, if you want to change the date format for the ID of daily notes.
				-- date_format = "%Y-%m-%d",
				-- Optional, if you want to change the date format of the default alias of daily notes.
				-- alias_format = "%B %-d, %Y",
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				-- template = nil,
			},
		},
	},
}

return plugins
