local map = vim.api.nvim_set_keymap

-- set leader key
map('n', '<Space>', '<NOP>', {silent=true})
vim.g.mapleader = ' '

map('n', '<Space>s', 'oimport pdb; pdb.set_trace()<ESC>', {silent=true})
-- load current luafile
map('n', '<leader>R', ':luafile %<CR>', {})

-- fast tab switch
map('n', '<leader>1', '1gt', {silent=true})
map('n', '<leader>2', '2gt', {silent=true})
map('n', '<leader>3', '3gt', {silent=true})
map('n', '<leader>4', '4gt', {silent=true})
map('n', '<leader>5', '5gt', {silent=true})
map('n', '<leader>6', '6gt', {silent=true})
map('n', '<leader>7', '7gt', {silent=true})
map('n', '<leader>8', '8gt', {silent=true})
map('n', '<leader>9', '9gt', {silent=true})

-- fuzzy file finder
--- current buffer
map('n', '<C-p>', ':FZF<CR>', {silent=true})
--- new buffer
map('n', '<leader>t', ':tabnew<CR>:FZF<CR>', {silent=true})

-- completion
--- navigate completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- File Explorer
map('n', '<C-n>', ':CHADopen<CR>', {silent=true})
-- map('n', '<C-r>', ':NvimTreeRefresh<CR>', {silent=true})

-- Folds
map('n', '<leader>a', 'zA', {silent=true})
map('n', '<leader>A', 'zR', {silent=true})
map('n', '<leader>q', 'za', {silent=true})
map('n', '<leader>Q', ':set foldlevel=0<CR>', {silent=true})

-- Undo Points
map('i', '.', '.<c-g>u', {})
map('i', ',', ',<c-g>u', {})
map('i', ':', ':<c-g>u', {})
map('i', '[', '[<c-g>u', {})
map('i', ']', ']<c-g>u', {})
map('i', '{', '{<c-g>u', {})
map('i', '}', '}<c-g>u', {})
map('i', "'", "'<c-g>u", {})
map('i', '"', '"<c-g>u', {})

-- Search and Hop
-- map('n', '/', ':HopPattern<CR>', {})
