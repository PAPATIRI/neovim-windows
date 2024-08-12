return {
	"rcarriga/nvim-notify",
	keys = {
		{
			"<leader>un",
			function()
				require("notify").dismiss({ silent = true, pending = true })
			end,
			desc = "Dismiss All Notifications",
		},
	},
	config = function()
		local notify = require("notify")
		notify.setup({
			stages = "static",
			timeout = 2000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		})

		-- Override the default notification function
		vim.notify = function(msg, level, opts)
			-- List of patterns to ignore
			local ignore_patterns = {
				"Buffer %d+",
				"Entering buffer",
				"Leaving buffer",
				"Entering tree",
				"Leaving tree",
				"%d+ more lines",
				"%d+ fewer lines",
				"%d+ lines yanked",
				-- Add more patterns as needed
			}

			-- Check if the message matches any ignore pattern
			for _, pattern in ipairs(ignore_patterns) do
				if msg:match(pattern) then
					return -- Ignore the notification
				end
			end

			-- If not ignored, send the notification
			notify(msg, level, opts)
		end
	end,
}
