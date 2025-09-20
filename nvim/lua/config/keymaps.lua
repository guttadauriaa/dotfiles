vim.g.mapleader = ' '

local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end


-- General keymaps
map('n', '<leader>wq', ':wq<CR>') -- save and quit
map('n', '<leader>qq', ':q!<CR>') -- quit without saving
map('n', '<leader>ww', ':w<CR>') -- save


-- buffers
map('n', '<S-l>', ':bnext<CR>')
map('n', '<S-h>', ':bprevious<CR>')
map('n', '<leader>q', ':BufferClose<CR>')
map('n', '<leader>Q', ':BufferClose!<CR>')

-- buffer position navigation and reordering
map('n', '<AS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<AS-l>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
map('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- Split Window navigation
map('n', '<leader>sv', '<C-w>v', { remap = true }) -- split vertically
map('n', '<leader>sh', '<C-w>s', { remap = true}) -- split horizontally
map('n', '<leader>se', '<C-w>=') -- make split windows equal width
map('n', '<leader>sx', ':close<CR>') -- close split window
map('n', '<leader>sj', '<C-w>-') -- make split windows height shorter
map('n', '<leader>sk', '<C-w>+') -- make split windows height taller
map('n', '<leader>sl', '<C-w>>5') -- make split windows width bigger
map('n', '<leader>sh', '<C-w><5') -- make split windows width smaller

-- Tab Management and Navigation
map('n', '<leader>to', ':tabnew<CR>') -- open a new tab
map('n', '<leader>tx', ':tabclose<CR>') -- close a tab
map('n', '<leader>tn', ':tabn<CR>') -- go to next tab
map('n', '<leader>tp', ':tabp<CR>') -- go to previous tab


map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-h>', '<C-w>h')

map('n', '<A-Up>', '<C-w>k<CR>', { remap = true, silent = true})
map('n', '<A-Down>', '<C-w>j<CR>', { remap = true, silent = true })
map('n', '<A-Left>', '<C-w>h<CR>', { remap = true, silent = true })
map('n', '<A-Right>', '<C-w>l<CR>', { remap = true, silent = true })

-- Reload Config
map('n', '<leader>r', ':so %<CR>')
