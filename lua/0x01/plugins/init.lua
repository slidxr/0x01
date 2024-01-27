return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		config = function()
			require("bufferline").setup {}
		end
	},
	'nvim-tree/nvim-web-devicons',
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		},
		lazy = false,
	},
}
