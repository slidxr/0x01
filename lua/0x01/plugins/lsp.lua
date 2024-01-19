return {
	'neovim/nvim-lspconfig',
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"williamboman/mason.nvim",
	},
	config = function()
		vim.lsp.set_log_level("debug")
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
				"gopls",
				"rust_analyzer",
				"jdtls",
				"tsserver",
				"pylsp",
				"svelte",
				"tailwindcss",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup{}
				end
			},
		})

	end
}

