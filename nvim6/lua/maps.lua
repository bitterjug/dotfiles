-- Local helpers
local maps = {}

function maps.map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command,
    { noremap = true
    , silent = true
    }
  )
end

function maps.normal(shortcut, command)
  maps.map('n', shortcut, command)
end

function maps.insert(shortcut, command)
  maps.map('i', shortcut, command)
end

function maps.terminal(shortcut, command)
  maps.map('t', shortcut, command)
end
