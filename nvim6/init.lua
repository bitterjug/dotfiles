local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

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
}


vim.cmd('PaqInstall')
vim.cmd('colorschem jitterbug')

-- neoscroll

local neoscroll = require 'neoscroll'
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

local lsp = require 'lspconfig' 
lsp.elmls.setup {
  init_options = {
    elmPath = ""
  },
  settings = {
    elmPath = ""
  }
}

-- neogit

local neogit = require 'neogit'
neogit.setup {}

-- 

