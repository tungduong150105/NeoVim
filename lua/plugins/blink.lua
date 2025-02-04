return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
			"giuxtaposition/blink-cmp-copilot",
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
				default = { "lsp", "path", "snippets", "buffer", "copilot" },
				cmdline = {},
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-cmp-copilot",
						score_offset = 100,
						async = true,
						transform_items = function(_, items)
							local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
							local kind_idx = #CompletionItemKind + 1
							CompletionItemKind[kind_idx] = "Copilot"
							for _, item in ipairs(items) do
								item.kind = kind_idx
							end
							return items
						end,
					},
				},
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
	},
	{
		"onsails/lspkind.nvim",
		config = function()
			local lspkind = require("lspkind")
			lspkind.init({
				symbol_map = {
					Copilot = "",
				},
			})

			vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
		end,
	},
}
