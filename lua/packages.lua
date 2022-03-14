local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()

-- Package manager
require "paq" {
	{'savq/paq-nvim', opt=true};     -- Let Paq manage itself

	--- treesitter and lsp
	{'nvim-treesitter/nvim-treesitter'};
	{'nvim-treesitter/nvim-treesitter-refactor'};
	{'nvim-treesitter/playground'};
	{'neovim/nvim-lspconfig'};

	-- autocomplete
	{'windwp/nvim-autopairs'};
	{'ms-jpq/coq_nvim'};

	--- Fuzzy file finder
    {'junegunn/fzf'};
    {'junegunn/fzf.vim'};
	{'ojroques/nvim-lspfuzzy'};

	--- Colorscheme
	{'shaunsingh/nord.nvim'};

	--- Commenter
	{'tpope/vim-commentary'};

	-- File Explorer
	{'ms-jpq/chadtree'};

	-- Statusline
	{'hoob3rt/lualine.nvim'};
	{'kyazdani42/nvim-web-devicons'};

	-- Indent Guides
	{'lukas-reineke/indent-blankline.nvim'};

	-- Wiki
	{'vimwiki/vimwiki'};

	-- Markdown
	{'dhruvasagar/vim-table-mode'};

	-- Git
	{'f-person/git-blame.nvim'};

	-- Motions
	-- {'phaazon/hop.nvim'};

	-- Trimming
	{'cappyzawa/trim.nvim'};

    -- TODO
    {'folke/todo-comments.nvim'};
};

