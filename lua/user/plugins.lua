-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
        -- Have packer manage itself
	use({ "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" })
        
	-- NvimTree plugin
	use({ "kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" })

	-- Fzf for lua
	use({ "ibhagwan/fzf-lua", commit = "95c859b4e4d90bd275bc4ba70da6b1e04118cec1" })

	-- auto pairs and vim-surround
	--use({ 'jiangmiao/auto-pairs', commit = "39f06b873a8449af8ff6a3eee716d3da14d63a76" })
	use({ "tpope/vim-surround", commit = "bf3480dc9ae7bea34c78fbba4c65b4548b5b1fea" })

	-- Treesitter plugin
	use({ "nvim-treesitter/nvim-treesitter", commit = "518e27589c0463af15463c9d675c65e464efc2fe" })

	-- LuaLine
	use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	commit = 'abb03129e0b0b7f4c992b1b4c98245cd4422e7d5' })

	-- GitSigns
	use({ 'lewis6991/gitsigns.nvim', commit = '21ab05c2629ef613b1c3452d12469f936855648b' })

	-- IndentBlankLines
	use({ 'lukas-reineke/indent-blankline.nvim', commit = "c4c203c3e8a595bc333abaf168fcb10c13ed5fb7" })

	-- Null-ls
	use({ 'jose-elias-alvarez/null-ls.nvim', commit = "07d4ed4c6b561914aafd787453a685598bec510f" })
	use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" })

	-- Lsp Plugins
	use({ "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" })
	use({ "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" })

	-- Custom colorscheme
	use({ "ghaitben/miloudi-colorscheme", commit = "e382e7cd3436e892db698172a65d1397d9465815" })


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
