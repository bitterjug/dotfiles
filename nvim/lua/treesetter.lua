require('nvim-treesitter.configs').setup {
  ensure_installed = { "typescript", "javascript", "elm", "json" },
  highlight = { enabled = true, },
}
