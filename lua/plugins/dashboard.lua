return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local logo = [[
███████╗███████╗██╗   ██╗███████╗
╚══███╔╝██╔════╝██║   ██║██╔════╝
  ███╔╝ █████╗  ██║   ██║███████╗
 ███╔╝  ██╔══╝  ██║   ██║╚════██║
███████╗███████╗╚██████╔╝███████║
╚══════╝╚══════╝ ╚═════╝ ╚══════╝
    ]]

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				statusline = false,
			},
			config = {
				header = vim.split(logo, "\n"),
				center = {
					{
						action = "ene | startinsert",
						desc = " New File",
						icon = " ",
						key = "n",
					},
					{
						action = function()
							local telescope = require("telescope")
							local function telescope_buffer_dir()
								return vim.fn.stdpath("config")
							end

							telescope.extensions.file_browser.file_browser({
								cwd = telescope_buffer_dir(),
								respect_gitignore = false,
								hidden = true,
								grouped = true,
								previewer = false,
								initial_mode = "normal",
								layout_config = { height = 40 },
							})
						end,
						desc = " Config",
						icon = " ",
						key = "c",
					},
					{
						action = "Lazy",
						desc = "Lazy",
						icon = "󰒲  ",
						key = "l",
					},
					{
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
						desc = " Quit",
						icon = " ",
						key = "q",
					},
				},
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		return opts
	end,
}
