-- Enable relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Showing the mode below the statusline
vim.opt.showmode = true

-- Set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable auto indenting and set its to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Enable smart indenting
vim.opt.breakindent = true
vim.opt.ai = true
vim.opt.si = true

-- Enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Disable text wrap
vim.opt.wrap = false

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Enable ingnorecase and smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease updatetime to 250ms
vim.opt.updatetime = 250

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable the sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamedplus"

-- Always keep 8 line above/below cursor unless at start/end of file
vim.opt.scrolloff = 8
