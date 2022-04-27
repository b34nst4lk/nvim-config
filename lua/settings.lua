local g = vim.g
local o = vim.o
local wo = vim.wo
local cmd = vim.cmd
--
-- colorscheme
cmd [[
    autocmd ColorScheme * highlight SignColumn guibg=#00000000
    autocmd ColorScheme * highlight Normal guibg=#00000000
    autocmd ColorScheme * highlight Folded guifg=#3b4252
    colorscheme nord
]]

-- global options
o.swapfile = true   -- use sawpfiles
o.dir = '/tmp'      -- directory of swapfiles
o.hlsearch = true   -- highlight search
o.incsearch = true  -- incrementally highlight search results
o.laststatus = 2
o.shiftround = true
o.completeopt = 'menuone,noselect'

wo.signcolumn = 'yes:1'
wo.number = true

g.markdown_fenced_languages = {"python"}

-- mouse
vim.cmd [[
    set mouse=a
]]

-- default indents
local indent = 4
o.tabstop = indent
o.softtabstop = indent
o.shiftwidth = indent
o.expandtab = true
o.cindent = false
o.smartindent = false
o.autoindent = true

-- treesitter
require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = {"python"},
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
        toggle_query_editor = 'o',
        toggle_hl_groups = 'i',
        toggle_injected_languages = 't',
        toggle_anonymous_nodes = 'a',
        toggle_language_display = 'I',
        focus_language = 'f',
        unfocus_language = 'F',
        update = 'R',
        goto_node = '<cr>',
        show_help = '?',
        },
    }
}

wo.foldmethod = 'expr'
wo.foldexpr='nvim_treesitter#foldexpr()'
wo.foldenable=false

-- fzf
require('lspfuzzy').setup {
    methods = 'all',         -- either 'all' or a list of LSP methods (see below)
    fzf_preview = {          -- arguments to the FZF '--preview-window' option
      'right:+{2}-/2'          -- preview on the right and centered on entry
    },
    fzf_action = {           -- FZF actions
        ['ctrl-t'] = 'tabedit',  -- go to location in a new tab
        ['ctrl-v'] = 'vsplit',   -- go to location in a vertical split
        ['ctrl-x'] = 'split',    -- go to location in a horizontal split
    },
    fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
    fzf_trim = true,         -- trim FZF entries
}

-- autopairs
require('nvim-autopairs').setup()

-- indent lines
g.indentLine_char_list = {"│", "┊"}
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_current_context = true

-- load lsps
-- vim.lsp.set_log_level("debug")
require('lsp.lua')
require('lsp.python')
require('lsp.java')
require('lsp.svelte')
require('lsp.typescript')

-- wiki
vim.g.vimwiki_url_maxsave=0
vim.g.vimwiki_conceallevel=0
vim.g.vimwiki_key_mappings = {
    table_mapping = 0
}
vim.g.vimwiki_list = {
    {
        path = '~/wiki/personal.wiki'
    }
}

vim.g.vimwiki_folding='expr'

-- markdown
vim.g.table_mode_corner='|'

-- chadtree
local chadtree_settings = {
    ["theme.text_colour_set"] = "nord",
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

-- hop
-- require'hop'.setup()

-- completion
g.coq_settings = {
    ["display.pum.source_context"] = {" [", "]"},
}
vim.cmd('COQnow -s')

require("todo-comments").setup {}
