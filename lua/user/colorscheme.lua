require("tokyonight").setup({
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = false },
		keywords = { italic = false },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows

		on_colors = function(colors)
		end
	},
})

vim.cmd "colorscheme tokyonight-night"

vim.cmd "highlight IndentBlankLineChar guifg=#262626"
vim.cmd "highlight IndentBlankLineSpaceChar guifg=white"

vim.cmd "highlight GitGutterAdd guifg=#00ff00 guibg=none"
vim.cmd "highlight GitGutterChange guifg=yellow guibg=none"
vim.cmd "highlight GitGutterDelete guifg=red guibg=none"
vim.cmd "highlight GitGutterChangeDelete guifg=orange guibg=none"

vim.cmd "highlight MatchParen ctermfg=256 ctermbg=21 guifg=white guibg=blue gui=bold"

vim.cmd "highlight NvimTreeCursorLine guibg=#292e42"
vim.cmd "highlight CursorLine guibg=none"

vim.cmd "highlight Visual term=reverse ctermbg=21 guibg=blue ctermfg=256 cterm=bold"

vim.cmd "highlight WinSeparator  guifg=white"
vim.cmd "highlight nvimTreeWinSeparator guifg=white"
