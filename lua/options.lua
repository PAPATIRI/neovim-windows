-- set leader key --
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- set clipboard options
vim.opt.clipboard = "unnamedplus"
-- set tab size
vim.opt.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- set powershell as default shell
vim.o.shell = "powershell.exe"

vim.o.shellxquote = ""
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
vim.o.shellquote = ""
vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
vim.o.shellredir = "| Out-File -Encoding UTF8 %s"

-- set relative line number
vim.o.relativenumber = true
-- set line break
vim.opt.breakindent = true
vim.opt.formatoptions:remove "t"
vim.opt.linebreak = true
-- set incremental search
vim.opt.incsearch = true
-- set terminal color
vim.opt.termguicolors = true
-- set scrolloff
vim.opt.scrolloff = 10
-- set misc
vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.opt.updatetime = 50
