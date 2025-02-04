return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				indent = {
					char = "│",
					tab_char = "│",
				},
				scope = {
					enabled = false,
					show_start = false,
					show_end = false,
				},
			})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		config = function()
			require("mini.indentscope").setup({
				symbol = "│",
				options = { try_as_border = true },
				draw = { delay = 200 },
				vim.api.nvim_create_autocmd("FileType", {
					pattern = {
						"lazy",
						"mason",
						"notify",
					},
					callback = function()
						vim.b.miniindentscope_disable = true
					end,
				}),
			})
		end,
	},
}
