return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin-mocha",
				disabled_filetypes = {
					statusline = {
						"alpha",
					},
				},
			},
		})
	end,
}
