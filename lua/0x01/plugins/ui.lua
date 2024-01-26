-- WIP
return {
	{
		'NvChad/nvim-colorizer.lua',
		config = function ()
			require('colorizer').setup({
				user_default_options = {
					names = false,
					tailwind = true
				}
			})
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function ()
			require('lualine').setup({
			})
		end
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
			}
		end,
	},
}
