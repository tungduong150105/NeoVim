-- Enable relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Show the mode below the statusline
vim.opt.showmode = true

-- Set tabs to TWO spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable smart indenting
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Disable text wrap
vim.opt.wrap = false

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable ignorecase and smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease updatetime to 250ms
vim.opt.updatetime = 250

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamedplus"

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menu", "menuone", "noselect" }
