return {
	"folke/which-key.nvim",
	opts = {
		spec = {
			{ "<BS>", desc = "Decrement Selection", mode = "x" },
			{ "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
		},
		disable = {
			filetypes = { "nvterm", "Nvterm", "NvTerm", "terminal", "term" },
			buftypes = { "nvterm", "Nvterm", "NvTerm", "terminal", "term" },
		},
	},
}
