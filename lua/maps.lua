-- set leader key
vim.keymap.set('n', '<Space>', '<NOP>')
vim.g.mapleader = ' '

-- load current luafile
vim.keymap.set('n', '<leader>R', ':luafile %<CR>', {})

-- fast tab switch
vim.keymap.set('n', '<leader>1', '1gt')
vim.keymap.set('n', '<leader>2', '2gt')
vim.keymap.set('n', '<leader>3', '3gt')
vim.keymap.set('n', '<leader>4', '4gt')
vim.keymap.set('n', '<leader>5', '5gt')
vim.keymap.set('n', '<leader>6', '6gt')
vim.keymap.set('n', '<leader>7', '7gt')
vim.keymap.set('n', '<leader>8', '8gt')
vim.keymap.set('n', '<leader>9', '9gt')

--- current buffer
vim.keymap.set('n', '<C-p>', ':FZF<CR>')

--- new buffer
vim.keymap.set('n', '<leader>t', ':tabnew<CR>:FZF<CR>')

-- completion
--- navigate completion menu
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- File Explorer
vim.keymap.set('n', '<C-n>', ':CHADopen<CR>')
-- vim.keymap.set('n', '<C-r>', ':NvimTreeRefresh<CR>')

-- Folds
vim.keymap.set('n', '<leader>a', 'zA')
vim.keymap.set('n', '<leader>A', 'zR')
vim.keymap.set('n', '<leader>q', 'za')
vim.keymap.set('n', '<leader>Q', ':set foldlevel=0<CR>')

-- Undo Points
vim.keymap.set('i', '.', '.<c-g>u', {})
vim.keymap.set('i', ',', ',<c-g>u', {})
vim.keymap.set('i', ':', ':<c-g>u', {})
vim.keymap.set('i', '[', '[<c-g>u', {})
vim.keymap.set('i', ']', ']<c-g>u', {})
vim.keymap.set('i', '{', '{<c-g>u', {})
vim.keymap.set('i', '}', '}<c-g>u', {})
vim.keymap.set('i', "'", "'<c-g>u", {})
vim.keymap.set('i', '"', '"<c-g>u', {})
