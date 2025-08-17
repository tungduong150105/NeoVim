return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			user_default_options = {
				names = false, -- Disable color names
				tailwind = "lsp", -- Enable Tailwind CSS support
				-- mode = "virtualtext", -- Use virtual text for color display
			},
		})
	end,
}
