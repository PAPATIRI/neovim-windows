return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	requires = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                                                 ",
			"         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ⠀                      ⠀⣀⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
			"⠀⠀⠀⠀         ⠀⠀⠀⠀⠀                  ⠀⠀        ⣠⣾⣿⣿⣿⣿⣿⣿⣆⠀⢀⣀⣀⣤⣤⣤⣶⣦⣤⣤⣄⣀⣀⠀⢠⣾⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀   ",
			" ⠀⠀⠀⠀⠀⠀                           ⠀⠀        ⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀   ",
			"  ⠀⠀⠀⠀⠀⠀                                   ⠀⠀⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀    ",
			"⠀  ⠀⠀⠀                                   ⠀⠀⠀⠀⢻⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀    ",
			"     ⠀⠀                            ⠀⠀⠀    ⠀⠀⠀⠈⠻⢿⣿⠟⠀⠀⠀⠀⠀⣀⣤⣤⣤⡀⠀⠀⠀⠀⠀⢀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠘⣿⡿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀   ",
			"          ⠀⠀ ⠀⠀      ⠀  ⠀⠀    ⠀⠀⠀⠀            ⠀⢠⡟⠀⠀⠀⠀⣠⣾⣿⣿⠛⣿⡇⠀⠀⠀⠀⠀⢸⣿⣿⠛⣿⣿⣦⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀    ",
			" ⠀⠀⠀  ⠀⠀           ⠀    ⠀                    ⠀⠀⣼⠁⠀⠀⠀⠀⣿⣿⣿⣿⣿⡟⢠⣶⣾⣿⣿⣷⣤⢹⣿⣿⣿⣿⣿⡇⠀⠀⣀⣤⣿⣷⣴⣶⣦⣀⡀⠀⠀⠀⠀   ",
			" ⠀⠀       ⠀⠀                             ⠀⢀⣠⣤⣤⣤⣇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠘⠻⣿⣿⣿⡿⠋⠀⢹⣿⣿⣿⣿⡇⠀⣿⣿⣿⡏⢹⣿⠉⣿⣿⣿⣷⠀⠀⠀   ",
			"                    ⠀                  ⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠹⣿⣿⠿⠋⠀⢤⣀⢀⣼⡄⠀⣠⠀⠈⠻⣿⣿⠟⠀⢸⣿⣇⣽⣿⠿⠿⠿⣿⣅⣽⣿⡇⠀⠀   ",
			"⠀                                      ⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣟⠁⠀⠀⠀⠈⣿⣿⣿⡇⠀⠀⠀  ",
			"                                   ⠛⠛⠛⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛",
			"                              ⠀     ⠀⠀⠀⠀⠘⠛⠻⢿⣿⣿⣿⣿⣿⠟⠛⠁⠀⠀▀▀█ █▀▀█ █▀▀▄ █▀▀ █▀▀ █▀▀█ █▀▀▄ █▀▀ ⠀                                   ",
			"                                                      ▄▀─ █▄▄█ █──█ █── █── █──█ █──█ █▀▀  ",
			"                                                      ▀▀▀ ▀──▀ ▀──▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀▀▀─ ▀▀▀  ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "󱇧  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰱼  > Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "󰤘  > Recent", ":SessionManager load_last_session<CR>"),
			dashboard.button("s", "󱑆  > Session", ":SessionManager load_session<CR>"),
			dashboard.button("l", "󰒲  > Lazy", ":Lazy<CR>"),
			dashboard.button("c", "  > Config", ":e ~/AppData/Local/nvim/<CR>"),
			dashboard.button("q", "󰿅  > Quit NVIM", ":qa<CR>"),
		}

		local function footer()
			return "Syarif Ganteng 🐼"
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true

		-- Disable mini.indentscope for alpha
		vim.api.nvim_create_autocmd("User", {
			pattern = "AlphaReady",
			callback = function()
				vim.b.miniindentscope_disable = true
				if pcall(require, "mini.indentscope") then
					require("mini.indentscope").undraw()
				end
			end,
		})

		alpha.setup(dashboard.opts)
		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
