return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {--[[ things you want to change go here]]
		direction = "float",
		float_opts = {
			border = "curved",
			-- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
			width = 100,
			height = 25,
			winblend = 3,
			title_pos = "center",
		},
	},
}
