return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin-mocha",
				disabled_filetypes = {
					statusline = {
						"alpha",
						"NvimTree",
					},
				},
			},
		})
	end,
}
