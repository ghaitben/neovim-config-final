local options = {
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	signcolumn = "yes",
	mouse = "a", -- allow the mouse to be used in neovim
	showtabline = 0, -- always show tabs
	smartindent = true, -- make indenting smarter again
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 4 spaces for a tab
	number = true, -- set numbered lines
	guicursor = "i:block", -- make the cursor block in insert mode
	cursorline = true, -- highlight the current line
	scrolloff = 12,
	relativenumber=true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- disable LSP diagnostics
-- vim.diagnostic.disable()

-- set <leader> to <Space>
vim.g.mapleader = " "
