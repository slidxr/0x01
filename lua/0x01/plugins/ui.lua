-- WIP
return {
	{
		'NvChad/nvim-colorizer.lua',
		config = function()
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
		config = function()
			require('lualine').setup({
			})
		end
	},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper',
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
						{
							icon = ' ',
							icon_hl = '@variable',
							desc = 'Files',
							group = 'Label',
							action = 'Telescope find_files',
							key = 'f',
						},
						{
							desc = ' Apps',
							group = 'DiagnosticHint',
							action = 'Telescope app',
							key = 'a',
						},
						{
							desc = ' dotfiles',
							group = 'Number',
							action = 'Telescope dotfiles',
							key = 'd',
						},
					},
				},
			}
		end,
	},
}
