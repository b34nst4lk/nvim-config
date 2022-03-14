local statusline = require('lualine')

local function short_mode()
    return vim.api.nvim_get_mode()["mode"]:upper()
end

local options = {
    theme = 'nord',
    section_separators = '',
    component_separators = '',11
}

local sections = {
    lualine_a = {short_mode},
}

statusline.setup{
    options = options,
    sections = sections,
}
