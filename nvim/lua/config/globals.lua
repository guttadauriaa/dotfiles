-- Set <space> as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have configured your terminal with a Nerd Font
vim.g.have_nerd_font = true

if $TERM =~ '\\v^(screen|tmux).*'
  set <Home>=^[OH
  set <End>=^[OF
endif
