-- Move highlighted lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- exit from insert mode
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
-- keymap pindah pindah window
-- pindah ke kanan
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
-- pindah ke kiri
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- pindah ke bawah
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
-- pindah ke atas
vim.keymap.set("n", "<C-k>", "<C-w>k", {})

-- keymap untuk indent
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- escape terminal mode
vim.keymap.set("t", "<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true))

-- line number
-- toggle lineNumber
vim.keymap.set("n", "<leader>n", "<cmd> set nu! <CR>")
-- toggle relativelinenumber
vim.keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>")

-- buffer management
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")

-- matiin shift Q
vim.keymap.set("n", "Q", "<nop>")

-- biar text gak terlalu mepet ke bawah pas scroll
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- biar text gak terlalu mepet ke atas pas scroll
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "J", "mzJ`z")
