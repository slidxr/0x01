return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		term_color = true,
		transparent_background = false,
		integrations = {
			telescope = true,
			mason = true,
			neotest = true,
		},
		color_overrides = {
			mocha = {
				rosewater = "#ffc9c9",
				flamingo = "#ff9f9a",
				pink = "#ffa9c9",
				mauve = "#df95cf",
				lavender = "#a990c9",
				red = "#ff6960",
				maroon = "#f98080",
				peach = "#f9905f",
				yellow = "#f9bd69",
				green = "#b0d080",
				teal = "#a0dfa0",
				sky = "#a0d0c0",
				sapphire = "#95b9d0",
				blue = "#89a0e0",
				text = "#e0d0b0",
				subtext1 = "#d5c4a1",
				subtext0 = "#bdae93",
				overlay2 = "#928374",
				overlay1 = "#7c6f64",
				overlay0 = "#665c54",
				surface2 = "#403c3a",
				surface1 = "#6b6461",
				surface0 = "#252525",
				base = "#11171a",
				mantle = "#11171a",
				crust = "#11171a",
			},
		},
	},
	config = function(_, opts)
		require('catppuccin').setup(opts)
		vim.cmd.colorscheme 'catppuccin-mocha'
	end
}
