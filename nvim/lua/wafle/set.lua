-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.errorbells = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cmdheight = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.colorcolumn = "140"
vim.opt.hidden = true
vim.opt.shortmess:append("c")
vim.opt.shortmess:remove("F")
vim.opt.updatetime = 300
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.showmode = false 
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.splitright = true

vim.g.mapleader = " "