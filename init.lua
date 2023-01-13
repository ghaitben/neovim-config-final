require "user.options"
require "user.colorscheme"
require "user.keymappings"
require "user.plugins"
require "user.nvim-tree"
require "user.nvim-treesitter"
require "user.lua-line"
require "user.git-signs"
require "user.lsp"
require "user.null-ls"

vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=330 }
augroup END
]])
