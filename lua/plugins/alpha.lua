return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {

				-- Disable hyper defaults (projects, mru, etc.)
				week_header = { enable = false },
				packages = { enable = false },
				project = { enable = false },
				mru = { enable = false },

				-- Custom layout for hyper theme with Naruto menu
				layout = {
					{ type = "padding", val = math.floor(vim.o.lines * 0.15) },

					{ type = "header" },
					{ type = "padding", val = 3 },

					{ type = "center" },
					{ type = "padding", val = 2 },

					{ type = "footer" },
				},

				-- Naruto header
				header = {
					"",
					" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
					" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
					" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
					" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
					" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"",
					"[ Believe It! - だってばよ ]",
					"",
				},

				-- Naruto menu (center)
				center = {
					{
						icon = "󱪼  ",
						icon_hl = "DashboardOrange",
						desc = "Find File",
						desc_hl = "DashboardDesc",
						key = "f",
						key_hl = "DashboardKey",
						action = "Telescope find_files",
					},
					{
						icon = "󱪼  ",
						icon_hl = "DashboardBlue",
						desc = "Recent Files",
						desc_hl = "DashboardDesc",
						key = "r",
						key_hl = "DashboardKey",
						action = "Telescope oldfiles",
					},
					{
						icon = "󱪼  ",
						icon_hl = "DashboardYellow",
						desc = "Find Word",
						desc_hl = "DashboardDesc",
						key = "g",
						key_hl = "DashboardKey",
						action = "Telescope live_grep",
					},
					{
						icon = "󱪼  ",
						icon_hl = "DashboardGreen",
						desc = "New File",
						desc_hl = "DashboardDesc",
						key = "n",
						key_hl = "DashboardKey",
						action = "enew",
					},
					{
						icon = "󱪼  ",
						icon_hl = "DashboardPurple",
						desc = "Config",
						desc_hl = "DashboardDesc",
						key = "c",
						key_hl = "DashboardKey",
						action = "edit ~/.config/nvim/init.lua",
					},
					{
						icon = "󱪼  ",
						icon_hl = "DashboardRed",
						desc = "Quit",
						desc_hl = "DashboardDesc",
						key = "q",
						key_hl = "DashboardKey",
						action = "quit",
					},
				},

				-- Footer
				footer = {
					"",
					"🍥 The path of a ninja is one who endures! 🍥",
				},
			},
		})

		-- Naruto color theme
		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#D08770" })
		vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#88C0D0", italic = true })

		-- Icon colors
		vim.api.nvim_set_hl(0, "DashboardOrange", { fg = "#D08770" })
		vim.api.nvim_set_hl(0, "DashboardBlue", { fg = "#5E81AC" })
		vim.api.nvim_set_hl(0, "DashboardYellow", { fg = "#EBCB8B" })
		vim.api.nvim_set_hl(0, "DashboardGreen", { fg = "#A3BE8C" })
		vim.api.nvim_set_hl(0, "DashboardPurple", { fg = "#B48EAD" })
		vim.api.nvim_set_hl(0, "DashboardRed", { fg = "#BF616A" })

		-- Text colors
		vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#D8DEE9" })
		vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#EBCB8B", bold = true })
	end,

	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
