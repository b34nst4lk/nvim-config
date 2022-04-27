-- Keymaps
vim.keymap.set('n', '<leader>s', 'oimport pdb; pdb.set_trace()<ESC>')

-- UI
vim.cmd("set colorcolumn=80")

-- on save
vim.cmd [[
    function! PyTasks()
        !darker %
        let view = winsaveview()
        silent edit
        call winrestview(view)
        redraw!
    endfunction

    augroup pyFormat
        autocmd!
        autocmd BufWritePost *.py silent call PyTasks()
    augroup END
]]
