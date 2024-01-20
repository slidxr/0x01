return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		config = function()
			vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
			vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
			vim.opt.termguicolors = true
			require("bufferline").setup{}
		end
	},
	'nvim-tree/nvim-web-devicons',
}
