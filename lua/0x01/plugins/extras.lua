return {
	{
		'mbbill/undotree'
	},
	{
		"ray-x/go.nvim",
		config = function()
			require("go").setup()
			-- Run gofmt on save

			local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.go",
				callback = function()
					require('go.format').gofmt()
				end,
				group = format_sync_grp,
			})
		end,
		event = { "CmdlineEnter" },
		ft = { "go", 'gomod' },
	},
}
