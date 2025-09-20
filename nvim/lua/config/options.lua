local opt = vim.opt

-- Session Management
opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Identation
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Line Wrapping
opt.wrap = false
opt.breakindent = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Preview substitutions
opt.inccommand = 'split'

-- Cursor Line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.showmode = true
vim.diagnostic.config {
    float = { border = 'rounded' }, -- add border to diagnostic popups
}

-- Backspace
opt.backspace = 'indent,eol,start'

-- Clipboard
opt.clipboard:append('unnamedplus')

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Consider - as part of keyword
opt.iskeyword:append('-')

-- Enable mouse in neovim
opt.mouse = "a"

-- Folding
opt.foldlevel = 20
opt.foldmethod = 'expr'
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Using Treesitter folds

-- Save undo history
opt.undofile = true
