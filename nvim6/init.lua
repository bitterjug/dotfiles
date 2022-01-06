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

-- Local helpers

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- Colorscheme

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

--  telescope

nmap("<c-p>", "<cmd>Telescope find_files<cr>")

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
