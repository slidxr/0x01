return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "current"
			},
		})
		vim.keymap.set('n', '<C-t>', ':Neotree toggle position=right<CR>', {
			noremap = true
		})
	end
}


