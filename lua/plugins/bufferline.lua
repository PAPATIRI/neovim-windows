return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				always_show_bufferline = false,
			},
		})
		vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<s-tab>", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>x", ":bdelete!<cr>", { noremap = true, silent = true })
	end,
}
