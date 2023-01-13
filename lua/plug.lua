-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',  -- optional, for file icons
        },
    }

      -- [[ Theme ]]
    use 'mhinz/vim-startify'                -- start screen

    use {                                   -- status bar 
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons', opt = true
        }
    }
    use 'navarasu/onedark.nvim'

    -- Fuzzy Finder

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
            { "nvim-telescope/telescope-live-grep-args.nvim" },
        }
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = '2.3.0'
    }

    use 'Yggdroot/indentLine'

    use 'windwp/nvim-autopairs'

    -- LSP

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "simrat39/rust-tools.nvim",
        "nvim-lua/lsp-status.nvim",
        "onsails/lspkind.nvim"
    }

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    use 'nvim-treesitter/nvim-treesitter'
    use {
        "glepnir/lspsaga.nvim",
        branch = "main"
    }

    use 'puremourning/vimspector' -- graphical debugger

    use {
        'folke/trouble.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use 'numToStr/Comment.nvim' -- comment text

    use 'phaazon/hop.nvim' -- motions speed

    -- tabs manager
    
    use { 
        'romgrk/barbar.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    } 

    -- Git

    use 'tpope/vim-fugitive'

    use {
      'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- Which Key
    use 'folke/which-key.nvim'

    -- find and replace rust-tools
    use {
        'windwp/nvim-spectre',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use	{
		"phaazon/mind.nvim",
		branch = "v2.2",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("mind").setup()
		end,
	}

	use "stevearc/dressing.nvim"

    use {
        "terrortylor/nvim-comment", -- Toggle Comments
        config = function()
            require('nvim_comment').setup()
        end
    }
    -- End
end)

