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
				position = "right"
			}
		})
		vim.keymap.set('n', '<C-t>', ':Neotree toggle<CR>', {
			noremap = true
		})
	end
}


