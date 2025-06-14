return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				cpp = { "clang-format" },
				-- cpp = { "astyle" },
				-- ruby = { "rubyfmt" },
				ruby = { "rubocop" },
				java = { "clang-format" },
			},
		})

		require("conform").formatters.astyle = {
			env = {
				ASTYLE_CONFIG = vim.fn.expand("~/.astylerc"),
			},
		}

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
