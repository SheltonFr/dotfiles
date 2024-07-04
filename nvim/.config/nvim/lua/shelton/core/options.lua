local opt = vim.opt

-- Left column and similar settings
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 12
opt.sidescrolloff = 8

-- Tab spacing/behavior
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.breakindent = true

-- General Behaviors
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
opt.backup = false
opt.clipboard = "unnamedplus"
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.showmode = false
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 1000
opt.undofile = true
opt.writebackup = false
opt.cursorline = true
opt.swapfile = false

-- Searching Behaviors
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- Session Management
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Apppearance
vim.diagnostic.config {
  float = { border = "rounded" },
}

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Consider - as part of keyword
opt.iskeyword:append("-")

-- Disable the mouse while in nvim
opt.mouse = ""
opt.updatetime = 50
opt.colorcolumn = "80"
