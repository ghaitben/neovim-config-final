local configs = require("nvim-treesitter.configs")

configs.setup {
	ensure_installed = { "cpp", "lua", "python", "java", "rust", "javascript"},
	sync_install = true,
	highlight = {
		enable = true,
		disable = {"python"},
	},
	additional_vim_regex_highlighting = true,
}
