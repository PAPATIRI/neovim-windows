return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup()
		-- ini terminal mode
		-- toggle floating terminal
		-- vim.keymap.set("t", "<A-i>", function()
		-- 	require("nvterm.terminal").toggle("float")
		-- end, {})
		vim.keymap.set("t", "<leader>ft", function()
			require("nvterm.terminal").toggle("float")
		end, {})

		-- toggle terminal horizontal
		-- vim.keymap.set("t", "<A-h>", function()
		-- 	require("nvterm.terminal").toggle("horizontal")
		-- end, {})
		vim.keymap.set("t", "<leader>th", function()
			require("nvterm.terminal").toggle("horizontal")
		end, {})

		-- toggle terminal vertical
		-- vim.keymap.set("t", "<A-v>", function()
		-- 	require("nvterm.terminal").toggle("vertical")
		-- end, {})
		vim.keymap.set("t", "<leader>tv", function()
			require("nvterm.terminal").toggle("vertical")
		end, {})

		-- ini normal mode
		-- toggle floating terminal
		-- vim.keymap.set("n", "<A-i>", function()
		-- 	require("nvterm.terminal").toggle("float")
		-- end, {})
		vim.keymap.set("n", "<leader>ft", function()
			require("nvterm.terminal").toggle("float")
		end, {})

		-- toggle terminal horizontal
		-- vim.keymap.set("n", "<A-h>", function()
		-- 	require("nvterm.terminal").toggle("horizontal")
		-- end, {})
		vim.keymap.set("n", "<leader>th", function()
			require("nvterm.terminal").toggle("horizontal")
		end, {})

		-- toggle terminal vertical
		-- vim.keymap.set("n", "<A-v>", function()
		-- 	require("nvterm.terminal").toggle("vertical")
		-- end, {})
		vim.keymap.set("n", "<leader>tv", function()
			require("nvterm.terminal").toggle("vertical")
		end, {})
	end,
}
