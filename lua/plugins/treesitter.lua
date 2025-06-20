return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"tsx",
				"toml",
				"php",
				"json",
				"yaml",
				"swift",
				"css",
				"html",
				"lua",
				"ruby",
				"cpp",
				"java",
			},
			auto_install = true,
			highlight = {
				enable = true,
				use_languagetree = true,
			},
			indent = { enable = true },
		})
	end,
}
