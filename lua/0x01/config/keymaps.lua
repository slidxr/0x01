local map = vim.keymap.set
vim.g.mapleader = " "

-- Moving between windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Moving between buffers
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Version control: neogit
map("n", "<leader>vc", "<cmd>Neogit<CR>")


-- [1] LSP
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
		-- goto-preview
		map("n", "<space>D",
			"<cmd>lua require('goto-preview').goto_priew_type_definition()<CR>",
			{ noremap = true })
		map("n", "gd",
			"<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
		map("n", "gi",
			"<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
			{ noremap = true })
		map("n", "gD",
			"<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
		map("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>",
			{ noremap = true })
		map("n", "gr",
			"<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })

		-- nvim-lspconfig
		local opts = { buffer = ev.buf }
		map('n', 'K', vim.lsp.buf.hover, opts)
		map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
		map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
		map('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		map('n', '<space>rn', vim.lsp.buf.rename, opts)
		map({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		map('n', '<space>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
	end,
})

-- trouble
map("n", "<leader>xx", function() require("trouble").toggle() end)

-- [2] Telescope
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
