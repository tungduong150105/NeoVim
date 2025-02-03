return {
	"akinsho/bufferline.nvim",
	lazy = false,
	keys = {
		{
			"<Tab>",
			"<Cmd>BufferLineCycleNext<CR>",
		},
		{
			"<S-Tab>",
			"<Cmd>BufferLineCyclePrev<CR>",
		},
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		})
	end,
}
