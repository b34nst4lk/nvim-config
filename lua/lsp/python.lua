local util = require('lspconfig/util')
local coq = require "coq" -- add this

local root_files = {
  'setup.py',
  'pyproject.toml',
  'setup.cfg',
  'requirements.txt',
  '.git',
}

require'lspconfig'.pyright.setup {
    coq.lsp_ensure_capabilities({
        cmd = {'pyright-langserver', '--stdio'},
        root_dir = function(filename)
        return util.root_pattern(unpack(root_files))(filename) or
                util.path.dirname(filename)
        end,
        settings = {
            python = {
                analysis = {
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true
                }
            }
        },
    })
}
