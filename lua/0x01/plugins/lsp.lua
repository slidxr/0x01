return {
	'neovim/nvim-lspconfig',
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"williamboman/mason.nvim",
		"folke/trouble.nvim",
		"rmagatti/goto-preview"
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"bashls",
				"clangd",
				"gopls",
				"rust_analyzer",
				"tsserver",
				"pylsp",
				"svelte",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup {}
				end,

				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup {
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" }
								}
							}
						}
					}
				end,
			},
		})
		require('goto-preview').setup()
	end
}
