return {
"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
	config = function()
		require("solarized-osaka").setup({
			on_highlights = function(hl, c)
				hl.TelescopeNormal = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopeBorder = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopePromptNormal = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopePromptBorder = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopePromptTitle = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopePreviewTitle = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
				hl.TelescopeResultsTitle = {
					bg = c.bg_dark,
					fg = c.fg_dark,
				}
			end,
		})
		vim.cmd([[colorscheme solarized-osaka]])
	end,
}
