return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	version = "v0.*",
	opts = {
		keymap = {
			preset = "enter",
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "normal",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			cmdline = {},
		},
		completion = {
			documentation = {
				auto_show = true,
				window = { border = "single" },
			},
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } },
					components = {
						kind_icon = {
							ellipsis = false,
							text = function(ctx)
								return require("lspkind").symbolic(ctx.kind, {
									mode = "symbol",
								})
							end,
						},
					},
				},
				auto_show = function(ctx)
					return ctx.mode ~= "cmdline"
				end,
			},
		},
	},
	opts_extend = { "sources.default" },
}
