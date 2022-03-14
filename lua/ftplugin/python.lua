local map = vim.api.nvim_set_keymap

-- set leader key
map('n', '<Space>s', 'oimport pdb; pdb.set_trace()<ESC>', {silent=true})
