local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

-- Paq

require "paq" {
  "savq/paq-nvim";                  -- Let Paq manage itself
  "karb94/neoscroll.nvim";
  -- "nvim-treesitter/nvim-treesitter";
  "bitterjug/vim-colors-bitterjug";
  "neovim/nvim-lspconfig";
  "kyazdani42/nvim-web-devicons";
  "kyazdani42/nvim-tree.lua";

  -- neogit
  "nvim-lua/plenary.nvim";
  "TimUntersberger/neogit";

  -- telescope (requires plenary too)
  "nvim-telescope/telescope.nvim",
}


vim.cmd('PaqInstall')

local maps =  require("lua.maps")
require("lua.bindings")

-- Colorscheme

vim.cmd('colorschem jitterbug')

-- NvimTree
-- see options here: https://github.com/kyazdani42/nvim-tree.lua
require('nvim-tree').setup()

-- neoscroll

local neoscroll = require('neoscroll')
neoscroll.setup {
  easing_function = "quadratic"
}

-- treesitter

--[[
local ts = require 'nvim-treesitter.configs'
ts.setup
  { ensure_installed = 'maintained',
    highlight = {enable = true}
  }
]]

-- lsp

local lsp = require('lspconfig')
lsp.elmls.setup {
}

--[[ {
  init_options = {
    elmPath = ""
  },
  settings = {
    elmPath = ""
  }
}
]]

-- neogit

local neogit = require('neogit')
neogit.setup {}

--  telescope

maps.normal("<c-p>", "<cmd>Telescope find_files<cr>")

require('telescope').setup()
