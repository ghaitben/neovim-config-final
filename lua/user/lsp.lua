local lsp_installer = require("nvim-lsp-installer")
local lsp_config = require("lspconfig")
lsp_installer.setup {}


local on_attach = function(client)
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		virtual_text = false,
		underline = false,
	}

	vim.diagnostic.config(config)

	if client.name == "tsserver" then
		client.resolved_capabilities.document_formatting = false
	end

end

lsp_config.sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			}
		}
	}
}

lsp_config.tsserver.setup {
	on_attach = on_attach,
}
